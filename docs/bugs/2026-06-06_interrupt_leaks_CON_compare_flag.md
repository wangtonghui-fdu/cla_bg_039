# BUG: Interrupt leaks the foreground task's CON (CR[4]) scalar-compare flag into the background task

- **Target:** 039 (qx320f / F280039)
- **Date found:** 2026-06-06
- **Severity:** Medium–High — real, deterministic W-vs-WO divergence of architectural state (the scalar-compare result flag). A background conditional branch taken after a preempt can mis-execute.
- **Run dir:** `output/20260606_000642_random` (instr=1000, case=random, addr-regs disabled)
- **Type:** interrupt context **not preserved** — a control-register flag (NOT a dropped GR writeback). Distinct from, and independent of, Bug A.
- **Supersedes** the earlier loose claim "movc2g bit-4 reflects interrupt state". That was wrong; see below.

## Summary

This run had **no row drop** (`wo_rows=684, w_rows=684`) — i.e. **no Bug A** — yet still
failed with exactly **one** reg/value mismatch:

```
PC 0x0ccc  movc2g gr15 :  WO = 0x00004005   |   W = 0x00004015     (Δ = bit 4 = 0x10)
```

`movc2g` copies the CLA **Control Register (CR)** into a GR. The only differing bit is
**CR[4] = CON**, the scalar-compare result flag. So the interrupt did not corrupt a
computation result — it left the **CR flag state** different.

## CR bit map (from the instruction manual §2.2)

CR is set/saved via `MOV.G2C` / `MOV.C2G`.

| bit | name | meaning |
|----|------|---------|
| [14] | EALLOW | EALLOW write-protect (the `0x4000` software-written base seen in every read) |
| [13:8] | OVC | overflow counter |
| [7] | OF | overflow flag |
| [5] | OVM | overflow mode |
| **[4]** | **CON** | **scalar compare result: 1 if the compare was true, else 0. If the current instruction is NOT a compare, CON is *retained unchanged* (sticky). CR[4] ↔ slot0.** |
| [2] | LVF | FPU/TMU overflow |
| [1] | LUF | FPU/TMU underflow |
| [0] | CF | scalar carry/borrow of MSB; CR[0] ↔ slot0 |

Decode of the two reads:

| | EALLOW[14] | CON[4] | LVF[2] | CF[0] |
|---|---|---|---|---|
| WO `0x4005` | 1 | **0** | 1 | 1 |
| W `0x4015`  | 1 | **1** | 1 | 1 |

Only **CON** differs. (Confirmed CON is *data*-dependent, not an interrupt indicator:
in the **no-interrupt** WO run other `movc2g` reads also show CON=1, e.g. `0x4010`.)

## Root cause: CON is sticky and is NOT restored across the background preempt

`movc2g` at `0x0ccc` is the **first `movc2g` after a preempt** (`prev_pc=0x0c80`), and the
background code between resume (`0x0c80`) and `0x0ccc` contains **no scalar compare**
(`load16/movigl/movigh/add/fseisqrt/nop…`). So CON is whatever value was last left in CR.

- **WO:** CON keeps task8's own last-compare result = **0** → reads `0x4005`.
- **W:** the preempting foreground **Cla1Task1** executes a scalar compare
  **`neqi gr30 0`** (Cla1Task1+0x18, consumed by `jc` at +0x1c) which sets **CON=1**.
  On return, CON is **not restored** to task8's value, and task8 runs no compare before
  `0x0ccc`, so `movc2g` reads the **foreground's** CON = **1** → `0x4015`.

### Why software save/restore does not save it
Cla1Task1 **does** bracket itself with CR save/restore:

```
Cla1Task1+0x14:  movc2g gr0      ; save CR into gr0 at entry
Cla1Task1+0x18:  neqi  gr30 0    ; <-- scalar compare, sets CON
Cla1Task1+0x1c:  jc    +0x10     ; uses CON
   ...
Cla1Task1+0x7c:  movg2c gr0      ; restore CR from gr0 at exit
Cla1Task1+0x80:  mstop
```

The restore (`movg2c gr0`) executes, gr0 still holds the saved CR — yet **CON still
leaks**. This proves **`movg2c` cannot write CR[4] CON**: per the manual CON is updated
*only by a scalar compare instruction* ("if not a compare instruction the bit is retained
unchanged"), so a register-write of CR leaves CON untouched. The prescribed CR save/restore
mechanism is therefore **structurally incapable of preserving CON**.

Net: even with correct software bracketing, CON cannot be preserved across a preempt. The
only correct fix is in hardware.

## Per-preempt corroboration (why only this one `movc2g` diverges)

```
preempt 0x0870 -> movc2g 0x08a4 : WO=0x4010 W=0x4010  MATCH  (CON=1 both)
preempt 0x0c80 -> movc2g 0x0ccc : WO=0x4005 W=0x4015  DIFF***(CON leak exposed)
preempt 0x1044 -> movc2g 0x1174 : WO=0x4000 W=0x4000  MATCH
preempt 0x1418 -> movc2g 0x14dc : WO=0x4010 W=0x4010  MATCH
```

The leak is only *visible* when, after resume, the background runs **no compare** before the
`movc2g`. At the matching sites the background's own compare re-establishes CON and overwrites
the leaked value. `0x0ccc` is the one window with no intervening background compare.

## Relationship to Bug A

Same family — **interrupt preempt/resume does not fully preserve background-task context** —
but a *different, independent* gap:

| | dropped object | trace symptom |
|---|---|---|
| **Bug A** (2026-06-05) | a **GR writeback** at the resume point (often the late `wenx_s2`/extended-port commit) | row count drops (W < WO) |
| **Bug B** (this) | the **CR flag CON** (CR not in the saved/restored preempt context; CON also unwritable by `movg2c`) | rows equal; one CR-read value differs by bit 4 |

This run proves they are independent: 684/684 rows (no Bug A) but CON still leaked (Bug B).

## Fix direction (RTL)

Bring CR into the background-preempt save/restore alongside the GR context, **and/or** make
CR[4] CON writable via `movg2c` so the manual-prescribed CR save/restore actually round-trips.
Same units as Bug A: `cla_except` / `cla_freeze` preempt/resume edges (+ the CR/CON datapath).

## How to reproduce / inspect

```
python run_039_bg.py --skip-generate --source output/20260606_000642_random/random.s \
    --sim-timeout 400 --no-reference-sim --keep-scratch
```
Then look at the single mismatch (`compare.log` detailed line) at PC `0x0ccc`, and the
foreground `Cla1Task1` disassembly (`neqi gr30 0` at +0x18, `movc2g gr0`/`movg2c gr0`
bracket at +0x14/+0x7c).
