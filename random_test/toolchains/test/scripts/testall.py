import argparse
import asyncio
import subprocess
import sys
import yaml


# python testall.py --config testplan.yml --sync(同步运行则加此参数)

def run_asyncio_tasks(tasks):
    loop = asyncio.get_event_loop()
    results = loop.run_until_complete(asyncio.gather(*tasks))
    loop.close()
    return results


async def async_run(cmd):
    process = await asyncio.create_subprocess_shell(cmd, stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE)
    stdout, stderr = await process.communicate()
    return process.returncode, stdout, stderr


async def run_test(tcpu, optimization_levels, tmp_dir_base, config_file, testsuits, verbose, lld, fpga):
    testsuits_str = ' '.join(testsuits)
    ver_flag = '-v' if verbose else ''
    succ = True
    lld = '--lld' if lld else ''
    fpga = '--fpga' if fpga else ''
    for optimization_level in optimization_levels:
        tmp_dir = "{}/{}_{}".format(tmp_dir_base, tcpu, optimization_level)
        cmd = "python ./cputest.py --tmp-dir={} -tcpu {} -{} --config {} --testsuit {} {} --report -rp reports {} {} --jobs 16".format(
            tmp_dir, tcpu, optimization_level, config_file, testsuits_str, ver_flag, lld, fpga
        )
        print("Executing:", cmd)
        returncode, stdout, stderr = await async_run(cmd)
        if stdout:
            print(stdout.decode(errors='ignore'))
        if stderr:
            print(stderr.decode(errors='ignore'), file=sys.stderr)
        if returncode != 0:
            succ = False
    return succ


def sync_run(cmd):
    process = subprocess.Popen(
        cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    return process.returncode, stdout, stderr


def run_test_sync(tcpu, optimization_levels, tmp_dir_base, config_file, testsuits, verbose, lld, fpga):
    testsuits_str = ' '.join(testsuits)
    ver_flag = '-v' if verbose else ''
    succ = True
    lld = '--lld' if lld else ''
    fpga = '--fpga' if fpga else ''
    for optimization_level in optimization_levels:
        tmp_dir = "{}/{}_{}".format(tmp_dir_base, tcpu, optimization_level)
        cmd = "python ./cputest.py --tmp-dir={} -tcpu {} -{} --config {} --testsuit {} {} --report -rp reports {} {}".format(
            tmp_dir, tcpu, optimization_level, config_file, testsuits_str, ver_flag, lld, fpga
        )
        print("Executing:", cmd)
        returncode, stdout, stderr = sync_run(cmd)
        if stdout:
            print(stdout.decode(errors='ignore'))
        if stderr:
            print(stderr.decode(errors='ignore'), file=sys.stderr)
        if returncode != 0:
            succ = False
    return succ


def load_config(config_path='config.yml'):
    with open(config_path, 'r') as file:
        return yaml.safe_load(file)


def main():
    parser = argparse.ArgumentParser(
        description='Run tests with specified YAML configuration file.')
    parser.add_argument(
        '--config', type=str, help='Path to the YAML configuration file', default='config.yml')
    parser.add_argument('--sync', action='store_true',
                        help='Run tests synchronously')
    parser.add_argument('--lld', action='store_true', help='Use lld')
    parser.add_argument('--fpga', action='store_true', help='Use remote ci')
    args = parser.parse_args()

    config = load_config(args.config)

    tmp_dir_base = config['global_config']['tmp_dir_base']
    config_file = config['global_config']['config_file']
    verbose = config['global_config']['verbose']

    if args.sync:
        succs = []
        for test in config['tcpu_tests']:
            succ = run_test_sync(test['tcpu'], test['optimization_levels'], tmp_dir_base, config_file,
                                 test['testsuits'],
                                 verbose, lld=args.lld, fpga=args.fpga)
            succs.append(succ)
    else:
        tasks = [
            run_test(test['tcpu'], test['optimization_levels'], tmp_dir_base, config_file, test['testsuits'],
                     verbose, lld=args.lld, fpga=args.fpga)
            for test in config['tcpu_tests']
        ]
        succs = run_asyncio_tasks(tasks)

    for succ in succs:
        if succ == False:
            print("testall: some test fail")
            exit(1)


if __name__ == "__main__":
    main()
