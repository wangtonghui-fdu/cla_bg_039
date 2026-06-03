#ifndef Q28004X_GPIO_H
#define Q28004X_GPIO_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_types.h"

struct GPA_CTRL_BITS
{                        // bits description
    Uint32 QUALPRD0 : 8; // 7:0 Qualification sampling period for GPIO0 to GPIO7
    Uint32 QUALPRD1 : 8; // 15:8 Qualification sampling period for GPIO8 to GPIO15
    Uint32 QUALPRD2 : 8; // 23:16 Qualification sampling period for GPIO16 to GPIO23
    Uint32 QUALPRD3 : 8; // 31:24 Qualification sampling period for GPIO24 to GPIO31
};

union GPA_CTRL_REG
{
    Uint32 all;
    struct GPA_CTRL_BITS bit;
};

struct GPA_AMSEL_BITS
{                       // bits description
    Uint32 rsvd1  : 22; // 21:0 Reserved
    Uint32 GPIO22 : 1;  // 22 Analog Mode select for this pin
    Uint32 GPIO23 : 1;  // 23 Analog Mode select for this pin
};

union GPA_AMSEL_REG
{
    Uint32 all;
    struct GPA_AMSEL_BITS bit;
};

struct GPA_16_L_BITS
{                      // bits description
    Uint32 GPIO0  : 2; // 1:0 Select input qualification type for GPIO0
    Uint32 GPIO1  : 2; // 3:2 Select input qualification type for GPIO1
    Uint32 GPIO2  : 2; // 5:4 Select input qualification type for GPIO2
    Uint32 GPIO3  : 2; // 7:6 Select input qualification type for GPIO3
    Uint32 GPIO4  : 2; // 9:8 Select input qualification type for GPIO4
    Uint32 GPIO5  : 2; // 11:10 Select input qualification type for GPIO5
    Uint32 GPIO6  : 2; // 13:12 Select input qualification type for GPIO6
    Uint32 GPIO7  : 2; // 15:14 Select input qualification type for GPIO7
    Uint32 GPIO8  : 2; // 17:16 Select input qualification type for GPIO8
    Uint32 GPIO9  : 2; // 19:18 Select input qualification type for GPIO9
    Uint32 GPIO10 : 2; // 21:20 Select input qualification type for GPIO10
    Uint32 GPIO11 : 2; // 23:22 Select input qualification type for GPIO11
    Uint32 GPIO12 : 2; // 25:24 Select input qualification type for GPIO12
    Uint32 GPIO13 : 2; // 27:26 Select input qualification type for GPIO13
    Uint32 GPIO14 : 2; // 29:28 Select input qualification type for GPIO14
    Uint32 GPIO15 : 2; // 31:30 Select input qualification type for GPIO15
};

union GPA_16_L_REG
{
    Uint32 all;
    struct GPA_16_L_BITS bit;
};

struct GPA_16_H_BITS
{                      // bits description
    Uint32 GPIO16 : 2; // 1:0 Select input qualification type for GPIO16
    Uint32 GPIO17 : 2; // 3:2 Select input qualification type for GPIO17
    Uint32 GPIO18 : 2; // 5:4 Select input qualification type for GPIO18
    Uint32 GPIO19 : 2; // 7:6 Select input qualification type for GPIO19
    Uint32 GPIO20 : 2; // 9:8 Select input qualification type for GPIO20
    Uint32 GPIO21 : 2; // 11:10 Select input qualification type for GPIO21
    Uint32 GPIO22 : 2; // 13:12 Select input qualification type for GPIO22
    Uint32 GPIO23 : 2; // 15:14 Select input qualification type for GPIO23
    Uint32 GPIO24 : 2; // 17:16 Select input qualification type for GPIO24
    Uint32 GPIO25 : 2; // 19:18 Select input qualification type for GPIO25
    Uint32 GPIO26 : 2; // 21:20 Select input qualification type for GPIO26
    Uint32 GPIO27 : 2; // 23:22 Select input qualification type for GPIO27
    Uint32 GPIO28 : 2; // 25:24 Select input qualification type for GPIO28
    Uint32 GPIO29 : 2; // 27:26 Select input qualification type for GPIO29
    Uint32 GPIO30 : 2; // 29:28 Select input qualification type for GPIO30
    Uint32 GPIO31 : 2; // 31:30 Select input qualification type for GPIO31
};

union GPA_16_H_REG
{
    Uint32 all;
    struct GPA_16_H_BITS bit;
};

struct GPA_32_BITS
{                      // bits description
    Uint32 GPIO0  : 1; // 0 Defines direction for this pin in GPIO mode
    Uint32 GPIO1  : 1; // 1 Defines direction for this pin in GPIO mode
    Uint32 GPIO2  : 1; // 2 Defines direction for this pin in GPIO mode
    Uint32 GPIO3  : 1; // 3 Defines direction for this pin in GPIO mode
    Uint32 GPIO4  : 1; // 4 Defines direction for this pin in GPIO mode
    Uint32 GPIO5  : 1; // 5 Defines direction for this pin in GPIO mode
    Uint32 GPIO6  : 1; // 6 Defines direction for this pin in GPIO mode
    Uint32 GPIO7  : 1; // 7 Defines direction for this pin in GPIO mode
    Uint32 GPIO8  : 1; // 8 Defines direction for this pin in GPIO mode
    Uint32 GPIO9  : 1; // 9 Defines direction for this pin in GPIO mode
    Uint32 GPIO10 : 1; // 10 Defines direction for this pin in GPIO mode
    Uint32 GPIO11 : 1; // 11 Defines direction for this pin in GPIO mode
    Uint32 GPIO12 : 1; // 12 Defines direction for this pin in GPIO mode
    Uint32 GPIO13 : 1; // 13 Defines direction for this pin in GPIO mode
    Uint32 GPIO14 : 1; // 14 Defines direction for this pin in GPIO mode
    Uint32 GPIO15 : 1; // 15 Defines direction for this pin in GPIO mode
    Uint32 GPIO16 : 1; // 16 Defines direction for this pin in GPIO mode
    Uint32 GPIO17 : 1; // 17 Defines direction for this pin in GPIO mode
    Uint32 GPIO18 : 1; // 18 Defines direction for this pin in GPIO mode
    Uint32 GPIO19 : 1; // 19 Defines direction for this pin in GPIO mode
    Uint32 GPIO20 : 1; // 20 Defines direction for this pin in GPIO mode
    Uint32 GPIO21 : 1; // 21 Defines direction for this pin in GPIO mode
    Uint32 GPIO22 : 1; // 22 Defines direction for this pin in GPIO mode
    Uint32 GPIO23 : 1; // 23 Defines direction for this pin in GPIO mode
    Uint32 GPIO24 : 1; // 24 Defines direction for this pin in GPIO mode
    Uint32 GPIO25 : 1; // 25 Defines direction for this pin in GPIO mode
    Uint32 GPIO26 : 1; // 26 Defines direction for this pin in GPIO mode
    Uint32 GPIO27 : 1; // 27 Defines direction for this pin in GPIO mode
    Uint32 GPIO28 : 1; // 28 Defines direction for this pin in GPIO mode
    Uint32 GPIO29 : 1; // 29 Defines direction for this pin in GPIO mode
    Uint32 GPIO30 : 1; // 30 Defines direction for this pin in GPIO mode
    Uint32 GPIO31 : 1; // 31 Defines direction for this pin in GPIO mode
};

union GPA_32_REG
{
    Uint32 all;
    struct GPA_32_BITS bit;
};

struct GPB_CTRL_BITS
{                        // bits description
    Uint32 QUALPRD0 : 8; // 7:0 Qualification sampling period for GPIO32 to GPIO39
    Uint32 QUALPRD1 : 8; // 15:8 Qualification sampling period for GPIO40 to GPIO47
    Uint32 QUALPRD2 : 8; // 23:16 Qualification sampling period for GPIO48 to GPIO55
    Uint32 QUALPRD3 : 8; // 31:24 Qualification sampling period for GPIO56 to GPIO63
};

union GPB_CTRL_REG
{
    Uint32 all;
    struct GPB_CTRL_BITS bit;
};

struct GPB_16_L_BITS
{                      // bits description
    Uint32 GPIO32 : 2; // 1:0 Select input qualification type for GPIO32
    Uint32 GPIO33 : 2; // 3:2 Select input qualification type for GPIO33
    Uint32 GPIO34 : 2; // 5:4 Select input qualification type for GPIO34
    Uint32 GPIO35 : 2; // 7:6 Select input qualification type for GPIO35
    Uint32 rsvd1  : 2; // Reserved
    Uint32 GPIO37 : 2; // 11:10 Select input qualification type for GPIO37
    Uint32 rsvd2  : 2; // Reserved
    Uint32 GPIO39 : 2; // 15:14 Select input qualification type for GPIO39
    Uint32 GPIO40 : 2; // 17:16 Select input qualification type for GPIO40
    Uint32 GPIO41 : 2; // 19:18 Select input qualification type for GPIO41
    Uint32 GPIO42 : 2; // 21:20 Select input qualification type for GPIO42
    Uint32 GPIO43 : 2; // 23:22 Select input qualification type for GPIO43
    Uint32 GPIO44 : 2; // 25:24 Select input qualification type for GPIO44
    Uint32 GPIO45 : 2; // 27:26 Select input qualification type for GPIO45
    Uint32 GPIO46 : 2; // 29:28 Select input qualification type for GPIO46
    Uint32 GPIO47 : 2; // 31:30 Select input qualification type for GPIO47
};

union GPB_16_L_REG
{
    Uint32 all;
    struct GPB_16_L_BITS bit;
};

struct GPB_16_H_BITS
{                      // bits description
    Uint32 GPIO48 : 2; // 1:0 Select input qualification type for GPIO48
    Uint32 GPIO49 : 2; // 3:2 Select input qualification type for GPIO49
    Uint32 GPIO50 : 2; // 5:4 Select input qualification type for GPIO50
    Uint32 GPIO51 : 2; // 7:6 Select input qualification type for GPIO51
    Uint32 GPIO52 : 2; // 9:8 Select input qualification type for GPIO52
    Uint32 GPIO53 : 2; // 11:10 Select input qualification type for GPIO53
    Uint32 GPIO54 : 2; // 13:12 Select input qualification type for GPIO54
    Uint32 GPIO55 : 2; // 15:14 Select input qualification type for GPIO55
    Uint32 GPIO56 : 2; // 17:16 Select input qualification type for GPIO56
    Uint32 GPIO57 : 2; // 19:18 Select input qualification type for GPIO57
    Uint32 GPIO58 : 2; // 21:20 Select input qualification type for GPIO58
    Uint32 GPIO59 : 2; // 23:22 Select input qualification type for GPIO59
    Uint32 rsvd1  : 2; // Reserved
    Uint32 rsvd2  : 2; // Reserved
    Uint32 rsvd3  : 2; // Reserved
    Uint32 rsvd4  : 2; // Reserved
};

union GPB_16_H_REG
{
    Uint32 all;
    struct GPB_16_H_BITS bit;
};

struct GPB_32_BITS
{                      // bits description
    Uint32 GPIO32 : 1; // 0 Defines direction for this pin in GPIO mode
    Uint32 GPIO33 : 1; // 1 Defines direction for this pin in GPIO mode
    Uint32 GPIO34 : 1; // 2 Defines direction for this pin in GPIO mode
    Uint32 GPIO35 : 1; // 3 Defines direction for this pin in GPIO mode
    Uint32 rsvd1  : 1; // 4 Defines direction for this pin in GPIO mode
    Uint32 GPIO37 : 1; // 5 Defines direction for this pin in GPIO mode
    Uint32 rsvd2  : 1; // 6 Defines direction for this pin in GPIO mode
    Uint32 GPIO39 : 1; // 7 Defines direction for this pin in GPIO mode
    Uint32 GPIO40 : 1; // 8 Defines direction for this pin in GPIO mode
    Uint32 GPIO41 : 1; // 9 Defines direction for this pin in GPIO mode
    Uint32 GPIO42 : 1; // 10 Defines direction for this pin in GPIO mode
    Uint32 GPIO43 : 1; // 11 Defines direction for this pin in GPIO mode
    Uint32 GPIO44 : 1; // 12 Defines direction for this pin in GPIO mode
    Uint32 GPIO45 : 1; // 13 Defines direction for this pin in GPIO mode
    Uint32 GPIO46 : 1; // 14 Defines direction for this pin in GPIO mode
    Uint32 GPIO47 : 1; // 15 Defines direction for this pin in GPIO mode
    Uint32 GPIO48 : 1; // 16 Defines direction for this pin in GPIO mode
    Uint32 GPIO49 : 1; // 17 Defines direction for this pin in GPIO mode
    Uint32 GPIO50 : 1; // 18 Defines direction for this pin in GPIO mode
    Uint32 GPIO51 : 1; // 19 Defines direction for this pin in GPIO mode
    Uint32 GPIO52 : 1; // 20 Defines direction for this pin in GPIO mode
    Uint32 GPIO53 : 1; // 21 Defines direction for this pin in GPIO mode
    Uint32 GPIO54 : 1; // 22 Defines direction for this pin in GPIO mode
    Uint32 GPIO55 : 1; // 23 Defines direction for this pin in GPIO mode
    Uint32 GPIO56 : 1; // 24 Defines direction for this pin in GPIO mode
    Uint32 GPIO57 : 1; // 25 Defines direction for this pin in GPIO mode
    Uint32 GPIO58 : 1; // 26 Defines direction for this pin in GPIO mode
    Uint32 GPIO59 : 1; // 27 Defines direction for this pin in GPIO mode
    Uint32 rsvd3  : 1; // 28 Defines direction for this pin in GPIO mode
    Uint32 rsvd4  : 1; // 29 Defines direction for this pin in GPIO mode
    Uint32 rsvd5  : 1; // 30 Defines direction for this pin in GPIO mode
    Uint32 rsvd6  : 1; // 31 Defines direction for this pin in GPIO mode
};

union GPB_32_REG
{
    Uint32 all;
    struct GPB_32_BITS bit;
};

struct GPH_CTRL_BITS
{                        // bits description
    Uint32 QUALPRD0 : 8; // 7:0 Qualification sampling period for GPIO224 to GPIO231
    Uint32 QUALPRD1 : 8; // 15:8 Qualification sampling period for GPIO232 to GPIO239
    Uint32 QUALPRD2 : 8; // 23:16 Qualification sampling period for GPIO240 to GPIO247
    Uint32 rsvd1    : 8; // 31:24 Reserved
};

union GPH_CTRL_REG
{
    Uint32 all;
    struct GPH_CTRL_BITS bit;
};

struct GPH_QSEL1_BITS
{                       // bits description
    Uint32 GPIO224 : 2; // 1:0 Select input qualification type for this GPIO Pin
    Uint32 GPIO225 : 2; // 3:2 Select input qualification type for this GPIO Pin
    Uint32 GPIO226 : 2; // 5:4 Select input qualification type for this GPIO Pin
    Uint32 GPIO227 : 2; // 7:6 Select input qualification type for this GPIO Pin
    Uint32 GPIO228 : 2; // 9:8 Select input qualification type for this GPIO Pin
    Uint32 GPIO229 : 2; // 11:10 Select input qualification type for this GPIO Pin
    Uint32 GPIO230 : 2; // 13:12 Select input qualification type for this GPIO Pin
    Uint32 GPIO231 : 2; // 15:14 Select input qualification type for this GPIO Pin
    Uint32 GPIO232 : 2; // 17:16 Select input qualification type for this GPIO Pin
    Uint32 GPIO233 : 2; // 19:18 Select input qualification type for this GPIO Pin
    Uint32 GPIO234 : 2; // 21:20 Select input qualification type for this GPIO Pin
    Uint32 GPIO235 : 2; // 23:22 Select input qualification type for this GPIO Pin
    Uint32 GPIO236 : 2; // 25:24 Select input qualification type for this GPIO Pin
    Uint32 GPIO237 : 2; // 27:26 Select input qualification type for this GPIO Pin
    Uint32 GPIO238 : 2; // 29:28 Select input qualification type for this GPIO Pin
    Uint32 GPIO239 : 2; // 31:30 Select input qualification type for this GPIO Pin
};

union GPH_QSEL1_REG
{
    Uint32 all;
    struct GPH_QSEL1_BITS bit;
};

struct GPH_QSEL2_BITS
{                       // bits description
    Uint32 GPIO240 : 2; // 1:0 Select input qualification type for this GPIO Pin
    Uint32 GPIO241 : 2; // 3:2 Select input qualification type for this GPIO Pin
    Uint32 GPIO242 : 2; // 5:4 Select input qualification type for this GPIO Pin
    Uint32 GPIO243 : 2; // 7:6 Select input qualification type for this GPIO Pin
    Uint32 GPIO244 : 2; // 9:8 Select input qualification type for this GPIO Pin
    Uint32 GPIO245 : 2; // 11:10 Select input qualification type for this GPIO Pin
    Uint32 GPIO246 : 2; // 13:12 Select input qualification type for this GPIO Pin
    Uint32 GPIO247 : 2; // 15:14 Select input qualification type for this GPIO Pin
    Uint32 rsvd1   : 2; // 17:16 Reserved
    Uint32 rsvd2   : 2; // 19:18 Reserved
    Uint32 rsvd3   : 2; // 21:20 Reserved
    Uint32 rsvd4   : 2; // 23:22 Reserved
    Uint32 rsvd5   : 2; // 25:24 Reserved
    Uint32 rsvd6   : 2; // 27:26 Reserved
    Uint32 rsvd7   : 2; // 29:28 Reserved
    Uint32 rsvd8   : 2; // 31:30 Reserved
};

union GPH_QSEL2_REG
{
    Uint32 all;
    struct GPH_QSEL2_BITS bit;
};

struct GPH_32_BITS
{ // bits description
    Uint32 GPIO224 : 1;
    Uint32 GPIO225 : 1;
    Uint32 GPIO226 : 1;
    Uint32 GPIO227 : 1;
    Uint32 GPIO228 : 1;
    Uint32 GPIO229 : 1;
    Uint32 GPIO230 : 1;
    Uint32 GPIO231 : 1;
    Uint32 GPIO232 : 1;
    Uint32 GPIO233 : 1;
    Uint32 GPIO234 : 1;
    Uint32 GPIO235 : 1;
    Uint32 GPIO236 : 1;
    Uint32 GPIO237 : 1;
    Uint32 GPIO238 : 1;
    Uint32 GPIO239 : 1;
    Uint32 GPIO240 : 1;
    Uint32 GPIO241 : 1;
    Uint32 GPIO242 : 1;
    Uint32 GPIO243 : 1;
    Uint32 GPIO244 : 1;
    Uint32 GPIO245 : 1;
    Uint32 GPIO246 : 1;
    Uint32 GPIO247 : 1;
    Uint32 rsvd1   : 1;
    Uint32 rsvd2   : 1;
    Uint32 rsvd3   : 1;
    Uint32 rsvd4   : 1;
    Uint32 rsvd5   : 1;
    Uint32 rsvd6   : 1;
    Uint32 rsvd7   : 1;
    Uint32 rsvd8   : 1;
};

union GPH_32_REG
{
    Uint32 all;
    struct GPH_32_BITS bit;
};

struct GPIO_CTRL_REGS
{
    union GPA_CTRL_REG GPACTRL;   // GPIO A Qualification Sampling Period (GPIO0 to GPIO31) offset:0x00
    union GPA_16_L_REG GPAQSEL1;  // GPIO A Qualification Type (GPIO0 to GPIO15) offset:0x04
    union GPA_16_H_REG GPAQSEL2;  // GPIO A Qualification Type (GPIO16 to GPIO31) offset:0x08
    union GPA_16_L_REG GPAMUX1;   // GPIO A Peripheral Mux (GPIO0 to GPIO15) offset:0x0C
    union GPA_16_H_REG GPAMUX2;   // GPIO A Peripheral Mux (GPIO16 to GPIO31) offset:0x10
    union GPA_32_REG GPADIR;      // GPIO A Direction (GPIO0 to GPIO31) offset:0x14
    union GPA_32_REG GPAPUD;      // GPIO A Pull-Up Disable (GPIO0 to GPIO31) offset:0x18
    union GPA_32_REG GPAINV;      // GPIO A Input Inversion (GPIO0 to GPIO31) offset:0x1C
    union GPA_32_REG GPAODR;      // GPIO A Open Drain Output Mode (GPIO0 to GPIO31) offset:0x20
    union GPA_AMSEL_REG GPAAMSEL; // GPIO A Analog Mode Select (GPIO0 to GPIO31) offset:0x24
    union GPA_16_L_REG GPAGMUX1;  // GPIO A Peripheral Group Mux (GPIO0 to GPIO15) offset:0x28
    union GPA_16_H_REG GPAGMUX2;  // GPIO A Peripheral Group Mux (GPIO16 to GPIO31) offset:0x2C
    union GPA_32_REG GPALOCK;     // GPIO A Lock Register (GPIO0 to GPIO31) offset:0x30
    union GPA_32_REG GPACR;       // GPIO A Lock Register (GPIO0 to GPIO31) offset:0x34
    Uint32 rsvd0[6];              // reserved offset: 0x38 ~ 0x4c
    union GPB_CTRL_REG GPBCTRL;   // GPIO B Qualification Sampling Period (GPIO32 to GPIO63) offset:0x50
    union GPB_16_L_REG GPBQSEL1;  // GPIO B Qualification Type (GPIO32 to GPIO47) offset:0x54
    union GPB_16_H_REG GPBQSEL2;  // GPIO B Qualification Type (GPIO48 to GPIO63) offset:0x58
    union GPB_16_L_REG GPBMUX1;   // GPIO B Peripheral Mux (GPIO32 to GPIO47) offset:0x5C
    union GPB_16_H_REG GPBMUX2;   // GPIO B Peripheral Mux (GPIO48 to GPIO63) offset:0x60
    union GPB_32_REG GPBDIR;      // GPIO B Direction (GPIO32 to GPIO63) offset:0x64
    union GPB_32_REG GPBPUD;      // GPIO B Pull-Up Disable (GPIO32 to GPIO63) offset:0x68
    Uint32 rsvd1;                 // reserved offset: 0x6C
    union GPB_32_REG GPBINV;      // GPIO B Input Inversion (GPIO32 to GPIO63) offset:0x70
    union GPB_32_REG GPBODR;      // GPIO B Open Drain Output Mode (GPIO32 to GPIO63) offset:0x74
    union GPB_16_L_REG GPBGMUX1;  // GPIO B Peripheral Group Mux (GPIO32 to GPIO47) offset:0x78
    union GPB_16_H_REG GPBGMUX2;  // GPIO B Peripheral Group Mux (GPIO48 to GPIO63) offset:0x7C
    union GPB_32_REG GPBLOCK;     // GPIO B Lock Register (GPIO32 to GPIO63) offset:0x80
    union GPB_32_REG GPBCR;       // GPIO B Lock Register (GPIO32 to GPIO63) offset:0x84
    Uint32 vsvd2[6];              // reserved offset:0x88~0x9C
    union GPH_CTRL_REG GPHCTRL;   // GPIO H Qualification Sampling Period (GPIO224 to GPIO255) offset:0xA0
    union GPH_QSEL1_REG GPHQSEL1; // GPIO H Qualification Type (GPIO224 to GPIO239) offset:0xA4
    union GPH_QSEL2_REG GPHQSEL2; // GPIO H Qualification Type (GPIO240 to GPIO255) offset:0xA8
    union GPH_32_REG GPHPUD;      // GPIO H Pull-Up Disable (GPIO224 to GPIO255) offset:0xAC
    union GPH_32_REG GPHINV;      // GPIO H Input Inversion (GPIO224 to GPIO255) offset:0xB0
    union GPH_32_REG GPHAMSEL;    // GPIO H Analog Mode Select (GPIO224 to GPIO255) offset:0xB4
    union GPH_32_REG GPHLOCK;     // GPIO H Lock Register (GPIO224 to GPIO255) offset:0xB8
    union GPH_32_REG GPHCR;       // GPIO H Lock Commit Register (GPIO224 to GPIO255) offset:0xBC
};

struct GPIO_DATA_REGS
{
    union GPA_32_REG GPADAT;    // GPIO A Data Register (GPIO0 to GPIO31)
    union GPA_32_REG GPASET;    // GPIO A Output Set (GPIO0 to GPIO31)
    union GPA_32_REG GPACLEAR;  // GPIO A Output Clear (GPIO0 to GPIO31)
    union GPA_32_REG GPATOGGLE; // GPIO A Output Toggle (GPIO0 to GPIO31)
    union GPB_32_REG GPBDAT;    // GPIO B Data Register (GPIO32 to GPIO63)
    union GPB_32_REG GPBSET;    // GPIO B Output Set (GPIO32 to GPIO63)
    union GPB_32_REG GPBCLEAR;  // GPIO B Output Clear (GPIO32 to GPIO63)
    union GPB_32_REG GPBTOGGLE; // GPIO B Output Toggle (GPIO32 to GPIO63)
};

extern volatile struct GPIO_CTRL_REGS GpioCtrlRegs;
extern volatile struct GPIO_DATA_REGS GpioDataRegs;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif
