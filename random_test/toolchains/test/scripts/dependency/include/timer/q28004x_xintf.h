#ifndef Q28004X_XINTF_H
#define Q28004X_XINTF_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_types.h"

// XINTF timing register bit definitions
struct XTIMING_BITS
{                         // bits  description
    Uint32 XWRTRAIL  : 2; // 1:0   Write access trail timing
    Uint32 XWRACTIVE : 3; // 4:2   Write access active timing
    Uint32 XWRLEAD   : 2; // 6:5   Write access lead timing
    Uint32 XRDTRAIL  : 2; // 8:7   Read access trail timing
    Uint32 XRDACTIVE : 3; // 11:9  Read access active timing
    Uint32 XRDLEAD   : 2; // 13:12 Read access lead timing
    Uint32 USEREADY  : 1; // 14    Extend access using HW waitstates
    Uint32 READYMODE : 1; // 15    Ready mode
    Uint32 XSIZE     : 2; // 17:16 XINTF bus width - must be written as 11b
    Uint32 rsvd1     : 4; // 21:18 reserved
    Uint32 X2TIMING  : 1; // 22    Double lead/active/trail timing
    Uint32 rsvd3     : 9; // 31:23 reserved
};

union XTIMING_REG
{
    Uint32 all;
    struct XTIMING_BITS bit;
};

// XINTF control register bit definitions
struct XINTCNF2_BITS
{                        // bits  description
    Uint32 WRBUFF  : 2;  // 1:0   Write buffer depth
    Uint32 CLKMODE : 1;  // 2     Ratio for XCLKOUT with respect to XTIMCLK
    Uint32 CLKOFF  : 1;  // 3     Disable XCLKOUT
    Uint32 rsvd1   : 2;  // 5:4   reserved
    Uint32 WLEVEL  : 2;  // 7:6   Current level of the write buffer
    Uint32 rsvd2   : 1;  // 8     reserved
    Uint32 HOLD    : 1;  // 9     Hold enable/disable
    Uint32 HOLDS   : 1;  // 10    Current state of HOLDn input
    Uint32 HOLDAS  : 1;  // 11    Current state of HOLDAn output
    Uint32 rsvd3   : 4;  // 15:12 reserved
    Uint32 XTIMCLK : 3;  // 18:16 Ratio for XTIMCLK
    Uint32 rsvd4   : 13; // 31:19 reserved
};

union XINTCNF2_REG
{
    Uint32 all;
    struct XINTCNF2_BITS bit;
};

// XINTF bank switching register bit definitions
struct XBANK_BITS
{                     // bits  description
    Uint32 BANK : 3;  // 2:0   Zone for which banking is enabled
    Uint32 BCYC : 3;  // 5:3   XTIMCLK cycles to add
    Uint32 rsvd : 10; // 15:6  reserved
};

union XBANK_REG
{
    Uint32 all;
    struct XBANK_BITS bit;
};

struct XRESET_BITS
{
    Uint32 XHARDRESET : 1;
    Uint32 rsvd1      : 15;
};

union XRESET_REG
{
    Uint32 all;
    struct XRESET_BITS bit;
};

// XINTF Register File
struct XINTF_REGS
{
    union XTIMING_REG XTIMING0;
    Uint32 rsvd1[5];
    union XTIMING_REG XTIMING6;
    union XTIMING_REG XTIMING7;
    Uint32 rsvd2[2];
    union XINTCNF2_REG XINTCNF2;
    Uint32 rsvd3;
    union XBANK_REG XBANK;
    Uint32 rsvd4;
    Uint32 XREVISION;
    Uint32 rsvd5[2];
    union XRESET_REG XRESET;
};

// XINTF External References & Function Declarations
extern volatile struct XINTF_REGS XintfaRegs;
extern volatile struct XINTF_REGS XintfbRegs;
extern volatile struct XINTF_REGS XintfcRegs;

#ifdef __cplusplus
}
#endif

#endif
