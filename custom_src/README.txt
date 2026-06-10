custom_src — 自定义 C/CLA 源码,本地编译并替换测试镜像里的 .o
====================================================================

用法
----
1. 把要替换的源文件放进本目录(文件名必须一致,可放任意子集):
       cla_task.cla            CLA 侧 8 个任务定义(Task1/Task8 等)
       bgtask_interrupt.c      CPU 侧 W(带中断)驱动
       bgtask_notinterrupt.c   CPU 侧 WO(无中断)驱动
       subcommon.c             公共代码
   源码需要的头文件(如 subcommon.h)也放在本目录。
2. 点 UI 上的「更新.o文件」按钮(或命令行: python update_custom_obj.py)。
3. 之后的每次仿真都会链接新 .o。

还原
----
原版 .o 在第一次替换时自动备份为 cache 里的 *.orig.bak。
命令行执行  python update_custom_obj.py --restore  即可全部还原。

依赖(git 不含编译器和头文件,需本机提供)
------------------------------------------
1) QX-IDE 的 qxdsp 工具链(clang,3slot_320f)——随 QX-IDE 安装,不在仓库里。
   它同时提供编译器 + 模板头(cla_task.cla 需要的 cpu.h/__clatask、driverlib、device)。
2) 驱动库源码树——提供 common.h / subcommon.h(bgtask_*.c 和 subcommon.c 需要;
   cla_task.cla 不需要)。例如新克隆的 software_lib_driver(-039_v1_dev) 整个目录。

脚本会自动查找(扫各盘的 QX-IDE 安装、以及仓库旁边/本地的驱动库树);找不到时
会明确报 WARNING 指出缺哪个。强烈建议在 config_039.json 里显式指定:

    "local": {
        "custom_obj": {
            "toolchain_dir": "<...>/qxtools/toolchain/3slot_320f",
            "template_dir":  "<...>/qxtools/template/QXS320F280039/Empty",   (可选,默认从 toolchain 推出)
            "driverlib_dir": "<...>/software_lib_driver-039_v1_dev"          (含 libs/ 和 autotests/)
        }
    }

只换 cla_task.cla 时,只需 (1) QX-IDE;换 bgtask_*.c / subcommon.c 才需要 (2) 驱动库树。
注意:config_039.json 不进 git,每台机器需自行配置。

编译细节(已对原版 .o 验证)
---------------------------
  .c   : clang -O0 -mno-relax -mllvm --fix-debug -std=c17 -mcpu=qx320f039
         -target dsp -D__dsp__ -D__ELF__ -D__CORE0__ -ffunction-sections -fdata-sections -c
  .cla : clang -O0 -mno-relax -mllvm --fix-debug -xc -std=c17 -mcpu=cla2
         -target dsp -ffunction-sections -fdata-sections -c
  注意: 必须 -mno-relax(否则新 clang 的松弛重定位老 ld 链接不了);
        不带 -g(此 clang 的 .debug_loc 重定位同样链接不了)。
