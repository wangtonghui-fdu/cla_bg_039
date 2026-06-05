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

## Interrupt-trace evidence (augmented TB, run 20260605_134615)

A trace-augmented `c2000_tb.v` was installed on the 039 server (adds
`cla_bgtask_{irq,state,timeline,pc}_trace.dat`; on `task8_run` falling edge it logs the
current + previous-cycle extended write ports). Re-running the seed reproduced the bug
bit-identically (740/738, 368 reg/value) and the W-side traces show the precise sequence
around the dropped GR19 (`random_w.pc.trace` / `.timeline.trace`):

```
0xc70..0xc88  run=1                 BG task running
3784874 ns    BG_RUN 1->0           interrupt PREEMPTS at PC 0xc88 (NOT at 0xcb8)
0xc8c..0xc9c  run=0                 pipeline drains a few instrs, writebacks suppressed
3785494 ns    BG_RUN 0->1           RESUME, re-fetch from 0xc8c
0xc8c..0xcb8  run=1                 re-executes the bundle; at 0xcb8 GR1+GR20 commit,
                                     GR19 (fcvtsf) does NOT  -> dropped
```

So the interrupt does **not** strike on the writeback cycle (every IRQ_PREEMPT logged
`wen=00000`). The drop happens on the **re-executed** bundle after resume, and only the
FPU/extended-port slot is lost.

## RTL root cause (CLA core pipeline — audited from rtl/CLA)

Data path of a GR writeback (from `cla_scale.v`):
- Normal slots: result → `gr_wen_s0/s2` committed at the ME3 stage.
- **Extended/FPU slot (fcvtsf): the enable bit `*_wgWregX_s2` rides freeze-gated pipeline
  registers `ex1→ex2→me1→me2→me3` (`cla_m3_scale`, ports `.flush(me3_flush) .freeze(me3_freeze)`),
  becomes `me3_wgWregX_s2`, then `cla_v1_scale` (the VEX1 stage) forwards it to
  `vex1_wgWregX_s2` → regfile `wenx_s2` → `GR[waddrx_s2] <= dinx_s2` (`cla_rf_gr.v`).** The
  FPU writeback therefore commits ONE STAGE LATER than the normal slots.

The asymmetry that drops it (`cla_v1_scale.v`):
- Normal writeback enables are validity-gated: `vex1_wgWreg_s2 = me3_valid_s2 && me3_wreg_s2 && ...` (line 162).
- **Extended writeback enable is an UNGATED combinational passthrough: `assign vex1_wgWregX_s2 = me3_wgWregX_s2;` (line 167).** In this stage `flush` only clears `vex1_synch_*` (lines 113/125) — it does NOT gate the extended writeback. So `wenx_s2` is driven purely by the upstream `*_wgWregX_s2` valid bit, which is squashed/held differently from the rest of the pipeline.

Flush/freeze sources:
- `cla_except.v:409` `assign exp_flush = ~f1_freeze & (exp_start | bgtask_preempted);`
- per-stage `me3_flush/vex1_flush/me3_freeze/vex1_freeze/fpu_freeze_s2` generated in `cla_freeze.v`.
- `cla_task.v` drives `bgtask_preempted` and `task8_run`.

**Prime suspect:** `cla_m3_scale` (generates `me3_wgWregX_s2`) and `cla_freeze.v`. Across the
BG-task preempt→freeze→resume sequence, the one-cycle extended-writeback valid pulse for the
long-latency `fcvtsf` is lost (skipped during a freeze edge, or cleared by `me3_flush` while
its normal-slot siblings already committed / will re-commit on resume). Because `fcvtsf` is
the only slot whose commit rides the extended `wenx_s2` path, it is the only writeback
dropped. Fix direction: gate/hold the extended `*_wgWregX_s2` valid coherently with the
normal-slot validity across freeze/flush (don't let a freeze swallow the pulse, and don't
flush an extended writeback whose architectural instruction is retiring/replaying), or commit
the bundle atomically.

**To pin the exact failing cycle**, augment the TB once more to log per-cycle
`me2/me3 wgWregX_s2`, `vex1_wgWregX_s2`, `me3_freeze`, `vex1_freeze`, `fpu_freeze_s2`,
`me3_flush`, `exp_flush` around PC 0xcb8 — that distinguishes "pulse skipped on freeze" vs
"flag cleared by flush" vs "FPU result lost".

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
