import logging
import subprocess as sp
from pathlib import Path
import psutil
import json
import os
from elftools.elf.elffile import ELFFile
from toolchain import Perf, get_dat_tool, is_linux_env


def kill_or_debug_proxy():
    # 遍历所有运行中的进程
    for p in psutil.process_iter(['pid', 'name']):
        try:
            # 检查进程名称是否为 'or_debug_proxy.exe'
            if p.info['name'] == 'or_debug_proxy.exe':
                pid = p.info['pid']
                print(
                    f"Found 'or_debug_proxy.exe' with PID {pid}. Terminating...")
                p.terminate()  # 终止该进程
                p.wait()  # 等待进程完全结束
                print(
                    f"'or_debug_proxy.exe' with PID {pid} has been terminated.")
        except (psutil.NoSuchProcess, psutil.AccessDenied) as e:
            print(f"Error handling process: {e}")


def process_gdb_out(file_path):
    perf = Perf()
    with open(file_path, "r") as f:
        f_all = f.read()
        f_all = f_all.replace(" ", '')
        f_all = f_all.replace("\n", '')
        f_all = f_all.replace("\r", '')
        st1 = f_all.find("$1=")
        st2 = f_all.find("$2=")
        st3 = f_all.find("$3=")
        st4 = f_all.find("$4=")
        st5 = f_all.find("$5=")
        perf.cycle_num = int(f_all[st1 + 3:st2])
        output_num = int(f_all[st3 + 3:st4])
        output_end_flag = list(map(int, f_all[st4 + 4:st5 - 1].split(',')))
        output = list(map(int, f_all[st5 + 4:-1].split(',')))
        output_list = []
        tot_val = 0
        base = 1
        for i in range(output_num):
            val = output[i]
            flag = output_end_flag[i]
            tot_val = tot_val + base * val
            base <<= 8
            if flag != 0:
                lim_max = base >> 1
                tot_val = tot_val if tot_val < lim_max else tot_val - base
                output_list.append(tot_val)
                tot_val = 0
                base = 1
    return output_list, perf


def process_simulator_out(file_path):
    perf = Perf()
    with open(file_path, "r") as f:
        json_data = json.load(f)
        perf.cycle_num = json_data.get("totally cycles") if json_data.get("totally cycles") else 0
        perf.bundle_one = json_data.get("packet size = 1(exclude only nop)") if json_data.get("packet size = 1(exclude only nop)") else 0
        perf.bundle_two = json_data.get("packet size = 2") if json_data.get("packet size = 2") else 0
        perf.bundle_three = json_data.get("packet size = 3") if json_data.get("packet size = 3") else 0
        bundle_one_all = json_data.get("packet size = 1") if json_data.get("packet size = 1") else 0
        perf.bundle_nop = bundle_one_all - perf.bundle_one

    return perf


def get_text_section_size(file_path):
    try:
        with open(file_path, 'rb') as f:
            elf = ELFFile(f)
            code_size = 0
            for section in elf.iter_sections():
                if section.name.startswith('.text'):
                    code_size += section['sh_size']
            return code_size
    except Exception as e:
        print(f"Error reading ELF file: {e}")
        return None


def get_assembly(file_path):
    try:
        encoding = 'gbk'
        if is_linux_env():
            encoding = 'utf-8'
        with open(file_path, 'r', encoding=encoding) as f:
            return f.read()
    except Exception as e:
        print(f"Error reading ELF file: {e}")
        return None


class TestException(Exception):
    pass


class TargetGenerator:

    def __init__(self, toolchain, flags, tmp_dir, opt_level, debug, cpu, lld) -> None:

        tmp_dir = Path(tmp_dir)
        tmp_dir.mkdir(parents=True, exist_ok=True)

        self.toolchain = toolchain
        self.tmp_dir = tmp_dir
        self.opt_level = f"-O{opt_level}"
        self.flags = flags
        self.debug = debug
        self.cpu = cpu
        self.lld = lld

    def _get_clang(self, src_path, dst_path, on_chip):
        clang_tool = self.toolchain.get_clang()
        clang_tool.sources.append(src_path)
        clang_tool.output = dst_path
        clang_tool.opt_level = self.opt_level
        clang_tool.on_chip = on_chip
        ccflags = os.getenv("CCFLAGS")
        if ccflags:
            clang_tool.flags.extend(ccflags.split(' '))
        return clang_tool

    def c_to_obj(self, src_path: Path, on_chip):
        src_path = Path(src_path)
        if src_path.is_file():
            dst_path = self.tmp_dir / src_path.with_suffix(".o").name
            clang_tool = self._get_clang(src_path, dst_path, on_chip)
            clang_tool.target_type = "obj"
            code, err = clang_tool.exec()
            if code != 0:
                raise TestException("clang", code, err)
            return dst_path
        elif src_path.is_dir():
            dst_paths = []
            folder_prefix = src_path.name
            for i, file in enumerate(src_path.glob("*.c"), start=1):
                # e.g., yarpgen1_file1.o
                dst_name = f"{folder_prefix}_file{i}.o"
                dst_path = self.tmp_dir / dst_name

                clang_tool = self._get_clang(file, dst_path, on_chip)
                clang_tool.target_type = "obj"
                code, err = clang_tool.exec()
                if code != 0:
                    raise TestException(f"Failed to compile {file}", code, err)
                dst_paths.append(dst_path)
            return dst_paths

    def c_to_ll(self, src_path: Path, on_chip):
        dst_path = self.tmp_dir / src_path.with_suffix(".ll").name
        clang_tool = self._get_clang(src_path, dst_path, on_chip)
        clang_tool.target_type = "llvm"
        code, err = clang_tool.exec()
        if code != 0:
            raise TestException("clang", code, err)
        return dst_path

    def ll_to_obj(self, src_path):
        dst_path = self.tmp_dir / src_path.with_suffix(".o").name
        llc_tool = self.toolchain.get_llc()
        llc_tool.target_type = "obj"
        llc_tool.source = src_path
        llc_tool.output = dst_path
        code, err = llc_tool.exec()
        if code != 0:
            raise TestException("llc", code, err)
        return dst_path

    def obj_to_s(self, src_path):
        dst_path = self.tmp_dir / src_path.with_suffix(".s").name
        dump_tool = self.toolchain.get_dump()
        dump_tool.source = src_path
        dump_tool.output = dst_path
        code, err = dump_tool.exec(output=dst_path)
        if code != 0:
            print(err)
            raise TestException("dump", code, err)
        return dst_path

    def obj_to_out(self, src_path, is_fpga):
        linker_name = "lld" if self.lld else "ld"
        linker_env = "chip" if is_fpga else "simulator"
        linker_tool = self.toolchain.get_linker(linker_name, linker_env)
        if type(src_path) == list:
            folder_prefix = src_path[0].stem.split("_")[0]
            dst_name = f"{folder_prefix}.out"
            dst_path = self.tmp_dir / dst_name
            linker_tool.sources.extend(src_path)
            linker_tool.output = dst_path
        else:
            dst_path = self.tmp_dir / src_path.with_suffix(".out").name
            linker_tool.sources.append(src_path)
            linker_tool.output = dst_path
        code, err = linker_tool.exec()
        if code != 0:
            raise TestException("ld", code, err)
        return dst_path

    def out_to_dat(self, src_path):
        dst_path = self.tmp_dir / src_path.with_suffix(".dat").name
        dat_tool = get_dat_tool()
        dat_tool.source = src_path
        dat_tool.output = dst_path
        code, err = dat_tool.exec()
        if code != 0:
            raise TestException("trobjdat", code, err)
        return dst_path

    def run_in_simulator(self, src_path):
        dst_path = src_path.with_suffix(".txt")
        sim_tool = self.toolchain.get_simulator_tool()
        sim_tool.source = src_path
        sim_tool.output = src_path.with_suffix("")
        code, err = sim_tool.exec("--perf", src_path.with_suffix(""))
        if code != 0:
            raise TestException("simulator", code, err)

        perf = process_simulator_out(src_path.with_suffix(".json"))
        return dst_path, perf

    def run_in_fpga(self, src_path: Path):
        # path configure
        kill_or_debug_proxy()
        proxy_tool = self.toolchain.get_proxy_tool()
        gdb_path = self.toolchain.get_gdb_path()
        script_path = Path(gdb_path).with_name("gdb_script.gdb")
        dst_path = self.tmp_dir / src_path.with_suffix(".txt").name
        gdb_out_path = self.tmp_dir / src_path.with_suffix(".gdbout").name

        params = proxy_tool.get_args()
        params.insert(0, proxy_tool.get_path())
        # start execute process
        proxy_process = sp.Popen(
            params, stdin=sp.DEVNULL, stdout=sp.DEVNULL)

        logging.info(f"run gdb: {gdb_path} -x {script_path}")

        gdb_comm = "testFile {outpath} {gdb_out_path} \n quit".format(
            outpath=src_path.as_posix(), gdb_out_path=str(gdb_out_path.as_posix()))

        logging.info(f"gdb command: {gdb_comm}")

        gdb_process = sp.run(
            [str(gdb_path), "-x", str(script_path)],
            text=True,
            input=gdb_comm,
            capture_output=True,
        )

        if gdb_process.returncode != 0:
            raise TestException(
                "gdb", gdb_process.returncode, gdb_process.stderr)

        proxy_process.terminate()
        output_list, perf = process_gdb_out(gdb_out_path)
        # print(proxy_path)
        # print(f"result={output_list}")
        with open(dst_path, "w") as f:
            f.writelines(
                [f"{int.from_bytes(out.to_bytes(4, 'little', signed=True), 'little'):#010x}\n" for out in output_list])
        # print(output_list)
        return dst_path, perf

    def generate(self, src_path: Path, compile_only, is_fpga: bool):
        perf = Perf()
        src_path = Path(src_path)
        src_fmt = ".c"
        if src_path.is_file():
            src_fmt = src_path.suffix

        if src_fmt == ".c":
            if self.debug:
                src_path = self.c_to_ll(src_path, is_fpga)
                src_path = self.ll_to_obj(src_path)
            else:
                src_path = self.c_to_obj(src_path, is_fpga)
        else:
            src_path = self.ll_to_obj(src_path)

        if compile_only:
            return src_path
        
        obj_paths = src_path if isinstance(src_path, list) else [src_path]
        src_path = self.obj_to_out(src_path, is_fpga)

        if not is_fpga:
            src_path = self.out_to_dat(src_path)
            src_path, perf = self.run_in_simulator(src_path)
        else:
            src_path, perf = self.run_in_fpga(src_path)

        perf.code_size = get_text_section_size(src_path.with_suffix(".out"))

        for path in obj_paths:
            ass_path = self.obj_to_s(path)
            perf.assembly += get_assembly(ass_path)
        
        return src_path, perf
