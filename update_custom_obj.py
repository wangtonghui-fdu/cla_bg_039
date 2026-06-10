#!/usr/bin/env python3
"""Compile custom C/CLA sources dropped into custom_src/ and swap the resulting
.o files into the 039 template cache, so the next test runs link against them.

Sources recognised in custom_src/ (any subset):
    cla_task.cla            -> Release_wo/cla_task.o + Release_w/cla_task.o
    bgtask_notinterrupt.c   -> Release_wo/autotests/cla/bgtask_notinterrupt.o
    bgtask_interrupt.c      -> Release_w/autotests/cla/bgtask_interrupt.o
    subcommon.c             -> Release_wo+Release_w/autotests/cla/subcommon.o
Headers the sources need (e.g. subcommon.h) can live in custom_src/ too.

Compiler: the QX-IDE qxdsp clang (toolchain 3slot_320f). Flags follow the IDE's
own build rules, validated against the original objects:
    .c   -> -O0 -mno-relax -mllvm --fix-debug -std=c17 -mcpu=qx320f039
    .cla -> -O0 -mno-relax -mllvm --fix-debug -xc -std=c17 -mcpu=cla2
(-mno-relax is required: without it the new clang emits relaxation relocations
the test toolchain's older ld rejects. Debug info is omitted on purpose: the
.debug_loc relocations of this clang are also unlinkable.)

Usage:
    python update_custom_obj.py            # compile + swap (backs up originals)
    python update_custom_obj.py --restore  # put the original .o files back
"""
from __future__ import annotations

import glob
import json
import shutil
import subprocess
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
CONFIG_PATH = SCRIPT_DIR / "config_039.json"
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

# Known QX-IDE install roots to scan when config gives no toolchain path.
TOOLCHAIN_GLOBS = [
    "G:/QX/QX-IDE_v*/QX-IDE/plugins/QXTOOLS_*/qxtools/toolchain/3slot_320f",
    "C:/QX-IDE/plugins/QXTOOLS_*/qxtools/toolchain/3slot_320f",
    "D:/qx/QX-IDE/plugins/QXTOOLS_*/qxtools/toolchain/3slot_320f",
]


def load_custom_cfg() -> dict:
    try:
        cfg = json.loads(CONFIG_PATH.read_text(encoding="utf-8"))
    except Exception:
        cfg = {}
    return (cfg.get("local") or {}).get("custom_obj") or {}


def find_toolchain(cfg: dict) -> Path | None:
    configured = cfg.get("toolchain_dir")
    if configured:
        p = Path(configured)
        if (p / "bin" / "clang.exe").exists():
            return p
        log(f"WARNING: 配置的 toolchain_dir 无效(缺 bin/clang.exe): {p}")
    candidates: list[str] = []
    for pattern in TOOLCHAIN_GLOBS:
        candidates += glob.glob(pattern)
    # newest plugin build last in sort order -> pick the highest
    for cand in sorted(candidates, reverse=True):
        if (Path(cand) / "bin" / "clang.exe").exists():
            return Path(cand)
    return None


def include_dirs(toolchain: Path, cfg: dict) -> list[Path]:
    template = cfg.get("template_dir")
    if template:
        template = Path(template)
    else:
        # plugin layout: <plugin>/qxtools/toolchain/3slot_320f
        #            and <plugin>/qxtools/template/QXS320F280039/Empty
        template = toolchain.parent.parent / "template" / "QXS320F280039" / "Empty"
    incs = [
        CUSTOM_SRC,
        template / "libs" / "driverlib",
        template / "libs" / "driverlib" / "bit_field",
        template / "libs" / "device",
        SCRIPT_DIR / "_not_upload_scripts" / "software_lib_driver_2803x-main" / "autotests",
        toolchain / "include",
    ]
    return [p for p in incs if p.is_dir()]


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

    cfg = load_custom_cfg()
    toolchain = find_toolchain(cfg)
    if toolchain is None:
        log("ERROR: 找不到 QX-IDE 的 3slot_320f 工具链 (bin/clang.exe)。")
        log("请在 config_039.json 的 local.custom_obj.toolchain_dir 中指定,例如:")
        log(r'  "custom_obj": {"toolchain_dir": "G:/QX/QX-IDE_v1.8.2c_windows_x86_64/QX-IDE/plugins/QXTOOLS_1.0.0.202606090835/qxtools/toolchain/3slot_320f"}')
        return 1
    clang = toolchain / "bin" / "clang.exe"
    incs = include_dirs(toolchain, cfg)
    log(f"toolchain: {toolchain}")
    log("includes : " + "; ".join(str(p) for p in incs))

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
