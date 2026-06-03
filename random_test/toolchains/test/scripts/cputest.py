import argparse
import datetime
import json
import logging
import os
import subprocess
import time
import shutil
from pathlib import Path
from test_config import TestConfig
from target_generator import TargetGenerator, TestException
import concurrent.futures

from toolchain import CaseDetail, Perf

def compare(src_path, ans_path):
    src_text = open(src_path, "r", encoding='utf-8').read().strip().split("\n")
    ans_text = open(ans_path, "r", encoding='utf-8').read().strip().split("\n")
    log_msg = "      ====src====  ====std====\n"
    lines = max(len(src_text), len(ans_text))
    for i in range(lines):
        src = src_text[i] if i < len(src_text) else ""
        ans = ans_text[i] if i < len(ans_text) else ""
        log_msg += f"{i:<6}{src:<13}{ans}\n"
    logging.info(log_msg)
    if len(src_text) != len(ans_text):
        raise TestException(
            "compare", 1,
            f"program output has {len(src_text)} lines, but standard output has {len(ans_text)} lines")
    else:
        err_lines = []
        for line, (src, ans) in enumerate(zip(src_text, ans_text)):
            if src != ans:
                err_lines.append(line)
        if err_lines:
            err_msg = ""
            err_fmt = "line {:<6}: src = {}, std = {}\n"
            for line in err_lines:
                err_msg += err_fmt.format(line + 1,
                                          src_text[line], ans_text[line])
            raise TestException("compare", 1, err_msg)

    return True
def compare(src_path, ans_path):
    src_text = open(src_path, "r", encoding='utf-8').read().strip().split("\n")
    ans_text = open(ans_path, "r", encoding='utf-8').read().strip().split("\n")
    log_msg = "      ====src====  ====std====\n"
    lines = max(len(src_text), len(ans_text))
    for i in range(lines):
        src = src_text[i] if i < len(src_text) else ""
        ans = ans_text[i] if i < len(ans_text) else ""
        log_msg += f"{i:<6}{src:<13}{ans}\n"
    logging.info(log_msg)
    if len(src_text) != len(ans_text):
        raise TestException(
            "compare", 1,
            f"program output has {len(src_text)} lines, but standard output has {len(ans_text)} lines")
    else:
        err_lines = []
        for line, (src, ans) in enumerate(zip(src_text, ans_text)):
            if src != ans:
                err_lines.append(line)
        if err_lines:
            err_msg = ""
            err_fmt = "line {:<6}: src = {}, std = {}\n"
            for line in err_lines:
                err_msg += err_fmt.format(line + 1,
                                          src_text[line], ans_text[line])
            raise TestException("compare", 1, err_msg)

    return True


class TestsuiteResult:
    def __init__(self, name, verbose):
        self.verbose = verbose
        self.build_fail = []
        self.runtime_error = []
        self.wrong_answer = []
        self.accepted = []
        self.ignored = []
        self.pass_num = 0
        self.fail_num = 0
        self.ignore_num = 0
        self.pass_case_details = []
        self.fail_case_details = []
        self.ignore_case_details = []
        self.name = name
        self.fmt_str = "{:<28}{:40}{:>10}{:6.2f}s{:>8d} cycles"
        self.err_msg_leading = ">>>   "
        self.time_leading = "=====>"

    def __json__(self):
        return {
            'pass_num': self.pass_num,
            'fail_num': self.fail_num,
            'ignore_num': self.ignore_num,
            'pass_case_details': self.pass_case_details,
            'fail_case_details': self.fail_case_details,
            'ignore_case_details': self.ignore_case_details,
        }

    def ignore(self, testcase, dt, perf, reason):
        print(self.fmt_str.format(
            "[\033[33m\033[1mIgnore\033[0m]", testcase, self.time_leading, dt, perf.cycle_num))
        logging.warning(f"test {testcase} ignore : {reason}")
        self.ignored.append(testcase)
        self.ignore_num += 1
        self.ignore_case_details.append(CaseDetail(testcase, 'ignore', perf))

    def succeed(self, testcase, dt, perf):
        print(self.fmt_str.format(
            "[\033[32m\033[1mPass\033[0m]", testcase, self.time_leading, dt, perf.cycle_num))

        logging.info(f"test {testcase} pass")
        self.accepted.append(testcase)
        self.pass_num += 1
        self.pass_case_details.append(CaseDetail(testcase, 'pass', perf))

    def handle_exception(self, e: Exception):
        if isinstance(e, TestException):
            reason = e.args[0]
            logging.error(e.args)
            if self.verbose:
                print(self.err_msg_leading)
                print(self.err_msg_leading +
                      f"fail in {reason}, err_code={e.args[1]}")
                print(self.err_msg_leading + "stderr:")
                errmsg = str(e.args[2])
                print(self.err_msg_leading +
                      errmsg.replace("\n", "\n" + self.err_msg_leading))
        else:
            reason = "unknown"
            logging.error(e)
            if self.verbose:
                print(self.err_msg_leading)
                print(self.err_msg_leading +
                      f"fail in internal error")
                print(self.err_msg_leading + str(e))

        return reason

    def fail(self, testcase, dt, perf, e):
        logging.error(f"test {testcase} fail")
        print(self.fmt_str.format(
            "[\033[31m\033[1mFail\033[0m]", testcase, self.time_leading, dt, perf.cycle_num))

        reason = self.handle_exception(e)

        if reason == "simulator":
            self.runtime_error.append(testcase)
        elif reason == "compare":
            self.wrong_answer.append(testcase)
        elif reason == "unknown":
            pass
        else:
            self.build_fail.append(testcase)
        self.fail_num += 1
        self.fail_case_details.append(CaseDetail(testcase, 'fail', perf))

    def summary(self):
        print("{:^94}".format(f"===== {self.name} - Test Result Summary ====="))
        print(
            f"totally {self.pass_num + self.fail_num + self.ignore_num} tests, {self.ignore_num} tests ignore, {self.pass_num} tests ok, {self.fail_num} tests fail.")
        print(f"{len(self.build_fail)} build fail:\t" +
              ", ".join(self.build_fail))
        print(f"{len(self.runtime_error)} runtime error:\t" +
              ", ".join(self.runtime_error))
        print(f"{len(self.wrong_answer)} wrong answer:\t" +
              ", ".join(self.wrong_answer))
    
    def add(self, tr):
        self.fail_num += tr.fail_num
        self.pass_num += tr.pass_num
        self.ignore_num += tr.ignore_num
        self.build_fail += tr.build_fail
        self.runtime_error += tr.runtime_error
        self.wrong_answer += tr.wrong_answer
        self.accepted += tr.accepted
        self.ignored += tr.ignored

class Tester:
    def __init__(self, target_cpu, opt_level, tmp_dir, config: TestConfig, verbose, debug, is_fpga, lld, jobs) -> None:
        self.verbose = verbose
        self.test_config = config
        self.test_home = Path(config.get_value_by_str("global.test_home"))
        self.testcase_exts = config.get_value_by_str(
            "global.testcase_ext")
        self.opt_level = int(opt_level)
        self.target_cpu = target_cpu
        self.debug = debug
        self.is_fpga = is_fpga
        self.jobs = jobs

        self.generator = TargetGenerator(
            config.get_toolchain(target_cpu), flags=None, tmp_dir=tmp_dir, opt_level=opt_level,
            debug=debug, cpu=target_cpu, lld=lld)

        logging.info(f"opt_level={opt_level}")
        logging.info(f"tmp_dir={tmp_dir}")
        logging.info(f"target_cpu={target_cpu}")
        self.test_results = []
        self.all_result = TestsuiteResult(
            f"{self.target_cpu} - O{self.opt_level}", self.verbose)
        self.ignore = []

        if self.verbose:
            print("test arguments:")
            print(f"opt_level     :{opt_level:>20}")
            print(f"tmp_dir       :{tmp_dir:>20}")
            print(f"target_cpu    :{target_cpu:>20}")
            print(f"debug mode    :{debug:>20}")
            print("")

    def ignore_cases(self, ignore):
        for testcase_uri in ignore:
            testsuite, testcase = testcase_uri.split("/")
            self.ignore.append(testcase)

    def test_testcases(self, testcases):
        for testcase_uri in testcases:
            testsuite, testcase = testcase_uri.split("/")
            compile_only = self.test_config.is_testsuite_compile_only(
                testsuite)
            testsuite_dir: Path = self.test_home / testsuite
            for src_path in testsuite_dir.glob(testcase + ".*"):
                if src_path.suffix in self.testcase_exts:
                    self.test_single(src_path, self.all_result, compile_only)


    def test_single(self, src_path: Path, test_result, compile_only=False):
        perf = Perf()
        testcase = ""
        start_time = time.perf_counter()

        try:
            ans_path = src_path.with_suffix(".txt")
            testcase = str(src_path.name)

            # validate testcase
            if not os.path.exists(ans_path) and not compile_only:
                test_result.ignore(testcase, time.perf_counter(
                ) - start_time, perf, "cannot find standard output")
                return

            src_path, perf = self.generator.generate(
                src_path, compile_only, self.is_fpga)

            if not compile_only:
                compare(src_path, ans_path)
        except Exception as e:
            test_result.fail(testcase, time.perf_counter() -
                             start_time, perf, e)
            return

        test_result.succeed(
            testcase, time.perf_counter() - start_time, perf)

    def test_testsuites(self, testsuites):

        if self.verbose:
            print("[testesuites]")
            print('\n'.join(testsuites))

        for testsuite in testsuites:
            compile_only = self.test_config.is_testsuite_compile_only(testsuite)
            blacklist = test_config.get_blacklist(testsuite, self.opt_level)
            test_result = TestsuiteResult(testsuite, self.verbose)
            test_dir = Path(self.test_home, testsuite)
            print("{:^94}".format("=" * 30 + f" testsuite {testsuite} " + "=" * 30))
            # Traverse all testcase in testsuite folder and its subfolders
            with concurrent.futures.ThreadPoolExecutor(max_workers=self.jobs) as executor:
                futures = []
                for ext in self.testcase_exts:
                    for testcase in test_dir.glob("**/*" + ext):
                        if testcase.name in blacklist:
                            test_result.ignore(
                                testcase.name, 0, Perf(), "this testcase is on the blacklist")
                            continue
                        # print(testcase, test_result, compile_only)
                        # self.test_single(testcase, test_result, compile_only)
                        futures.append(executor.submit(
                            self.test_single, testcase, test_result, compile_only))
                # this is neccessary because if a subthread crashed,
                # we can trigger the exception on program
                for future in concurrent.futures.as_completed(futures):
                    future.result()

            self.all_result.add(test_result)
            self.test_results.append(test_result)

    def summary(self):
        for tr in self.test_results:
            tr.summary()
        self.all_result.summary()

    def generate_report(self, root, testsuites):
        if not os.path.exists(root):
            os.makedirs(root)
        for i in range(len(testsuites)):
            platform = 'chip' if self.is_fpga else 'simulator'
            config_data = {
                'target_cpu': self.target_cpu,
                'opt_level': self.opt_level,
                'platform': platform,
                'testsuite': testsuites[i]
            }

            result_json = json.dumps(
                self.test_results[i], default=lambda obj: obj.__json__())
            result_data = json.loads(result_json)
            final_json = json.dumps(
                {**config_data, **result_data}, default=lambda obj: obj.__json__())
            file_name = self.target_cpu + '_' + \
                str(self.opt_level) + '_' + \
                testsuites[i] + '_' + platform + '.json'
            path = os.path.join(root, file_name)
            open(path, 'w').write(final_json)


def save_failed_cases_json(test_results, output_path="failed_cases.json"):
    """
    保存所有测试集的所有失败用例到json文件（包括wrong_answer、build_fail、runtime_error、unknown等）
    """
    failed_cases = {}
    for tr in test_results:
        suite = tr.name
        # 合并所有失败类型
        all_failed = set(tr.wrong_answer + tr.build_fail + tr.runtime_error)
        # 还可以加上所有 fail_case_details 里出现但不在上述三类的 case
        extra_failed = set()
        for detail in tr.fail_case_details:
            if detail.name not in all_failed:
                extra_failed.add(detail.name)
        all_failed |= extra_failed
        failed_cases[suite] = list(all_failed)
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(failed_cases, f, ensure_ascii=False, indent=2)
 


def get_args():
    parser = argparse.ArgumentParser(description="cputest: 测试CPU后端的自动化工具")

    parser.add_argument("--tmp-dir", dest="tmp_dir",
                        default="./tmp", help="临时生成文件的存放路径")
    parser.add_argument('--opt', '-O', dest='opt',
                        required=True, help="测试的优化级别")
    parser.add_argument('--target-cpu', '-tcpu',
                        dest='target', required=True, help="测试CPU")
    parser.add_argument('--config', '-c', dest='config',
                        required=True, help="指定测试使用的配置yml文件")
    parser.add_argument('--verbose', '-v', dest='verbose',
                        action="store_true", help="是否输出详细信息")
    parser.add_argument("--debug", "-d", dest='debug',
                        action="store_true", help="debug模式下会使用llc编译中间IR,不必每次生成clang")
    parser.add_argument("--fpga", dest="is_fpga",
                        action="store_true", help="FPGA测试模式")
    parser.add_argument("--report", "-rp", dest="report", nargs="?", default=None,
                        const="./reports", help="生成性能报告的文件夹路径，默认为./reports")
    parser.add_argument("--lld", dest="lld",
                        action="store_true", help="是否用lld链接器")
    parser.add_argument("--jobs", "-j", dest="jobs", type=int,
                        default=1, help="测试线程数")

    parser.add_argument('--output-format', default="text", choices=["text", "json"],
                        dest='output_format', help="指定输出格式")
    parser.add_argument('--log-path', dest='log_path', default="cputest.log",
                        help="日志文件保存路径")

    group = parser.add_mutually_exclusive_group()
    group.add_argument('--testsuite', dest="testsuites",
                       nargs="+", default="", help="测试使用的测试集")
    group.add_argument('--testcase', dest="testcases", nargs="+",
                       help="测试样例路径,格式为<testsuite>/<testcase>, e.g. scalar/add")
    return parser.parse_args()


if __name__ == "__main__":
    # 1. Get CLI arguments
    args = get_args()

    # 配置日志（放在解析参数之后）
    FORMAT = "[%(levelname)s]\t%(asctime)s\t%(module)s.%(funcName)s, line %(lineno)s\n%(message)s\n"
    logging.basicConfig(filename=args.log_path, filemode="w",
                        level=logging.DEBUG, format=FORMAT)

    # 配置日志（放在解析参数之后）
    FORMAT = "[%(levelname)s]\t%(asctime)s\t%(module)s.%(funcName)s, line %(lineno)s\n%(message)s\n"
    logging.basicConfig(filename=args.log_path, filemode="w",
                        level=logging.DEBUG, format=FORMAT)

    # 2. load configuration file
    test_config = TestConfig(args.config)

    # Validate CLI arguments
    if args.target not in test_config.cpus():
        print(f"{args.target} is an invalid target cpu")
        exit(2)

    if args.opt not in "0123":
        print(f"{args.opt} is an invalid optimal level")
        exit(2)

    # run tester
    tester = Tester(args.target, args.opt, args.tmp_dir, test_config,
                    args.verbose, args.debug, args.is_fpga, args.lld, args.jobs)

    if args.testsuites:
        tester.test_testsuites(args.testsuites)
    elif args.testcases:
        tester.test_testcases(args.testcases)

    tester.summary()
    if args.output_format == "json":
        save_failed_cases_json(tester.test_results, "failed_cases.json")
    if args.report:
        tester.generate_report(args.report, args.testsuites)

    if tester.all_result.fail_num > 0:
        exit(1)
    exit(0)
