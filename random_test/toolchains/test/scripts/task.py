import encodings
import subprocess
import logging
import sys
import os

# Configure logging
logging.basicConfig(level=logging.INFO,
                    format='[%(asctime)s - %(levelname)s]\n%(message)s',
                    handlers=[
                        logging.FileHandler("task.log", mode="w"),
                        logging.StreamHandler()
                    ])


class Feature:
    name = ""
    ccflags = ""

    def __init__(self, name, ccflags=""):
        self.name = name
        self.ccflags = ccflags


class CliTask:
    def __init__(self, name):
        self.name = name
        self.env = os.environ.copy()

    def get_program_path(self):
        return self.program_path
    
    def get_args(self):
        return self.args
    
    def exec(self):
        args = [self.get_program_path()]
        args.extend(self.get_args())
        process = subprocess.Popen(
            args,
            text=True,
            encoding="utf-8",
            errors="ignore",
            env = self.env
        )
        logging.info(" ".join(args))
        # 获取命令的返回码
        returncode = process.wait()
        return returncode


class CiTask(CliTask):
    def __init__(self, name, config_path, report_path, jobs, target_cpu, opt_level, use_lld, is_fpga, testsuites, feature: Feature):
        super().__init__(name)
        self.program_path = sys.executable
        self.args = [
            "./cputest.py",
            "-v",
            "-tcpu",
            target_cpu,
            "--config",
            config_path,
            "--report",
            report_path,
            f"-O{opt_level}",
            "--jobs",
            str(jobs),
        ]
        if use_lld:
            self.args.append("--lld")
        if is_fpga:
            self.args.append("--fpga")
        self.args.append("--testsuite")
        self.args.extend(testsuites)
        self.feature = feature
        self.env["CCFLAGS"] = feature.ccflags
        
    def __str__(self):
        return f"{self.name} (cmd = `CCFLAGS={self.feature.ccflags} {self.program_path} {' '.join(self.args)}`)"

def summarize_tasks(tasks):
    logging.info(
        f"There are {len(tasks)} tasks to run: {', '.join([task.name for task in tasks])}")


def execute_tasks(tasks):
    success_count = 0
    fail_count = 0
    failed_tasks = []

    for task in tasks:
        logging.info(f"Executing Task: {task.name}")
        returncode = task.exec()
        logging.info(f"returncode = {returncode}")
        if returncode == 0:
            success_count += 1
        else:
            fail_count += 1
            failed_tasks.append(task)

    summary_str = f"\nTask Summary:\nTotal Tasks: {len(tasks)}\nSuccess: {success_count}\nFail: {fail_count}\n"

    if failed_tasks:
        summary_str += "Fail Tasks: \n"
        for task in failed_tasks:
            summary_str += f"{task}\n"
    logging.info(summary_str)

    return True if fail_count == 0 else False
