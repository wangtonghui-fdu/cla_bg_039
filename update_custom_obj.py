#!/usr/bin/env python3
"""Compile custom C/CLA sources dropped into custom_src/ and swap the resulting
.o files into the 039 template cache, so the next test runs link against them.

EVERYTHING lives in custom_src/ — sources, toolchain, headers. No machine-
specific paths, no config keys: if a required piece is missing the script says
exactly what to download into custom_src/.

custom_src/ layout:
    qxtools/...                         QX-IDE plugin's qxtools folder
                                        (toolchain/3slot_320f + template; recommended)
      or 3slot_320f/...                 just the clang toolchain
    software_lib_driver-039_v1_dev/...  driver-lib source tree (libs/ + autotests/),
                                        needed only for bgtask_*.c / subcommon.c
    cla_task.cla / bgtask_interrupt.c / bgtask_notinterrupt.c / subcommon.c
    subcommon.h ...                     any loose headers the sources need

Sources recognised (any subset):
    cla_task.cla            -> Release_wo/cla_task.o + Release_w/cla_task.o
    bgtask_notinterrupt.c   -> Release_wo/autotests/cla/bgtask_notinterrupt.o
    bgtask_interrupt.c      -> Release_w/autotests/cla/bgtask_interrupt.o
    subcommon.c             -> Release_wo+Release_w/autotests/cla/subcommon.o

Compile recipe (validated against the original objects):
    .c   -> -O0 -mno-relax -mllvm --fix-debug -std=c17 -mcpu=qx320f039
    .cla -> -O0 -mno-relax -mllvm --fix-debug -xc -std=c17 -mcpu=cla2
(-mno-relax is required: without it this clang emits relaxation relocations the
test toolchain's older ld rejects. No -g: its .debug_loc is also unlinkable.)

Usage:
    python update_custom_obj.py            # compile + swap (backs up originals)
    python update_custom_obj.py --restore  # put the original .o files back
"""
from __future__ import annotations

import glob
import shutil
import subprocess
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
CUSTOM_SRC = SCRIPT_DIR / "custom_src"
CACHE = SCRIPT_DIR / "cache" / "039_bg_template"

for stream in (sys.stdout, sys.stderr):
    if hasattr(stream, "reconfigure"):
        stream.reconfigure(encoding="utf-8", errors="replace")


def log(msg: str) -> None:
    print(msg, flush=True)


# source file -> list of cache-relative .o targets
TARGETS: dict[str, list[str]] = {
    "cla_task.cla": ["Release_wo/cla_task.o", "Release_w/cla_task.o"],
    "bgtask_notinterrupt.c": ["Release_wo/autotests/cla/bgtask_notinterrupt.o"],
    "bgtask_interrupt.c": ["Release_w/autotests/cla/bgtask_interrupt.o"],
    "subcommon.c": [
        "Release_wo/autotests/cla/subcommon.o",
        "Release_w/autotests/cla/subcommon.o",
    ],
}


def find_toolchain() -> Path | None:
    """The qxdsp clang toolchain (3slot_320f) dropped into custom_src/."""
    patterns = [
        str(CUSTOM_SRC),
        str(CUSTOM_SRC / "*"),
        str(CUSTOM_SRC / "*" / "*"),
        str(CUSTOM_SRC / "*" / "toolchain" / "3slot_320f"),
        str(CUSTOM_SRC / "*" / "qxtools" / "toolchain" / "3slot_320f"),
    ]
    for pattern in patterns:
        for cand in sorted(glob.glob(pattern), reverse=True):
            if (Path(cand) / "bin" / "clang.exe").exists():
                return Path(cand)
    return None


def find_template(toolchain: Path) -> Path | None:
    """IDE template QXS320F280039/Empty (cpu.h with __clatask etc.), in custom_src/."""
    patterns = [
        str(CUSTOM_SRC / "QXS320F280039" / "Empty"),
        str(CUSTOM_SRC / "*" / "QXS320F280039" / "Empty"),
        str(CUSTOM_SRC / "*" / "template" / "QXS320F280039" / "Empty"),
        str(CUSTOM_SRC / "*" / "qxtools" / "template" / "QXS320F280039" / "Empty"),
    ]
    for pattern in patterns:
        for cand in sorted(glob.glob(pattern), reverse=True):
            if (Path(cand) / "libs" / "driverlib").is_dir():
                return Path(cand)
    # qxtools layout relative to the toolchain (still inside custom_src)
    cand = toolchain.parent.parent / "template" / "QXS320F280039" / "Empty"
    if cand.is_dir() and (cand / "libs" / "driverlib").is_dir():
        return cand
    return None


def find_driverlib_tree() -> Path | None:
    """Driver-lib source tree (common.h/subcommon.h), in custom_src/."""
    for cand_s in sorted(glob.glob(str(CUSTOM_SRC / "*")), reverse=True):
        cand = Path(cand_s)
        if cand.is_dir() and (cand / "libs").is_dir() and (cand / "autotests").is_dir():
            return cand
    return None


def include_dirs(toolchain: Path) -> tuple[list[Path], list[str]]:
    """Return (existing include dirs, warnings about missing pieces)."""
    incs: list[Path] = [CUSTOM_SRC, toolchain / "include"]
    warns: list[str] = []

    template = find_template(toolchain)
    if template:
        incs += [
            template / "libs" / "driverlib",
            template / "libs" / "driverlib" / "bit_field",
            template / "libs" / "device",
        ]
    else:
        warns.append(
            "custom_src 里没有 QX-IDE 模板 (QXS320F280039/Empty)。cla_task.cla 需要其 cpu.h 的 "
            "__clatask 宏 — 建议把 QX-IDE 插件里整个 qxtools 文件夹拷进 custom_src"
            "(若你的驱动库树 cpu.h 已含这些宏,可忽略本警告)。"
        )

    dl = find_driverlib_tree()
    if dl:
        for sub in ("libs/driverlib", "libs/driverlib/bit_field", "libs/device", "autotests"):
            d = dl / sub
            if d.is_dir():
                incs.append(d)
    else:
        warns.append(
            "custom_src 里没有驱动库源码树 (含 libs/ 和 autotests/,提供 common.h/subcommon.h)。"
            "bgtask_*.c 与 subcommon.c 需要它;cla_task.cla 不需要。"
            "请把 software_lib_driver(-039_v1_dev) 整个目录拷进 custom_src"
            "(或把所需头文件直接散放进 custom_src)。"
        )

    seen: set[str] = set()
    out: list[Path] = []
    for p in incs:
        if p.is_dir() and str(p) not in seen:
            seen.add(str(p))
            out.append(p)
    return out, warns


def compile_one(clang: Path, src: Path, out: Path, incs: list[Path]) -> bool:
    common = [
        "-O0", "-mno-relax", "-mllvm", "--fix-debug", "-std=c17",
        "-target", "dsp", "-ffunction-sections", "-fdata-sections", "-c",
    ]
    if src.suffix == ".cla":
        flags = ["-xc", "-mcpu=cla2", *common]
    else:
        flags = ["-mcpu=qx320f039", "-D__dsp__", "-D__ELF__", "-D__CORE0__", *common]
    cmd = [str(clang), *flags]
    for inc in incs:
        cmd += ["-I", str(inc)]
    cmd += [str(src), "-o", str(out)]
    log(f"[compile] {src.name}")
    proc = subprocess.run(cmd, capture_output=True, text=True, encoding="utf-8", errors="replace")
    if proc.stdout:
        log(proc.stdout.rstrip())
    if proc.stderr:
        log(proc.stderr.rstrip())
    if proc.returncode != 0 or not out.exists():
        log(f"ERROR: 编译失败: {src.name} (exit {proc.returncode})")
        return False
    return True


def install(obj: Path, rel_targets: list[str]) -> bool:
    ok = True
    for rel in rel_targets:
        dst = CACHE / rel
        if not dst.parent.is_dir():
            log(f"ERROR: 缓存目标目录不存在: {dst.parent}")
            ok = False
            continue
        bak = dst.with_suffix(dst.suffix + ".orig.bak")
        if dst.exists() and not bak.exists():
            shutil.copy2(dst, bak)
            log(f"[backup ] {rel} -> {bak.name}")
        shutil.copy2(obj, dst)
        log(f"[install] {rel}  ({obj.stat().st_size} bytes)")
    return ok


def restore_originals() -> int:
    restored = 0
    missing = 0
    for rel_targets in TARGETS.values():
        for rel in rel_targets:
            dst = CACHE / rel
            bak = dst.with_suffix(dst.suffix + ".orig.bak")
            if bak.exists():
                shutil.copy2(bak, dst)
                log(f"[restore] {rel}")
                restored += 1
            else:
                missing += 1
    log(f"恢复完成: {restored} 个 .o 已还原为原版" + (f"({missing} 个无备份,未动)" if missing else ""))
    return 0


def main(argv: list[str]) -> int:
    if "--restore" in argv:
        return restore_originals()

    CUSTOM_SRC.mkdir(exist_ok=True)
    sources = [CUSTOM_SRC / name for name in TARGETS if (CUSTOM_SRC / name).exists()]
    if not sources:
        log(f"custom_src 目录中没有可识别的源文件: {CUSTOM_SRC}")
        log("支持的文件名: " + ", ".join(TARGETS))
        return 1

    toolchain = find_toolchain()
    if toolchain is None:
        log("ERROR: custom_src 里找不到 qxdsp 工具链 (bin/clang.exe)。")
        log("请把 QX-IDE 插件目录里的 qxtools 文件夹(推荐,含模板)或 toolchain/3slot_320f 拷到:")
        log(f"  {CUSTOM_SRC}")
        log("例如: custom_src/qxtools/toolchain/3slot_320f/bin/clang.exe")
        return 1
    clang = toolchain / "bin" / "clang.exe"
    incs, warns = include_dirs(toolchain)
    log(f"toolchain: {toolchain}")
    log("includes : " + "; ".join(str(p) for p in incs))
    for w in warns:
        log("WARNING: " + w)

    build_dir = CUSTOM_SRC / "build"
    build_dir.mkdir(exist_ok=True)
    failures = 0
    for src in sources:
        out = build_dir / (src.stem + ".o")
        if not compile_one(clang, src, out, incs):
            failures += 1
            continue
        if not install(out, TARGETS[src.name]):
            failures += 1
    if failures:
        log(f"完成,但有 {failures} 个文件失败。缓存中失败项保持原状。")
        return 1
    log("全部更新成功。下次仿真将链接新 .o(原版已备份为 *.orig.bak,可用 --restore 还原)。")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
