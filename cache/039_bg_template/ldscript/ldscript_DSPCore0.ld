OUTPUT_FORMAT("elf32-tradlittlemips", "elf32-tradbigmips", "elf32-tradlittlemips")

ENTRY(_dsp_start)

INCLUDE "ldscript_Memory.ld"

SECTIONS
{
  __data_start__ = ORIGIN(GS_RAM_CORE0_DATA);
  . = __data_start__;
  .rodata : { *(.rodata) *(.rodata.*) } > GS_RAM_CORE0_DATA
  .data   : { *(.data)   *(.data.*)   } > GS_RAM_CORE0_DATA
  .sdata  : { *(.sdata)  *(.sdata.*)  } > GS_RAM_CORE0_DATA
  __bss_start = .;
  .sbss   : { *(.sbss) *(.sbss.*) *(.scommon) } > GS_RAM_CORE0_DATA
  .bss    : { *(.bss)  *(.bss.*)  *(COMMON)   } > GS_RAM_CORE0_DATA
  __data_end__ = .;

  /* let .noinit_data out of FLASH image range, and align to 0x100 (256B)
   * to fit bootloader copy FLASH to SRAM DMA config.
   */
  .noinit_data(NOLOAD) : {
    . = ALIGN(0x100);
    *(.noinit_data)
  } > GS_RAM_CORE0_DATA

  /* for fake bootloader when debugging on RAM */
  .text.qxbootdebug : {
    KEEP(*(.text.qxboot0debug))
    *(.text.qxbootinit)
    . = ALIGN(0x10);
  } > BOOT_RAM =0x00000080
  
  __text_start__ = ORIGIN(GS_RAM_CORE0_INST);
  . = __text_start__;
  .text : {
    KEEP(*(.text.interrupt.vector))
    KEEP(*(.text.interrupt.routine))
    *(.text)
    *(.text.*)
    . = ALIGN(0x10);
  } > GS_RAM_CORE0_INST =0x00000080
  __text_end__ = .;
  
  /*
   * CLA instruction and data
   */
  __cla_data_start__ = ORIGIN(GS_RAM_CORE0_CLA_DATA);
  . = __cla_data_start__;
  .cla.rodata : { *(.cla_rodata) *(.cla_rodata.*) } > GS_RAM_CORE0_CLA_DATA
  .cla.data   : { *(.cla_data)   *(.cla_data.*)   } > GS_RAM_CORE0_CLA_DATA
  __cla_bss_start = .;
  .cla.bss    : { *(.cla_bss)    *(.cla_bss.*)    } > GS_RAM_CORE0_CLA_DATA
  __cla_data_end__ = .;

  __cla_text_start__ = ORIGIN(GS_RAM_CORE0_CLA_INST);
  . = __cla_text_start__;
  .cla.text   : {
    KEEP(*(.cla_text.interrupt.vector))
    KEEP(*(.cla_text))
    *(.cla_text.*)
    . = ALIGN(0x10);
  } > GS_RAM_CORE0_CLA_INST =0x00000080
  __cla_text_end__ = .;
  
  .cla.cpu2cla.data : { KEEP(*(.cpu2cla_data)) } > SRAM_CPU_2_CLA
  .cla.cla2cpu.data : { KEEP(*(.cla2cpu_data)) } > SRAM_CLA_2_CPU


  PIEVECTTABLE_BASE = ORIGIN(GS_RAM_CORE0_IVEC);

  PROVIDE(_DSP_STACK_TOP = ORIGIN(GS_RAM_CORE0_DATA) + LENGTH(GS_RAM_CORE0_DATA));
  PROVIDE(_CLA_STACK_TOP = ORIGIN(GS_RAM_CORE0_CLA_DATA) + LENGTH(GS_RAM_CORE0_CLA_DATA));

  PROVIDE(_core0_exp_start = (ORIGIN(GS_RAM_CORE0_INST) >> 15) & 0xF);
  PROVIDE(_CORE0_IRAM_START = ORIGIN(GS_RAM_CORE0_INST));

  PROVIDE(__end = __data_end__);
  PROVIDE(__stack_end = ORIGIN(GS_RAM_CORE0_DATA) + LENGTH(GS_RAM_CORE0_DATA) - LENGTH(STACK));
}

INCLUDE "ldscript_Peripheral.ld"
INCLUDE "ldscript_DebugInfo.ld"
