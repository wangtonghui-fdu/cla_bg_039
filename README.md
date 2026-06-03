# 039 CLA BG 测试工具使用说明

这个仓库是 039 CLA BG 测试包。别人拉下仓库后，不需要开发、不需要重新打包 exe，配置好服务器信息后就可以直接跑测试。

## 目录不要拆开

请保留整个目录，不要只复制 `039_BG_UI.exe`。

必须一起存在的内容：

```text
039_BG_UI.exe
Start_039_BG_UI.bat
config_039.json
run_039_bg.py
analyze_bg_mismatch.py

cache/
custom_random/
output/
random_test/
reference_sim/
```

说明：

- `039_BG_UI.exe` 是主界面，普通测试人员直接双击它。
- `Start_039_BG_UI.bat` 是备用启动入口。
- `config_039.json` 保存全部配置，包括 SSH、远端仿真目录、测试参数和窗口状态。
- `cache/` 保存 039 工程模板、两套 `.o`、链接脚本和库，不能删。
- `random_test/` 保存随机指令生成器和 039 Windows 工具链，不能删。
- `reference_sim/` 保存本地模拟器，用于“模拟器/WO 对比”功能。
- `custom_random/` 用于放指定的 `random.s`。
- `output/` 保存每次测试结果，可以清空，程序会重新生成结果。

## 电脑需要什么环境

Windows 电脑需要：

1. 能访问远端仿真服务器。
2. 已安装并初始化 WSL。
3. WSL 里能运行 `bash` 和 `python3`。

039 本地编译使用随包带的 Windows 工具链，不需要额外安装 039 编译器。

如果 WSL 是新装的，先在 PowerShell 里手动运行一次：

```powershell
wsl
```

如果进入 WSL 后没有 `python3`，在 WSL 里执行：

```bash
sudo apt update
sudo apt install -y python3
```

使用 `039_BG_UI.exe` 启动时，不需要额外安装 PySide6。

## 启动方式

推荐直接双击：

```text
039_BG_UI.exe
```

如果 exe 双击没有反应，可以双击：

```text
Start_039_BG_UI.bat
```

## 首次配置

打开界面后，先检查连接配置：

- SSH Host：服务器 IP。
- Port：通常是 `22`。
- User：服务器用户名。
- Password：服务器密码。
- 仿真目录：远端 VCS 仿真目录，例如 `/lx4data/wangtonghui/cla/T55_039_NTO/vcs`。

填好后点击“保存配置”。

注意：密码会保存到本地 `config_039.json`，只适合内部测试环境使用。公开仓库里的默认密码为空，第一次使用需要自己填写。

## 单次随机测试

常用流程：

1. 设置“指令数”，例如 `1000`。
2. 设置“仿真时间”，例如 `300` 秒。
3. 点击“单次仿真”。
4. 等待日志打印完成。

程序会自动完成：

```text
生成 random.s
生成 task8.s
本地编译 WO/W 两套镜像
上传到远端仿真目录
远端运行 simv
下载 trace
对比 WO/W
生成 summary.json、compare.log 和 analysis_report.md
```

## 多次随机测试

如果要连续跑多次：

1. 设置“指令数”。
2. 设置“仿真次数”。
3. 点击“多次仿真”。

多次测试会串行执行，每次都会生成独立的输出目录。

## 跑指定 random.s

如果要复现固定例子：

1. 把文件放到：

```text
custom_random/random.s
```

2. 点击界面里的“指定 random.s 仿真”。

程序会直接使用这个 `random.s` 跑一次测试，不重新随机生成。

## 模拟器/WO 对比

界面里有“模拟器/WO 对比”选项。

默认不打开。普通 BG 测试只看 WO/W 对比即可。

打开后会额外执行：

```text
用本地 reference_sim 跑 random.s，生成 reference_sim.gr
再把 reference_sim.gr 和 RTL 无中断版本 random_wo.gr 做 GR/value 对比
```

如果界面提示：

```text
模拟器/WO: error reference link failed with exit code 1
```

说明本地 reference simulator 链接失败，不是远端 `simv` 失败，也不是 WO/W BG 主流程失败。可以先取消勾选“模拟器/WO 对比”，正常跑 BG 测试；需要排查模拟器时再查看该次输出目录里的 `reference_sim_error.log`。

## 测试结果在哪里

每次测试结果都在：

```text
output/<时间>_random/
```

常看这些文件：

```text
summary.json                  总结结果
compare.log                   WO/W 对比日志
analysis_report.md            自动分析报告
random.s                      本次随机源文件
task8.s                       实际编译进 BG task 的汇编
random_wo.gr                  无中断版本 GR trace
random_w.gr                   中断版本 GR trace
reference_sim.gr              模拟器 trace
reference_vs_wo_compare.log   模拟器和 WO 对比日志
sim_wo.log                    远端 WO 仿真日志
sim_w.log                     远端 W 仿真日志
```

## 怎么看结果

如果界面显示 WO/W 对比 PASS，说明：

```text
无中断版本 WO 和中断版本 W 的 BG 执行结果一致。
```

如果 WO/W FAIL，重点看：

```text
analysis_report.md
compare.log
random_wo.gr
random_w.gr
```

常见失败类型：

- W 比 WO 少一行：可能是中断返回后某条写回丢失。
- W 比 WO 多一行：可能是中断返回点或 trace 对齐异常。
- value mismatch：同一个 GR 写回值不一样，需要重点分析。
- 只有 PC 不同：可能是 trace PC 口径问题，要结合上下文判断。

## 命令行测试

普通测试人员建议使用 UI。如果需要命令行，可以在当前目录执行：

```powershell
python run_039_bg.py --instr 1000 --sim-timeout 300
```

使用已有 `random.s`：

```powershell
python run_039_bg.py --skip-generate --source custom_random\random.s --sim-timeout 300
```

只做本地构建，不连远端：

```powershell
python run_039_bg.py --instr 10 --no-remote-run
```

不做模拟器对比：

```powershell
python run_039_bg.py --instr 1000 --sim-timeout 300 --no-reference-sim
```
