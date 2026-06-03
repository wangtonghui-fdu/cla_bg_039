import argparse
import fnmatch
from sys import flags
from task import *


# Define all tasks here
# TODO: fix fail testsuites
# fail testsuites: tmu, x264, embench, cpu0, libm
def build_tasks(is_fpga):
    testsuite_map = {
        "dspse": ["scalar", "vector", "app-bugs"],
        "dsph5": ["scalar"],
        "qxdsph001": ["scalar", "app-bugs"],
        "qx320f": ["scalar", "app-bugs", "libc", "libr", "libm", "embench", "tmu"],
        "qx320f049v2": ["scalar", "app-bugs", "libc", "libr", "libm", "embench", "tmu"],
    }
    # define features
    f_default = Feature("default")
    f_machine_outliner = Feature(
        "machine_outliner", "-mllvm -enable-machine-outliner=always"
    )
    # Fix me
    f_dsp_soft_zero = Feature("soft_zero_register", "-mllvm -dsp-soft-zero")
    f_inst_intx = Feature("INTx_extension", "-Xclang -target-feature -Xclang +intx")
    feature_map = {
        "dspse": [f_default],
        "dsph5": [f_default],
        "qxdsph001": [f_default],
        "qx320f": [f_default, f_machine_outliner],
        "qx320f049v2": [f_default, f_machine_outliner, f_inst_intx],
    }

    config_path = "./gitlab_config.yml"
    report_path = "./reports"
    jobs = 16

    if is_fpga:
        jobs = 1
    tasks = []
    opts = "0123"
    for target_cpu in testsuite_map:
        for use_lld in [False, True]:
            for opt_level in opts:
                for feature in feature_map[target_cpu]:
                    testsuites = testsuite_map[target_cpu]
                    name = f"{target_cpu}-O{opt_level}-{feature.name}"
                    if use_lld:
                        name += "-lld"
                    if is_fpga:
                        name += "-fpga"

                    task = CiTask(
                        name=name,
                        config_path=config_path,
                        report_path=report_path,
                        jobs=jobs,
                        target_cpu=target_cpu,
                        opt_level=opt_level,
                        use_lld=use_lld,
                        is_fpga=is_fpga,
                        testsuites=testsuites,
                        feature=feature,
                    )
                    tasks.append(task)

    return tasks


def filter_tasks(tasks, pattern):
    return [task for task in tasks if fnmatch.fnmatch(task.name, pattern)]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="CI Task Runner")
    parser.add_argument(
        "--filter", type=str, default="*", help="glob pattern to filter tasks"
    )
    parser.add_argument(
        "--is-fpga", type=bool, default=False, help="if use fpga"
    )
    parser.add_argument(
        "--dry-run", action="store_true", help="Preview tasks without executing"
    )
    args = parser.parse_args()

    tasks = filter_tasks(build_tasks(args.is_fpga), args.filter)
    summarize_tasks(tasks)

    if args.dry_run:
        for ind, task in enumerate(tasks):
            print(f"task#{ind} : {task}")
        exit(0)

    ret = execute_tasks(tasks)
    exit(0 if ret else 1)
