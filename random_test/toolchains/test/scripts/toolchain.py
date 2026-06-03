import sys
from pathlib import Path
import subprocess as sp
import logging


def is_linux_env():
    return sys.platform.startswith("linux")


class CaseDetail:
    def __init__(self, name, status, perf):
        self.name = name
        self.status = status
        self.perf = perf

    def __json__(self):
        return {
            'name': self.name,
            'status': self.status,
            'perf': self.perf
        }


class Perf:
    def __init__(self, cycle_num=-1, code_size=-1, assembly='',
                 bundle_one=-1, bundle_two=-1, bundle_three=-1, bundle_nop=-1):
        self.cycle_num = cycle_num
        self.code_size = code_size
        self.assembly = assembly
        self.bundle_one = bundle_one
        self.bundle_two = bundle_two
        self.bundle_three = bundle_three
        self.bundle_nop = bundle_nop

    def __json__(self):
        return {
            'cycle_num': self.cycle_num,
            'code_size': self.code_size,
            'assembly': self.assembly,
            'bundle_one': self.bundle_one,
            'bundle_two': self.bundle_two,
            'bundle_three': self.bundle_three,
            'bundle_nop': self.bundle_nop
        }


class ExecutableTool:
    def __init__(self):
        self.path = None
        self.args = None

    def get_path(self):
        assert self.path
        return str(self.path)

    def get_args(self):
        return self.args

    def exec(self, *args, output=''):
        commands = [self.get_path()]
        commands.extend([str(arg) for arg in self.get_args()])
        commands.extend([str(arg) for arg in args])
        command = " ".join(commands)
        logging.info(f"run command: {commands}")
        logging.info(f"===> {command}")
        # executing
        if output == '':
            process = sp.run(commands, stdout=sp.PIPE, stderr=sp.PIPE, text=True)
            err_code = process.returncode
        else:
            with open(output, 'w', encoding='utf-8') as f:
                process = sp.run(commands, stdout=f, stderr=sp.PIPE, text=True)
                err_code = process.returncode

        logging.info(f'err_code={err_code}')
        if err_code != 0:
            logging.error(
                f"stdout:\n{process.stdout}\nstderr:\n{process.stderr}")

        return err_code, process.stderr


class ClangTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.target_type = None
        self.target_cpu = None
        self.opt_level = None
        self.output = None
        self.path = None
        self.on_chip = False
        self.flags = []
        self.includes = []
        self.sources = []

    def get_args(self):
        assert self.target_cpu
        assert self.target_type
        assert self.path
        assert self.output
        assert len(self.sources) > 0

        args = [f"-target", f"dsp", f"-mcpu={self.target_cpu}", "-DDSP_VALIDATION"]

        if self.on_chip:
            args.append("-DFPGA_DEBUG")

        if self.opt_level:
            args.append(self.opt_level)

        # Add include directories
        if len(self.includes) > 0:
            args.extend(["-I" + str(path) for path in self.includes])

        # Add specific flags
        args.extend(self.flags)

        # Add target-related flags
        if self.target_type == "obj":
            args.append("-c")
        elif self.target_type == "llvm":
            args.append("-S")
            args.append("-emit-llvm")
        else:
            raise Exception("unknown target type")

        # Add sources and output
        args.extend([str(path) for path in self.sources])
        args.extend(["-o", str(self.output)])

        return args


class LlcTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.target_cpu = None
        self.target_type = None
        self.path = None
        self.source = None
        self.output = None

    def get_args(self):
        assert self.target_cpu
        assert self.target_type
        assert self.output
        assert self.source
        assert self.path
        args = ["-march=dsp", f"-mcpu={self.target_cpu}", f"-filetype={self.target_type}", self.source]
        args.extend(["-o", self.output])
        args.extend(self.flags)
        return args


class DumpTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.path = None
        self.source = None
        self.output = None

    def get_args(self):
        assert self.path
        assert self.output
        assert self.source
        args = []
        args.extend(["-d", self.source])
        return args


class LinkerTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.linker_script = None
        self.sources = []
        self.lib_dirs = []
        self.output = None
        self.path = None

    def get_args(self):
        # assert self.linker_script
        assert self.output
        assert self.path
        assert len(self.sources) > 0

        args = ["-T", str(self.linker_script)]

        # Add Linker script

        # Add library directories
        args.extend(["-L" + str(path) for path in self.lib_dirs])

        # Add sources and output
        args.extend([str(path) for path in self.sources])
        args.extend(["-o", str(self.output)])

        args.extend(self.flags)

        return args


class DatTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.source = None
        self.output = None
        self.path = "python3" if sys.platform.startswith(
            "linux") else "python"

    def get_args(self):
        assert self.source
        assert self.output
        args = [Path("./trobjdat_8slot.py").resolve(), self.source, Path("../../tools").resolve()]
        return args


class SimulatorTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.path = None
        self.source = None
        self.output = None
        self.output_flag = None

    def get_args(self):
        assert self.path
        assert self.source
        assert self.output
        args = [self.source]
        args.extend(self.flags)
        args.append(self.output_flag)
        args.append(self.output)
        return args


class ProxyTool(ExecutableTool):
    def __init__(self):
        super().__init__()
        self.flags = []
        self.path = None

    def get_args(self):
        assert self.path
        args = []
        args.extend(self.flags)
        return args


def get_dat_tool() -> DatTool:
    return DatTool()


class Toolchain:
    def __init__(self, target_cpu, test_config):
        self.target_cpu = target_cpu
        self.test_config = test_config
        self.toolchain_home = Path(self.test_config.get_value(
            ["cpus", self.target_cpu, "toolchain_home"]))

    def _get_tool_path(self, tool):
        custom = self.test_config.get_value_nonable(
            ["cpus", self.target_cpu, "tool", tool, "path"])
        path: Path = Path(
            custom) if custom else self.toolchain_home / "bin" / tool
        if is_linux_env():
            path = path.with_suffix(
                ".bin")
        else:
            path = path.with_suffix(".exe")
        return path.resolve()

    def get_clang(self) -> ClangTool:
        clang_tool = ClangTool()
        clang_tool.path = Path(self._get_tool_path("clang"))
        clang_tool.target_cpu = self.target_cpu
        clang_tool.includes.extend(self.test_config.get_value(
            ["cpus", self.target_cpu, "tool", "clang", "include"]))
        clang_tool.flags.extend(self.test_config.get_value(
            ["cpus", self.target_cpu, "tool", "clang", "flags"]))
        return clang_tool

    def get_llc(self) -> LlcTool:
        llc_tool = LlcTool()
        llc_tool.path = Path(self._get_tool_path("llc"))
        llc_tool.target_cpu = self.target_cpu
        llc_tool.flags.extend(self.test_config.get_value(
            ["cpus", self.target_cpu, "tool", "llc", "flags"]))
        return llc_tool

    def get_dump(self) -> DumpTool:
        dump_tool = DumpTool()
        dump_tool.path = Path(self._get_tool_path("objdump"))
        return dump_tool

    def get_linker(self, linker_name, linker_env) -> LinkerTool:
        linker_tool = LinkerTool()
        if linker_name == "ld":
            linker_tool.path = Path(self._get_tool_path("ld"))
        else:
            linker_tool.path = Path(self._get_tool_path("lld"))
        base_path = ["cpus", self.target_cpu, "tool", linker_name, linker_env]
        linker_tool.lib_dirs.extend(
            self.test_config.get_value(base_path+["lib"]))
        linker_tool.flags.extend(
            self.test_config.get_value(base_path+["flags"]))
        linker_tool.linker_script = self.test_config.get_value(
            base_path+["linker_script"])
        return linker_tool

    def get_simulator_tool(self) -> SimulatorTool:
        sim_tool = SimulatorTool()
        suffix = self.test_config.get_value(
            ["cpus", self.target_cpu, "tool", "simulator", "suffix"])
        sim_tool.path = self._get_tool_path(f"simulator_{suffix}")
        sim_tool.output_flag = "--dbg"
        flags = self.test_config.get_value_nonable(
            ["cpus", self.target_cpu, "tool", "simulator", "flags"])
        if flags:
            sim_tool.flags.extend(flags)
        return sim_tool

    def get_proxy_tool(self) -> Path:
        proxy_tool = ProxyTool()
        proxy_tool.path = self._get_tool_path("or_debug_proxy")
        flags = self.test_config.get_value_nonable(
            ["cpus", self.target_cpu, "tool", "proxy", "flags"])
        if flags:
            proxy_tool.flags.extend(flags)
        return proxy_tool

    def get_gdb_path(self) -> Path:
        return self._get_tool_path("gdb")