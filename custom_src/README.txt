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

依赖:全部放进本目录(custom_src),没有任何其它路径
----------------------------------------------------
git 仓库不含编译器和头文件。脚本只在 custom_src 里找,缺了直接报错:

1) qxdsp 工具链(必需) —— 把 QX-IDE 插件目录里的 qxtools 整个文件夹拷进来(推荐,
   连模板头一起带上),或只拷 toolchain/3slot_320f:
       custom_src/qxtools/toolchain/3slot_320f/bin/clang.exe
    或 custom_src/3slot_320f/bin/clang.exe
   缺它 → ERROR,无法编译任何文件。

2) 驱动库源码树(编 bgtask_*.c / subcommon.c 才需要;cla_task.cla 不需要)——
   把 software_lib_driver(-039_v1_dev) 整个目录拷进来(含 libs/ 和 autotests/):
       custom_src/software_lib_driver-039_v1_dev/...
   缺它 → WARNING;也可以把所需头文件(common.h 等)直接散放进 custom_src。

这些大文件均被 .gitignore 排除,不会被提交。没有 config 键、不扫描本机其它路径。

编译细节(已对原版 .o 验证)
---------------------------
  .c   : clang -O0 -mno-relax -mllvm --fix-debug -std=c17 -mcpu=qx320f039
         -target dsp -D__dsp__ -D__ELF__ -D__CORE0__ -ffunction-sections -fdata-sections -c
  .cla : clang -O0 -mno-relax -mllvm --fix-debug -xc -std=c17 -mcpu=cla2
         -target dsp -ffunction-sections -fdata-sections -c
  注意: 必须 -mno-relax(否则新 clang 的松弛重定位老 ld 链接不了);
        不带 -g(此 clang 的 .debug_loc 重定位同样链接不了)。
