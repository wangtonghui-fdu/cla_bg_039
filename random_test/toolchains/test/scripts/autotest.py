import argparse
import os
import shutil
import subprocess
import logging
import sys
import re
import json
import datetime
import time
from pathlib import Path

today_str = datetime.datetime.now().strftime('%Y%m%d')
logs_dir = Path(__file__).parent / "logs"
logs_dir.mkdir(exist_ok=True)
autotest_log_path = logs_dir / f"{today_str}_autotest.log"

# 配置日志
logging.basicConfig(
    filename=str(autotest_log_path),
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def run_yarp_gen(args, temp):
    """
    运行yarp_gen脚本
    """
    cmd = [
        "python", "yarp_gen.py",
        "--n", str(args.n),
        "--dir", temp,
    ]
    logger.info("Running yarp_gen command: " + " ".join(cmd))
    subprocess.run(cmd)

def run_cputest(args, testsuite_paths):
    cputest_log_path = logs_dir / f"{today_str}_cputest.log"

    cmd = [
        "python", "cputest.py",
        "--target-cpu", args.target,
        "--opt", args.opt,
        "--config", args.config,
        "--jobs", str(args.jobs),
        "--testsuite", testsuite_paths,
        "--output-format", "json",
        "--log-path", str(cputest_log_path)
    ]
    if args.verbose:
        cmd.append("--verbose")

    logger.info("Running cputest command: " + " ".join(cmd))
    
    # 运行命令并实时输出结果
    process = subprocess.Popen(
        cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        universal_newlines=True,
        bufsize=1
    )
    # 实时输出日志
    while True:
        output = process.stdout.readline()
        if output == '' and process.poll() is not None:
            break
        if output:
            logger.info(output.strip())
            print(output.strip())
    
    # 获取返回码
    return process.poll()

def save_and_git_failed_cases(args, failed_cases_json_path):
    logger.info(f"准备保存失败用例，路径: {failed_cases_json_path}")
    with open(failed_cases_json_path, "r", encoding="utf-8") as f:
        failed_cases = json.load(f)
    logger.info(f"读取到失败用例: {failed_cases}")
    base_dir = Path(args.dir)
    today_str = datetime.datetime.now().strftime('%Y%m%d')
    for suite, case_list in failed_cases.items():
        for name in case_list:
            case_dir = Path(name).stem
            dst_case_dir = f"{today_str}_{case_dir}"
            src_dir = Path(suite) / case_dir
            dst_dir = base_dir / dst_case_dir
            if not src_dir.exists():
                logger.warning(f"源文件夹不存在: {src_dir}")
                continue
            if dst_dir.exists():
                shutil.rmtree(dst_dir)
            shutil.copytree(src_dir, dst_dir)
            logger.info(f"[Copied] {src_dir} -> {dst_dir}")
            run_cmd_path = dst_dir / "reproduce.txt"
            cmd = [
                "python", "cputest.py",
                "--target-cpu", args.target,
                "--opt", args.opt,
                "--config", args.config,
                "--jobs", str(args.jobs),
                "--testsuite", str(base_dir / dst_case_dir),
            ]
            if args.verbose:
                cmd.append("--verbose")
            
            with open(run_cmd_path, "w", encoding="utf-8") as f:
                f.write(" ".join(cmd) + "\n")
            logger.info(f"已保存cputest运行命令到: {run_cmd_path}")


def main():
    parser = argparse.ArgumentParser(description="自动生成、测试并保存失败yarpgen的脚本")

    parser.add_argument("--number","-n", dest='n', type=int, required=True, help="Number of samples to generate")
    parser.add_argument("--target-dir","-dir", dest='dir', type=str, default=".", help="Base directory to store generated folders")

    parser.add_argument('--opt', '-O', dest='opt', required=True, 
                        help="测试的优化级别")
    parser.add_argument('--target-cpu', '-tcpu', dest='target', required=True, 
                        help="测试CPU")
    parser.add_argument('--config', '-c', dest='config', required=True, 
                        help="指定测试使用的配置yml文件")
    parser.add_argument('--verbose', '-v', dest='verbose', action="store_true", 
                        help="是否输出详细信息")
    parser.add_argument("--jobs", "-j", dest="jobs", type=int, default=1, 
                        help="测试线程数")

    # 测试类型选择
    parser.add_argument("--test-type", "-type", dest='test_type', required=True, 
                        choices=["yarpgen", "other"],
                        help="Type of tests to run: 'yarpgen' or 'other'")

    args = parser.parse_args()

    # 若目标目录不存在则创建
    Path(args.dir).mkdir(parents=True, exist_ok=True)

    if args.test_type == "other":
        print("暂未开发其他测试用例")
        return 3
    
    elif args.test_type == "yarpgen":
        # 生成唯一的 temp 路径
        timestamp = datetime.datetime.now().strftime('%Y%m%d_%H%M%S')
        temp = f"../testsuites/{timestamp}_yarpgentemp"
        run_yarp_gen(args, temp)
        logger.info("Processing yarpgen test cases in-place...")
        try:
            logger.info("Running yarpgen tests via cputest...")
            ret = run_cputest(args, temp)
            if ret != 0 and os.path.exists("failed_cases.json"):
                save_and_git_failed_cases(args, "failed_cases.json")
            return ret
        except Exception as e:
            logger.error(f"Failed to run yarpgen tests: {str(e)}")
            return 2

if __name__ == "__main__":
    exit_code = main()
    sys.exit(exit_code)