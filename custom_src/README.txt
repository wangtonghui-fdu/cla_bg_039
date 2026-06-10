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

依赖
----
编译器用 QX-IDE 的 qxdsp clang(toolchain 3slot_320f)。脚本会自动在常见
安装位置查找;找不到时在 config_039.json 里指定:
    "local": { "custom_obj": { "toolchain_dir": "<...>/qxtools/toolchain/3slot_320f" } }

编译细节(已对原版 .o 验证)
---------------------------
  .c   : clang -O0 -mno-relax -mllvm --fix-debug -std=c17 -mcpu=qx320f039
         -target dsp -D__dsp__ -D__ELF__ -D__CORE0__ -ffunction-sections -fdata-sections -c
  .cla : clang -O0 -mno-relax -mllvm --fix-debug -xc -std=c17 -mcpu=cla2
         -target dsp -ffunction-sections -fdata-sections -c
  注意: 必须 -mno-relax(否则新 clang 的松弛重定位老 ld 链接不了);
        不带 -g(此 clang 的 .debug_loc 重定位同样链接不了)。
