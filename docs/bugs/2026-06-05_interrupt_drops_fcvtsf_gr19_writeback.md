# BUG: Interrupt drops a slot-3 (fcvtsf) GR writeback in a parallel CLA BG bundle

- **Target:** 039 (qx320f / F280039)
- **Date found:** 2026-06-05
- **Severity:** High — real functional divergence between interrupt (W) and no-interrupt (WO) BG execution; corrupts a GR and cascades.
- **Original run dir:** `output/20260605_103106_random` (instr=1000, case=random; FAIL kept its `work/` scratch)
- **Type:** lost writeback after interrupt (README §10 "W 比 WO 少一行"), NOT a benign PC-only trace artifact.

## Summary

In the interrupt-enabled (W) run, the CLA BG task **dropped one GR writeback** from a
3-slot parallel instruction bundle. The no-interrupt (WO) run wrote all three; W wrote
only two. The dropped register kept its stale value and poisoned every later use until it
was fully overwritten, producing 368 reg/value mismatches and a row-count difference
(WO=740, W=738).

`summary.json`: `pass=false, wo_rows=740, w_rows=738, mismatches=374,
pc_only_mismatches=5, reg_value_mismatches=368`.

## Root cause

The first divergence is at trace line 366, PC `0x0cb8`, which is a 3-slot bundle
(`task8.s` line 673, disassembly at `0x0cb8`):

```
movigh GR1 0x0006 | load32 GR20 GR4 0x079 | fcvtsf GR19 GR3
```

This bundle writes **GR1, GR20 and GR19** in the same cycle. Writebacks at PC `0x0cb8`:

| reg | WO | W |
|-----|----|----|
| GR1  | 0x00065058 ✓ | 0x00065058 ✓ |
| GR20 | 0x00004000 ✓ | 0x00004000 ✓ |
| GR19 | **0x00000000** (fcvtsf result) ✓ | **MISSING** ✗ |

W lost the **slot-3 `fcvtsf GR19 GR3`** writeback. GR19 therefore kept its stale prior
value `0x6d09ac6e` instead of becoming `0x00000000`.

## Proof of corruption / cascade

The next instruction to touch GR19 is `movigl gr19 0x2f5f` at PC `0x0d10`, which writes
**only the low 16 bits**:

| | GR19 before | after `movigl gr19 0x2f5f` |
|---|---|---|
| WO | 0x00000000 | **0x0000**2f5f ✓ |
| W  | 0x6d09ac6e (stale) | **0x6d09**2f5f ✗ (stale high half leaks through) |

Low half matches (0x2f5f); the high half exposes the stale value — definitive proof the
fcvtsf writeback was lost. GR19 self-heals at `0x0d14` (`movigh gr19 0x7a46`, overwrites
the high half), but the poison window plus a second lost writeback (WO has 2 more rows
than W) drive the 368 reg/value mismatches.

## Trace evidence (WO vs W around PC 0x0cb8)

```
WO (no interrupt):                         W (interrupt):
365 GR1  0x00065058 0x0cb8                 365 GR1  0x00065058 0x0cb8
366 GR19 0x00000000 0x0cb8   <-- present   (no GR19 row at 0x0cb8)  <-- DROPPED
367 GR20 0x00004000 0x0cb8                 366 GR20 0x00004000 0x0cb8
368 GR1  0x00065106 0x0cc4                 367 GR1  0x00065106 0x0cc4
...
376 GR19 0x00002f5f 0x0d10                 375 GR19 0x6d092f5f 0x0d10   <-- stale high half
377 GR19 0x7a462f5f 0x0d14                 376 GR19 0x7a462f5f 0x0d14   <-- re-converged
```

## Reproduction confirmed (2026-06-05)

Re-ran the exact seed with `--skip-generate --source .../random.s --sim-timeout 400
--no-reference-sim --keep-scratch` (run dir `output/20260605_105534_random`). Result is
**bit-identical**: `status=fail, wo_rows=740, w_rows=738, mismatches=374,
pc_only=5, reg_value=368`, first mismatch line 366 (GR19 dropped at PC 0x0cb8). The bug is
**deterministic**.

**Interrupt traces NOT captured:** the run downloaded `cla_bgtask_sprs_trace.dat` (the GR
writeback trace) but all four optional traces — `cla_bgtask_pc/state/irq/timeline_trace.dat`
— were missing/empty, so the server TB currently emits only the GR-writeback trace. To pin
the exact interrupt cycle, the full snippet (irq/state/timeline/pc sections of
`docs/tb/*_bg_trace_snippet.v`) must be installed in the server `c2000_tb.v` and the chip
recompiled (`make comp_fullchip`); then re-run and `random_w.irq.trace` / `.state.trace`
will be downloaded.

## Likely RTL issue (high-confidence hypothesis)

The CLA GR register file (`cla.cla_scale.rfgr`) has FIVE write ports, visible in the TB
snippet: the normal slot ports `wen_s0 / wen_s1 / wen_s2`, and the **extended ports
`wenx_s1 / wenx_s2`**. ALU/mov/load results commit through the normal ports at the ME3
stage (`cla.cla_scale.cla_m3_scale.me3_current_pc`); long-latency FPU results (`fcvtsf`,
the float convert) commit later through an **extended port (`wenx_s2`)**.

Mechanism:
1. The 3-slot bundle issues; the three results have different latency — `movigh GR1` and
   `load32 GR20` are short, `fcvtsf GR19` is long and is carried one stage deeper to the
   `wenx_s2` port.
2. An interrupt is taken in the bundle's commit window. The short-latency slots have
   ALREADY committed at ME3 (`wen_s0`/`wen_s2`).
3. The fcvtsf result is still in flight, due to land in GR19 via `wenx_s2` a cycle later.
4. The interrupt flush/preempt **squashes the not-yet-committed extended-port writeback and
   does not replay it on return** → GR19 is never written.

This is exactly why only slot-3 (and only the FPU path) is lost: it is the only writeback
in the bundle whose commit point is LATER than the interrupt flush point.

**RTL files / signals to audit (CLA core pipeline):**
- `cla.cla_scale.rfgr` — the `wenx_s2` (and `wenx_s1`) extended write-enable generation.
- The CLA pipeline flush/preempt logic that asserts on interrupt entry (the `preempt`
  signal seen in `*_state_trace`). Check whether the flush term that kills the writeback
  enable also (incorrectly) clears `wenx_s2` for an instruction whose sibling slots have
  already committed.
- Expected fix shape: either commit the bundle atomically (hold the short slots until the
  extended-port result also commits), or make the FPU/extended writeback survive / be
  replayed across interrupt entry instead of being flushed.

(Server traces with the full TB snippet — `*_irq_trace` / `*_state_trace` /
`*_timeline_trace` — would pin the exact interrupt cycle vs the bundle's commit cycle, but
the single-dropped-FPU-writeback signature already isolates the `wenx_s2` path.)

## How to reproduce

039 builds with the local Windows toolchain (no WSL). From the repo root:

```
python run_039_bg.py --skip-generate --source output/20260605_103106_random/random.s \
    --sim-timeout 400 --no-reference-sim --keep-scratch
```

The exact seed is preserved as `random.s` / `task8.s` in the original run dir. A FAIL keeps
`work/` and the downloaded `random_w.*.trace` debug traces. The bundle is at task8.s line
673 (PC 0x0cb8). The interrupt/state/timeline/pc traces are emitted by the server TB
(`docs/tb/*_bg_trace_snippet.v`); to pin the exact interrupt cycle, ensure that snippet
(including the irq-trace section) is installed in the server `c2000_tb.v` so
`cla_bgtask_irq_trace.dat` / `cla_bgtask_state_trace.dat` are produced and downloaded as
`random_w.irq.trace` / `random_w.state.trace`.
