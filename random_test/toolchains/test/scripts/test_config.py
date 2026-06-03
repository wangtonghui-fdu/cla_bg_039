from pathlib import Path
import yaml
from toolchain import Toolchain


class TestConfig:
    def __init__(self, config_file):
        with open(config_file, "r") as f:
            self.raw_config = yaml.safe_load(f)

    # return None or Value
    def get_value_nonable(self, keys):
        entry = self.raw_config
        for name in keys:
            if entry == None or not name in entry.keys():
                return None
            entry = entry[name]
        return entry

    def get_value(self, keys, nonable=False):
        val = self.get_value_nonable(keys)
        if val == None and not nonable:
            raise Exception(f"{keys} is None")
        return val

    def get_value_or_default(self, keys, default):
        val = self.get_value_nonable(keys)
        return val if val != None else default

    def get_value_by_str(self, key: str, nonable=False) -> str:
        keys = key.split(".")
        val = self.get_value(keys, nonable)
        return val

    def get_keys_by_str(self, key: str):
        entry = self.get_value_by_str(key)
        keys = entry.keys()
        return set(keys)

    def test_home(self):
        return Path(self.get_value_by_str("global.test_home"))

    def cpus(self):
        return self.get_keys_by_str("cpus")

    def get_toolchain(self, target_cpu):
        return Toolchain(target_cpu, self)
        # return self.get_value_by_str(f"cpus.{target_cpu}.toolchain")

    def get_blacklist(self, testsuite, opt_level):
        return self.get_value_or_default(["testsuites", testsuite, "blacklist", f"O{opt_level}"], {})

    def is_testsuite_compile_only(self, testsuite):
        return self.get_value_or_default(["testsuites", testsuite, "compile_only"], False)
