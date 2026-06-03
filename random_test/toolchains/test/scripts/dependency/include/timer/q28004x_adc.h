#ifndef Q28004X_ADC_H
#define Q28004X_ADC_H

#include "q28004x_types.h"

#ifdef __cplusplus
extern "C" {
#endif

//---------------------------------------------------------------------------
// ADC Individual Register Bit Definitions:

struct ADCCTL_BITS
{                           // bits description
    Uint32 SWLDO_HS_LU : 1; // 0 Output data type selection
    Uint32 SELVI_HD_LS : 1; // 1 Input type selection
    Uint32 INTPULSEPOS : 1; // 2 ADC Interrupt Pulse Position
    Uint32 rsvd1       : 1; // 3 Reserved
    Uint32 BIAS_C      : 3; // 6:4 SAR comparator power dissipation control signal
    Uint32 ADCPWDNZ    : 1; // 7 ADC Power Down
    Uint32 CLK_DLY_SEL : 2; // 9:8 Data sampling clock delay selection signal
    Uint32 MD_ADC      : 2; // 11:10 ADC work mode control signal
    Uint32 rsvd2       : 4; // 15:12 Reserved
    Uint32 ADCBSY      : 1; // 16 ADC Busy
    Uint32 PRESCALE    : 5; // 21:17 ADC clock divider
    Uint32 ADCBSYCHN   : 5; // 26:22 Reserved
    Uint32 rsvd3       : 5; // 31:27 Reserved
};

union ADCCTL_REG
{
    Uint32 all;
    struct ADCCTL_BITS bit;
};

struct ADCINTFLG_BITS
{                        // bits description
    Uint32 ADCINT1 : 1;  // 0: ADC Interrupt 1 Flag
    Uint32 ADCINT2 : 1;  // 1: ADC Interrupt 2 Flag
    Uint32 ADCINT3 : 1;  // 2: ADC Interrupt 3 Flag
    Uint32 ADCINT4 : 1;  // 3: ADC Interrupt 4 Flag
    Uint32 rsvd1   : 28; // 31:4 Reserved
};

union ADCINTFLG_REG
{
    Uint32 all;
    struct ADCINTFLG_BITS bit;
};

struct ADCINTSEL_BITS
{                        // bits description
    Uint32 INT1SEL  : 5; // 4:0 ADCINT EOC Source Select
    Uint32 INT1EN   : 1; // 5 ADCINT Interrupt Enable
    Uint32 INT1CONT : 1; // 6 ADCINT Continue to Interrupt Mode
    Uint32 rsvd1    : 1; // 7 Reserved
    Uint32 INT2SEL  : 5; // 12:8 ADCINT EOC Source Select
    Uint32 INT2EN   : 1; // 13 ADCINT Interrupt Enable
    Uint32 INT2CONT : 1; // 14 ADCINT Continue to Interrupt Mode
    Uint32 rsvd2    : 1; // 15 Reserved
    Uint32 INT3SEL  : 5; // 20:16 ADCINT EOC Source Select
    Uint32 INT3EN   : 1; // 21 ADCINT Interrupt Enable
    Uint32 INT3CONT : 1; // 22 ADCINT Continue to Interrupt Mode
    Uint32 rsvd3    : 1; // 23 Reserved
    Uint32 INT4SEL  : 5; // 28:24 ADCINT EOC Source Select
    Uint32 INT4EN   : 1; // 29 ADCINT Interrupt Enable
    Uint32 INT4CONT : 1; // 30 ADCINT Continue to Interrupt Mode
    Uint32 rsvd4    : 1; // 31 Reserved
};

union ADCINTSEL_REG
{
    Uint32 all;
    struct ADCINTSEL_BITS bit;
};

struct ADCINTFLGCLR_BITS
{                        // bits description
    Uint32 ADCINT1 : 1;  // 0: ADC Interrupt Flag Clear
    Uint32 ADCINT2 : 1;  // 1: ADC Interrupt Flag Clear
    Uint32 ADCINT3 : 1;  // 2: ADC Interrupt Flag Clear
    Uint32 ADCINT4 : 1;  // 3: ADC Interrupt Flag Clear
    Uint32 rsvd1   : 28; // 31:4 Reserved
};

union ADCINTFLGCLR_REG
{
    Uint32 all;
    struct ADCINTFLGCLR_BITS bit;
};

struct ADCINTOVF_BITS
{                        // bits description
    Uint32 ADCINT1 : 1;  // 0: ADC Interrupt Overflow Flags
    Uint32 ADCINT2 : 1;  // 1: ADC Interrupt Overflow Flags
    Uint32 ADCINT3 : 1;  // 2: ADC Interrupt Overflow Flags
    Uint32 ADCINT4 : 1;  // 3: ADC Interrupt Overflow Flags
    Uint32 rsvd1   : 28; // 31:4 Reserved
};

union ADCINTOVF_REG
{
    Uint32 all;
    struct ADCINTOVF_BITS bit;
};

struct ADCINTOVFCLR_BITS
{                        // bits description
    Uint32 ADCINT1 : 1;  // 0: ADC Interrupt Overflow Clear Bits
    Uint32 ADCINT2 : 1;  // 1: ADC Interrupt Overflow Clear Bits
    Uint32 ADCINT3 : 1;  // 2: ADC Interrupt Overflow Clear Bits
    Uint32 ADCINT4 : 1;  // 3: ADC Interrupt Overflow Clear Bits
    Uint32 rsvd1   : 28; // 31:4 Reserved
};

union ADCINTOVFCLR_REG
{
    Uint32 all;
    struct ADCINTOVFCLR_BITS bit;
};

struct ADCSOC0CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC0 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC0 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC0 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC0CTL_REG
{
    Uint32 all;
    struct ADCSOC0CTL_BITS bit;
};

struct ADCSOC1CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC1 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC1 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC1 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC1CTL_REG
{
    Uint32 all;
    struct ADCSOC1CTL_BITS bit;
};

struct ADCSOC2CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC2 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC2 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC2 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC2CTL_REG
{
    Uint32 all;
    struct ADCSOC2CTL_BITS bit;
};

struct ADCSOC3CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC3 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC3 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC3 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC3CTL_REG
{
    Uint32 all;
    struct ADCSOC3CTL_BITS bit;
};

struct ADCSOC4CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC4 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC4 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC4 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC4CTL_REG
{
    Uint32 all;
    struct ADCSOC4CTL_BITS bit;
};

struct ADCSOC5CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC5 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC5 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC5 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC5CTL_REG
{
    Uint32 all;
    struct ADCSOC5CTL_BITS bit;
};

struct ADCSOC6CTL_BITS
{
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC6CTL_REG
{
    Uint32 all;
    struct ADCSOC6CTL_BITS bit;
};

struct ADCSOC7CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC7CTL_REG
{
    Uint32 all;
    struct ADCSOC7CTL_BITS bit;
};

struct ADCSOC8CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC8CTL_REG
{
    Uint32 all;
    struct ADCSOC8CTL_BITS bit;
};

struct ADCSOC9CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC9CTL_REG
{
    Uint32 all;
    struct ADCSOC9CTL_BITS bit;
};

struct ADCSOC10CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC10CTL_REG
{
    Uint32 all;
    struct ADCSOC10CTL_BITS bit;
};

struct ADCSOC11CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC11CTL_REG
{
    Uint32 all;
    struct ADCSOC11CTL_BITS bit;
};

struct ADCSOC12CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC12CTL_REG
{
    Uint32 all;
    struct ADCSOC12CTL_BITS bit;
};

struct ADCSOC13CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC13CTL_REG
{
    Uint32 all;
    struct ADCSOC13CTL_BITS bit;
};

struct ADCSOC14CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC14CTL_REG
{
    Uint32 all;
    struct ADCSOC14CTL_BITS bit;
};

struct ADCSOC15CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC15CTL_REG
{
    Uint32 all;
    struct ADCSOC15CTL_BITS bit;
};
struct ADCSOC16CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC16CTL_REG
{
    Uint32 all;
    struct ADCSOC16CTL_BITS bit;
};

struct ADCSOC17CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC17CTL_REG
{
    Uint32 all;
    struct ADCSOC17CTL_BITS bit;
};

struct ADCSOC18CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC18CTL_REG
{
    Uint32 all;
    struct ADCSOC18CTL_BITS bit;
};

struct ADCSOC19CTL_BITS
{                        // bits description
    Uint32 rsvd1   : 3;  // 2:0 Reserved
    Uint32 TRIGSEL : 5;  // 7:3 SOC6 Trigger Source Select
    Uint32 ACQPS   : 4;  // 11:8 SOC6 Acquisition Prescale
    Uint32 CHSEL   : 5;  // 16:12 SOC6 Channel Select
    Uint32 rsvd2   : 15; // 31:17 Reserved
};

union ADCSOC19CTL_REG
{
    Uint32 all;
    struct ADCSOC19CTL_BITS bit;
};

struct ADCEVTSTAT_BITS
{                           // bits description
    Uint32 PPB1TRIPHI : 1;  // 0   Post Processing Block Trip High Flag
    Uint32 PPB1TRIPLO : 1;  // 1   Post Processing Block Trip Low Flag
    Uint32 PPB1ZERO   : 1;  // 2   Post Processing Block Zero Crossing Flag
    Uint32 PPB2TRIPHI : 1;  // 3   Post Processing Block Trip High Flag
    Uint32 PPB2TRIPLO : 1;  // 4   Post Processing Block Trip Low Flag
    Uint32 PPB2ZERO   : 1;  // 5   Post Processing Block Zero Crossing Flag
    Uint32 PPB3TRIPHI : 1;  // 6   Post Processing Block Trip High Flag
    Uint32 PPB3TRIPLO : 1;  // 7   Post Processing Block Trip Low Flag
    Uint32 PPB3ZERO   : 1;  // 8   Post Processing Block Zero Crossing Flag
    Uint32 PPB4TRIPHI : 1;  // 9   Post Processing Block Trip High Flag
    Uint32 PPB4TRIPLO : 1;  // 10   Post Processing Block Trip Low Flag
    Uint32 PPB4ZERO   : 1;  // 11   Post Processing Block Zero Crossing Flag
    Uint32 rsvd1      : 20; // 31:12 Reserved
};

union ADCEVTSTAT_REG
{
    Uint32 all;
    struct ADCEVTSTAT_BITS bit;
};

struct ADCEVTCLR_BITS
{                           // bits description
    Uint32 PPB1TRIPHI : 1;  // 0   Post Processing Block Trip High Flag
    Uint32 PPB1TRIPLO : 1;  // 1   Post Processing Block Trip Low Flag
    Uint32 PPB1ZERO   : 1;  // 2   Post Processing Block Zero Crossing Flag
    Uint32 PPB2TRIPHI : 1;  // 3   Post Processing Block Trip High Flag
    Uint32 PPB2TRIPLO : 1;  // 4   Post Processing Block Trip Low Flag
    Uint32 PPB2ZERO   : 1;  // 5   Post Processing Block Zero Crossing Flag
    Uint32 PPB3TRIPHI : 1;  // 6   Post Processing Block Trip High Flag
    Uint32 PPB3TRIPLO : 1;  // 7   Post Processing Block Trip Low Flag
    Uint32 PPB3ZERO   : 1;  // 8   Post Processing Block Zero Crossing Flag
    Uint32 PPB4TRIPHI : 1;  // 9   Post Processing Block Trip High Flag
    Uint32 PPB4TRIPLO : 1;  // 10   Post Processing Block Trip Low Flag
    Uint32 PPB4ZERO   : 1;  // 11   Post Processing Block Zero Crossing Flag
    Uint32 rsvd1      : 20; // 31:12 Reserved
};

union ADCEVTCLR_REG
{
    Uint32 all;
    struct ADCEVTCLR_BITS bit;
};

struct ADCEVTSEL_BITS
{                           // bits description
    Uint32 PPB1TRIPHI : 1;  // 0 Post Processing Block 1 Trip High Event Enable
    Uint32 PPB1TRIPLO : 1;  // 1 Post Processing Block 1 Trip Low Event Enable
    Uint32 PPB1ZERO   : 1;  // 2 Post Processing Block 1 Zero Crossing Event Enable
    Uint32 PPB2TRIPHI : 1;  // 3 Post Processing Block 1 Trip High Event Enable
    Uint32 PPB2TRIPLO : 1;  // 4 Post Processing Block 1 Trip Low Event Enable
    Uint32 PPB2ZERO   : 1;  // 5 Post Processing Block 1 Zero Crossing Event Enable
    Uint32 PPB3TRIPHI : 1;  // 6 Post Processing Block 1 Trip High Event Enable
    Uint32 PPB3TRIPLO : 1;  // 7 Post Processing Block 1 Trip Low Event Enable
    Uint32 PPB3ZERO   : 1;  // 8 Post Processing Block 1 Zero Crossing Event Enable
    Uint32 PPB4TRIPHI : 1;  // 9 Post Processing Block 1 Trip High Event Enable
    Uint32 PPB4TRIPLO : 1;  // 10 Post Processing Block 1 Trip Low Event Enable
    Uint32 PPB4ZERO   : 1;  // 11 Post Processing Block 1 Zero Crossing Event Enable
    Uint32 rsvd       : 20; // 31:12 Reserved
};

union ADCEVTSEL_REG
{
    Uint32 all;
    struct ADCEVTSEL_BITS bit;
};

struct ADCEVTINTSEL_BITS
{                           // bits description
    Uint32 PPB1TRIPHI : 1;  // 0 Post Processing Block Trip High Interrupt Enable
    Uint32 PPB1TRIPLO : 1;  // 1 Post Processing Block Trip Low Interrupt Enable
    Uint32 PPB1ZERO   : 1;  // 2 Post Processing Block Zero Crossing Interrupt Enable
    Uint32 PPB2TRIPHI : 1;  // 3 Post Processing Block Trip High Interrupt Enable
    Uint32 PPB2TRIPLO : 1;  // 4 Post Processing Block Trip Low Interrupt Enable
    Uint32 PPB2ZERO   : 1;  // 5 Post Processing Block Zero Crossing Interrupt Enable
    Uint32 PPB3TRIPHI : 1;  // 6 Post Processing Block Trip High Interrupt Enable
    Uint32 PPB3TRIPLO : 1;  // 7 Post Processing Block Trip Low Interrupt Enable
    Uint32 PPB3ZERO   : 1;  // 8 Post Processing Block Zero Crossing Interrupt Enable
    Uint32 PPB4TRIPHI : 1;  // 9 Post Processing Block Trip High Interrupt Enable
    Uint32 PPB4TRIPLO : 1;  // 10 Post Processing Block Trip Low Interrupt Enable
    Uint32 PPB4ZERO   : 1;  // 11 Post Processing Block Zero Crossing Interrupt Enable
    Uint32 rsvd1      : 20; // 32:12	Reserved
};

union ADCEVTINTSEL_REG
{
    Uint32 all;
    struct ADCEVTINTSEL_BITS bit;
};

struct ADCCOUNTER_BITS
{                          // bits description
    Uint32 FREECOUNT : 12; // 11:0 ADC Free Running Counter Value
    Uint32 rsvd1     : 4;  // 15:12 Reserved
};

union ADCCOUNTER_REG
{
    Uint32 all;
    struct ADCCOUNTER_BITS bit;
};

struct ADCREV_BITS
{                    // bits description
    Uint32 TYPE : 8; // 7:0 ADC Type
    Uint32 REV  : 8; // 15:8 ADC Revision
};

union ADCREV_REG
{
    Uint32 all;
    struct ADCREV_BITS bit;
};

struct ADCPPB1CONFIG_BITS
{                           // bits description
    Uint32 CONFIG     : 5;  // 4:0 ADC Post Processing Block 1 Configuration
    Uint32 TWOSCOMPEN : 1;  // 5 ADC Post Processing Block 1 Two's Complement Enable
    Uint32 CBCEN      : 1;  // 6 Cycle By Cycle Enable
    Uint32 rsvd1      : 25; // 31:6 Reserved
};

union ADCPPB1CONFIG_REG
{
    Uint32 all;
    struct ADCPPB1CONFIG_BITS bit;
};

struct ADCPPB1STAMP_BITS
{                         // bits description
    Uint32 DLYSTAMP : 12; // 11:0 ADC Post Processing Block 1 Delay Time Stamp
    Uint32 rsvd1    : 20; // 31:12 Reserved
};

union ADCPPB1STAMP_REG
{
    Uint32 all;
    struct ADCPPB1STAMP_BITS bit;
};

struct ADCPPB1OFFREF_BITS
{                       // bits description
    Uint32 OFFREF : 16; // 15:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd   : 16; // 31:16 Reserved
};

union ADCPPB1OFFREF_REG
{
    Uint32 all;
    struct ADCPPB1OFFREF_BITS bit;
};

struct ADCPPB1TRIPHI_BITS
{                        // bits description
    Uint32 LIMITHI : 12; // 11:0 ADC Post Processing Block 1 Trip High Limit
    Uint32 HSIGN   : 1;  // 12 High Limit Sign Bit
    Uint32 rsvd1   : 19; // 31:13 Reserved
};

union ADCPPB1TRIPHI_REG
{
    Uint32 all;
    struct ADCPPB1TRIPHI_BITS bit;
};

struct ADCPPB1TRIPLO_BITS
{                         // bits description
    Uint32 LIMITLO  : 12; // 11:0 ADC Post Processing Block Trip Low Limit
    Uint32 LSIGN    : 1;  // 12 Low Limit Sign Bit
    Uint32 rsvd1    : 7;  // 19:13 Reserved
    Uint32 REQSTAMP : 12; // 31:20 ADC Post Processing Block Request Time Stamp
};

union ADCPPB1TRIPLO_REG
{
    Uint32 all;
    struct ADCPPB1TRIPLO_BITS bit;
};

struct ADCPPB1OFFCAL_BITS
{                       // bits description
    Uint32 OFFCAL : 10; // 9:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd1  : 22; // 31:10 Reserved
};

union ADCPPB1OFFCAL_REG
{
    Uint32 all;
    struct ADCPPB1OFFCAL_BITS bit;
};

struct ADCPPB2CONFIG_BITS
{
    Uint32 CONFIG     : 5;  // 4:0 ADC Post Processing Block 2 Configuration
    Uint32 TWOSCOMPEN : 1;  // 5 ADC Post Processing Block 2 Two's Complement Enable
    Uint32 CBCEN      : 1;  // 6 Cycle By Cycle Enable
    Uint32 rsvd1      : 25; // 31:6 Reserved
};

union ADCPPB2CONFIG_REG
{
    Uint32 all;
    struct ADCPPB2CONFIG_BITS bit;
};

struct ADCPPB2STAMP_BITS
{
    Uint32 DLYSTAMP : 12; // 11:0 ADC Post Processing Block 2 Delay Time Stamp
    Uint32 rsvd1    : 20; // 31:12 Reserved
};

union ADCPPB2STAMP_REG
{
    Uint32 all;
    struct ADCPPB2STAMP_BITS bit;
};

struct ADCPPB2OFFREF_BITS
{
    Uint32 OFFREF : 16; // 15:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd   : 16; // 31:16 Reserved
};

union ADCPPB2OFFREF_REG
{
    Uint32 all;
    struct ADCPPB2OFFREF_BITS bit;
};

struct ADCPPB2TRIPHI_BITS
{
    Uint32 LIMITHI : 12; // 11:0 ADC Post Processing Block 2 Trip High Limit
    Uint32 HSIGN   : 1;  // 12 High Limit Sign Bit
    Uint32 rsvd1   : 19; // 31:13 Reserved
};

union ADCPPB2TRIPHI_REG
{
    Uint32 all;
    struct ADCPPB2TRIPHI_BITS bit;
};

struct ADCPPB2TRIPLO_BITS
{
    Uint32 LIMITLO  : 12; // 11:0 ADC Post Processing Block Trip Low Limit
    Uint32 LSIGN    : 1;  // 12 Low Limit Sign Bit
    Uint32 rsvd1    : 7;  // 19:13 Reserved
    Uint32 REQSTAMP : 12; // 31:20 ADC Post Processing Block Request Time Stamp
};

union ADCPPB2TRIPLO_REG
{
    Uint32 all;
    struct ADCPPB2TRIPLO_BITS bit;
};

struct ADCPPB2OFFCAL_BITS
{                       // bits description
    Uint32 OFFCAL : 10; // 9:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd1  : 22; // 31:10 Reserved
};

union ADCPPB2OFFCAL_REG
{
    Uint32 all;
    struct ADCPPB2OFFCAL_BITS bit;
};

struct ADCPPB3CONFIG_BITS
{
    Uint32 CONFIG     : 5;  // 4:0 ADC Post Processing Block 3 Configuration
    Uint32 TWOSCOMPEN : 1;  // 5 ADC Post Processing Block 3 Two's Complement Enable
    Uint32 CBCEN      : 1;  // 6 Cycle By Cycle Enable
    Uint32 rsvd1      : 25; // 31:7 Reserved
};

union ADCPPB3CONFIG_REG
{
    Uint32 all;
    struct ADCPPB3CONFIG_BITS bit;
};

struct ADCPPB3STAMP_BITS
{
    Uint32 DLYSTAMP : 12; // 11:0 ADC Post Processing Block 3 Delay Time Stamp
    Uint32 rsvd1    : 20; // 31:12 Reserved
};

union ADCPPB3STAMP_REG
{
    Uint32 all;
    struct ADCPPB3STAMP_BITS bit;
};

struct ADCPPB3OFFREF_BITS
{
    Uint32 OFFREF : 16; // 15:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd   : 16; // 31:16 Reserved
};

union ADCPPB3OFFREF_REG
{
    Uint32 all;
    struct ADCPPB3OFFREF_BITS bit;
};

struct ADCPPB3TRIPHI_BITS
{
    Uint32 LIMITHI : 12; // 11:0 ADC Post Processing Block 3 Trip High Limit
    Uint32 HSIGN   : 1;  // 12 High Limit Sign Bit
    Uint32 rsvd1   : 19; // 31:13 Reserved
};

union ADCPPB3TRIPHI_REG
{
    Uint32 all;
    struct ADCPPB3TRIPHI_BITS bit;
};

struct ADCPPB3TRIPLO_BITS
{
    Uint32 LIMITLO  : 12; // 11:0 ADC Post Processing Block Trip Low Limit
    Uint32 LSIGN    : 1;  // 12 Low Limit Sign Bit
    Uint32 rsvd1    : 7;  // 19:13 Reserved
    Uint32 REQSTAMP : 12; // 31:20 ADC Post Processing Block Request Time Stamp
};

union ADCPPB3TRIPLO_REG
{
    Uint32 all;
    struct ADCPPB3TRIPLO_BITS bit;
};

struct ADCPPB3OFFCAL_BITS
{                       // bits description
    Uint32 OFFCAL : 10; // 9:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd1  : 22; // 31:10 Reserved
};

union ADCPPB3OFFCAL_REG
{
    Uint32 all;
    struct ADCPPB3OFFCAL_BITS bit;
};

struct ADCPPB4CONFIG_BITS
{
    Uint32 CONFIG     : 5;  // 4:0 ADC Post Processing Block 4 Configuration
    Uint32 TWOSCOMPEN : 1;  // 5 ADC Post Processing Block 4 Two's Complement Enable
    Uint32 CBCEN      : 1;  // 6 Cycle By Cycle Enable
    Uint32 rsvd1      : 25; // 31:7 Reserved
};

union ADCPPB4CONFIG_REG
{
    Uint32 all;
    struct ADCPPB4CONFIG_BITS bit;
};

struct ADCPPB4STAMP_BITS
{
    Uint32 DLYSTAMP : 12; // 11:0 ADC Post Processing Block 4 Delay Time Stamp
    Uint32 rsvd1    : 20; // 31:12 Reserved
};

union ADCPPB4STAMP_REG
{
    Uint32 all;
    struct ADCPPB4STAMP_BITS bit;
};

struct ADCPPB4OFFREF_BITS
{
    Uint32 OFFREF : 16; // 15:0 ADC Post Processing Block 4 Offset Correction
    Uint32 rsvd   : 16; // 31:16 Reserved
};

union ADCPPB4OFFREF_REG
{
    Uint32 all;
    struct ADCPPB4OFFREF_BITS bit;
};

struct ADCPPB4TRIPHI_BITS
{
    Uint32 LIMITHI : 12; // 11:0 ADC Post Processing Block 4 Trip High Limit
    Uint32 HSIGN   : 1;  // 12 High Limit Sign Bit
    Uint32 rsvd1   : 19; // 31:13 Reserved
};

union ADCPPB4TRIPHI_REG
{
    Uint32 all;
    struct ADCPPB4TRIPHI_BITS bit;
};

struct ADCPPB4TRIPLO_BITS
{
    Uint32 LIMITLO  : 12; // 11:0 ADC Post Processing Block Trip Low Limit
    Uint32 LSIGN    : 1;  // 12 Low Limit Sign Bit
    Uint32 rsvd1    : 7;  // 19:13 Reserved
    Uint32 REQSTAMP : 12; // 31:20 ADC Post Processing Block Request Time Stamp
};

union ADCPPB4TRIPLO_REG
{
    Uint32 all;
    struct ADCPPB4TRIPLO_BITS bit;
};

struct ADCPPB4OFFCAL_BITS
{                       // bits description
    Uint32 OFFCAL : 10; // 9:0 ADC Post Processing Block Offset Correction
    Uint32 rsvd1  : 22; // 31:10 Reserved
};

union ADCPPB4OFFCAL_REG
{
    Uint32 all;
    struct ADCPPB4OFFCAL_BITS bit;
};

struct ADCSOCFRC_BITS
{                      // bits description
    Uint32 SOC0  : 1;  // 0 SOC0 Force Start of Conversion Bit
    Uint32 SOC1  : 1;  // 1 SOC1 Force Start of Conversion Bit
    Uint32 SOC2  : 1;  // 2 SOC2 Force Start of Conversion Bit
    Uint32 SOC3  : 1;  // 3 SOC3 Force Start of Conversion Bit
    Uint32 SOC4  : 1;  // 4 SOC4 Force Start of Conversion Bit
    Uint32 SOC5  : 1;  // 5 SOC5 Force Start of Conversion Bit
    Uint32 SOC6  : 1;  // 6 SOC6 Force Start of Conversion Bit
    Uint32 SOC7  : 1;  // 7 SOC7 Force Start of Conversion Bit
    Uint32 SOC8  : 1;  // 8 SOC8 Force Start of Conversion Bit
    Uint32 SOC9  : 1;  // 9 SOC9 Force Start of Conversion Bit
    Uint32 SOC10 : 1;  // 10 SOC10 Force Start of Conversion Bit
    Uint32 SOC11 : 1;  // 11 SOC11 Force Start of Conversion Bit
    Uint32 SOC12 : 1;  // 12 SOC12 Force Start of Conversion Bit
    Uint32 SOC13 : 1;  // 13 SOC13 Force Start of Conversion Bit
    Uint32 SOC14 : 1;  // 14 SOC14 Force Start of Conversion Bit
    Uint32 SOC15 : 1;  // 15 SOC15 Force Start of Conversion Bit
    Uint32 SOC16 : 1;  // 16 SOC16 Force Start of Conversion Bit
    Uint32 SOC17 : 1;  // 17 SOC17 Force Start of Conversion Bit
    Uint32 SOC18 : 1;  // 18 SOC18 Force Start of Conversion Bit
    Uint32 SOC19 : 1;  // 19 SOC19 Force Start of Conversion Bit
    Uint32 rsvd  : 12; // 20:31 Reserved
};

union ADCSOCFRC_REG
{
    Uint32 all;
    struct ADCSOCFRC_BITS bit;
};

struct ADCSOCFLG_BITS
{                      // bits description
    Uint32 SOC0  : 1;  // 0 SOC0 Start of Conversion Flag
    Uint32 SOC1  : 1;  // 1 SOC1 Start of Conversion Flag
    Uint32 SOC2  : 1;  // 2 SOC2 Start of Conversion Flag
    Uint32 SOC3  : 1;  // 3 SOC3 Start of Conversion Flag
    Uint32 SOC4  : 1;  // 4 SOC4 Start of Conversion Flag
    Uint32 SOC5  : 1;  // 5 SOC5 Start of Conversion Flag
    Uint32 SOC6  : 1;  // 6 SOC6 Start of Conversion Flag
    Uint32 SOC7  : 1;  // 7 SOC7 Start of Conversion Flag
    Uint32 SOC8  : 1;  // 8 SOC8 Start of Conversion Flag
    Uint32 SOC9  : 1;  // 9 SOC9 Start of Conversion Flag
    Uint32 SOC10 : 1;  // 10 SOC10 Start of Conversion Flag
    Uint32 SOC11 : 1;  // 11 SOC11 Start of Conversion Flag
    Uint32 SOC12 : 1;  // 12 SOC12 Start of Conversion Flag
    Uint32 SOC13 : 1;  // 13 SOC13 Start of Conversion Flag
    Uint32 SOC14 : 1;  // 14 SOC14 Start of Conversion Flag
    Uint32 SOC15 : 1;  // 15 SOC15 Start of Conversion Flag
    Uint32 SOC16 : 1;  // 16 SOC16 Start of Conversion Flag
    Uint32 SOC17 : 1;  // 17 SOC17 Start of Conversion Flag
    Uint32 SOC18 : 1;  // 18 SOC18 Start of Conversion Flag
    Uint32 SOC19 : 1;  // 19 SOC19 Start of Conversion Flag
    Uint32 rsvd  : 12; // 20:31 Reserved
};

union ADCSOCFLG_REG
{
    Uint32 all;
    struct ADCSOCFLG_BITS bit;
};

struct ADCSOCOVF_BITS
{                      // bits description
    Uint32 SOC0  : 1;  // 0 SOC0 Start of Conversion Overflow Flag
    Uint32 SOC1  : 1;  // 1 SOC1 Start of Conversion Overflow Flag
    Uint32 SOC2  : 1;  // 2 SOC2 Start of Conversion Overflow Flag
    Uint32 SOC3  : 1;  // 3 SOC3 Start of Conversion Overflow Flag
    Uint32 SOC4  : 1;  // 4 SOC4 Start of Conversion Overflow Flag
    Uint32 SOC5  : 1;  // 5 SOC5 Start of Conversion Overflow Flag
    Uint32 SOC6  : 1;  // 6 SOC6 Start of Conversion Overflow Flag
    Uint32 SOC7  : 1;  // 7 SOC7 Start of Conversion Overflow Flag
    Uint32 SOC8  : 1;  // 8 SOC8 Start of Conversion Overflow Flag
    Uint32 SOC9  : 1;  // 9 SOC9 Start of Conversion Overflow Flag
    Uint32 SOC10 : 1;  // 10 SOC10 Start of Conversion Overflow Flag
    Uint32 SOC11 : 1;  // 11 SOC11 Start of Conversion Overflow Flag
    Uint32 SOC12 : 1;  // 12 SOC12 Start of Conversion Overflow Flag
    Uint32 SOC13 : 1;  // 13 SOC13 Start of Conversion Overflow Flag
    Uint32 SOC14 : 1;  // 14 SOC14 Start of Conversion Overflow Flag
    Uint32 SOC15 : 1;  // 15 SOC15 Start of Conversion Overflow Flag
    Uint32 SOC16 : 1;  // 12 SOC16 Start of Conversion Overflow Flag
    Uint32 SOC17 : 1;  // 13 SOC17 Start of Conversion Overflow Flag
    Uint32 SOC18 : 1;  // 14 SOC18 Start of Conversion Overflow Flag
    Uint32 SOC19 : 1;  // 15 SOC19 Start of Conversion Overflow Flag
    Uint32 rsvd  : 12; // 20:31 Reserved
};

union ADCSOCOVF_REG
{
    Uint32 all;
    struct ADCSOCOVF_BITS bit;
};

struct ADCSOCOVFCLR_BITS
{                      // bits description
    Uint32 SOC0  : 1;  // 0 SOC0 Clear Start of Conversion Overflow Bit
    Uint32 SOC1  : 1;  // 1 SOC1 Clear Start of Conversion Overflow Bit
    Uint32 SOC2  : 1;  // 2 SOC2 Clear Start of Conversion Overflow Bit
    Uint32 SOC3  : 1;  // 3 SOC3 Clear Start of Conversion Overflow Bit
    Uint32 SOC4  : 1;  // 4 SOC4 Clear Start of Conversion Overflow Bit
    Uint32 SOC5  : 1;  // 5 SOC5 Clear Start of Conversion Overflow Bit
    Uint32 SOC6  : 1;  // 6 SOC6 Clear Start of Conversion Overflow Bit
    Uint32 SOC7  : 1;  // 7 SOC7 Clear Start of Conversion Overflow Bit
    Uint32 SOC8  : 1;  // 8 SOC8 Clear Start of Conversion Overflow Bit
    Uint32 SOC9  : 1;  // 9 SOC9 Clear Start of Conversion Overflow Bit
    Uint32 SOC10 : 1;  // 10 SOC10 Clear Start of Conversion Overflow Bit
    Uint32 SOC11 : 1;  // 11 SOC11 Clear Start of Conversion Overflow Bit
    Uint32 SOC12 : 1;  // 12 SOC12 Clear Start of Conversion Overflow Bit
    Uint32 SOC13 : 1;  // 13 SOC13 Clear Start of Conversion Overflow Bit
    Uint32 SOC14 : 1;  // 14 SOC14 Clear Start of Conversion Overflow Bit
    Uint32 SOC15 : 1;  // 15 SOC15 Clear Start of Conversion Overflow Bit
    Uint32 SOC16 : 1;  // 12 SOC16 Clear Start of Conversion Overflow Bit
    Uint32 SOC17 : 1;  // 13 SOC17 Clear Start of Conversion Overflow Bit
    Uint32 SOC18 : 1;  // 14 SOC18 Clear Start of Conversion Overflow Bit
    Uint32 SOC19 : 1;  // 15 SOC19 Clear Start of Conversion Overflow Bit
    Uint32 rsvd  : 12; // 20:31 Reserved
};

union ADCSOCOVFCLR_REG
{
    Uint32 all;
    struct ADCSOCOVFCLR_BITS bit;
};

struct ADCINTCYCLE_BITS
{                      // bits description
    Uint32 DELAY : 16; // 15:0 ADC Interrupt Pulse Positiont
    Uint32 rsvd  : 16; // 31:16 Reserved
};

union ADCINTCYCLE_REG
{
    Uint32 all;
    struct ADCINTCYCLE_BITS bit;
};

struct ADC_REGS
{
    union ADCCTL_REG ADCCTL;               // ADC Control Register
    union ADCINTFLG_REG ADCINTFLG;         // ADC Interrupt Flag Register
    union ADCINTSEL_REG ADCINTSEL;         // ADC Interrupt Enable/Disable Register
    union ADCINTFLGCLR_REG ADCINTFLGCLR;   // ADC Interrupt Flag Clear Register
    union ADCINTOVF_REG ADCINTOVF;         // ADC Interrupt Overflow Register
    union ADCINTOVFCLR_REG ADCINTOVFCLR;   // ADC Interrupt Overflow Clear Register
    union ADCSOC0CTL_REG ADCSOC0CTL;       // ADC SOC0 Control Register
    union ADCSOC1CTL_REG ADCSOC1CTL;       // ADC SOC1 Control Register
    union ADCSOC2CTL_REG ADCSOC2CTL;       // ADC SOC2 Control Register
    union ADCSOC3CTL_REG ADCSOC3CTL;       // ADC SOC3 Control Register
    union ADCSOC4CTL_REG ADCSOC4CTL;       // ADC SOC4 Control Register
    union ADCSOC5CTL_REG ADCSOC5CTL;       // ADC SOC5 Control Register
    union ADCSOC6CTL_REG ADCSOC6CTL;       // ADC SOC6 Control Register
    union ADCSOC7CTL_REG ADCSOC7CTL;       // ADC SOC7 Control Register
    union ADCSOC8CTL_REG ADCSOC8CTL;       // ADC SOC8 Control Register
    union ADCSOC9CTL_REG ADCSOC9CTL;       // ADC SOC9 Control Register
    union ADCSOC10CTL_REG ADCSOC10CTL;     // ADC SOC10 Control Register
    union ADCSOC11CTL_REG ADCSOC11CTL;     // ADC SOC11 Control Register
    union ADCSOC12CTL_REG ADCSOC12CTL;     // ADC SOC12 Control Register
    union ADCSOC13CTL_REG ADCSOC13CTL;     // ADC SOC13 Control Register
    union ADCSOC14CTL_REG ADCSOC14CTL;     // ADC SOC14 Control Register
    union ADCSOC15CTL_REG ADCSOC15CTL;     // ADC SOC15 Control Register
    union ADCSOC16CTL_REG ADCSOC16CTL;     // ADC SOC16 Control Register
    union ADCSOC17CTL_REG ADCSOC17CTL;     // ADC SOC17 Control Register
    union ADCSOC18CTL_REG ADCSOC18CTL;     // ADC SOC18 Control Register
    union ADCSOC19CTL_REG ADCSOC19CTL;     // ADC SOC19 Control Register
    union ADCEVTSTAT_REG ADCEVTSTAT;       // ADC Event Status Register
    union ADCEVTCLR_REG ADCEVTCLR;         // ADC Event Clear Register
    union ADCEVTSEL_REG ADCEVTSEL;         // ADC Event Selection Register
    union ADCEVTINTSEL_REG ADCEVTINTSEL;   // ADC Event Interrupt Selection Register
    union ADCCOUNTER_REG ADCCOUNTER;       // ADC Counter Register
    union ADCREV_REG ADCREV;               // ADC Revision Register
    union ADCPPB1CONFIG_REG ADCPPB1CONFIG; // ADC Post Processing Block 1 Configuration Register
    union ADCPPB1STAMP_REG ADCPPB1STAMP;   // ADC Post Processing Block 1 Timestamp Register
    union ADCPPB1OFFREF_REG ADCPPB1OFFREF; // ADC PPB1 Offset Reference Register
    union ADCPPB1TRIPHI_REG ADCPPB1TRIPHI; // ADC PPB1 Trip High Register
    union ADCPPB1TRIPLO_REG ADCPPB1TRIPLO; // ADC PPB1 Trip Low/Trigger Time Stamp Register
    union ADCPPB1OFFCAL_REG ADCPPB1OFFCAL; // ADC PPB1 Offset Calibration Register
    union ADCPPB2CONFIG_REG ADCPPB2CONFIG; // ADC Post Processing Block 2 Configuration Register
    union ADCPPB2STAMP_REG ADCPPB2STAMP;   // ADC Post Processing Block 2 Timestamp Register
    union ADCPPB2OFFREF_REG ADCPPB2OFFREF; // ADC PPB2 Offset Reference Register
    union ADCPPB2TRIPHI_REG ADCPPB2TRIPHI; // ADC PPB2 Trip High Register
    union ADCPPB2TRIPLO_REG ADCPPB2TRIPLO; // ADC PPB2 Trip Low/Trigger Time Stamp Register
    union ADCPPB2OFFCAL_REG ADCPPB2OFFCAL; // ADC PPB2 Offset Calibration Register
    union ADCPPB3CONFIG_REG ADCPPB3CONFIG; // ADC Post Processing Block 3 Configuration Register
    union ADCPPB3STAMP_REG ADCPPB3STAMP;   // ADC Post Processing Block 3 Timestamp Register
    union ADCPPB3OFFREF_REG ADCPPB3OFFREF; // ADC PPB3 Offset Reference Register
    union ADCPPB3TRIPHI_REG ADCPPB3TRIPHI; // ADC PPB3 Trip High Register
    union ADCPPB3TRIPLO_REG ADCPPB3TRIPLO; // ADC PPB3 Trip Low/Trigger Time Stamp Register
    union ADCPPB3OFFCAL_REG ADCPPB3OFFCAL; // ADC PPB3 Offset Calibration Register
    union ADCPPB4CONFIG_REG ADCPPB4CONFIG; // ADC Post Processing Block 4 Configuration Register
    union ADCPPB4STAMP_REG ADCPPB4STAMP;   // ADC Post Processing Block 4 Timestamp Register
    union ADCPPB4OFFREF_REG ADCPPB4OFFREF; // ADC PPB4 Offset Reference Register
    union ADCPPB4TRIPHI_REG ADCPPB4TRIPHI; // ADC PPB4 Trip High Register
    union ADCPPB4TRIPLO_REG ADCPPB4TRIPLO; // ADC PPB4 Trip Low/Trigger Time Stamp Register
    union ADCPPB4OFFCAL_REG ADCPPB4OFFCAL; // ADC PPB4 Offset Calibration Register
    union ADCSOCFRC_REG ADCSOCFRC;         // ADC SOC Force Register
    union ADCSOCFLG_REG ADCSOCFLG;         // ADC SOC Force Register
    union ADCSOCOVF_REG ADCSOCOVF;         // ADC SOC Force Register
    union ADCSOCOVFCLR_REG ADCSOCOVFCLR;   // ADC SOC Force Register
    union ADCINTCYCLE_REG ADCINTCYCLE;     // ADC Early Interrupt Generation Cycle
};

struct ADCRESULT0_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT0_REG
{
    Uint32 all;
    struct ADCRESULT0_BITS bit;
};

struct ADCRESULT1_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT1_REG
{
    Uint32 all;
    struct ADCRESULT1_BITS bit;
};

struct ADCRESULT2_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT2_REG
{
    Uint32 all;
    struct ADCRESULT2_BITS bit;
};

struct ADCRESULT3_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT3_REG
{
    Uint32 all;
    struct ADCRESULT3_BITS bit;
};

struct ADCRESULT4_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT4_REG
{
    Uint32 all;
    struct ADCRESULT4_BITS bit;
};

struct ADCRESULT5_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT5_REG
{
    Uint32 all;
    struct ADCRESULT5_BITS bit;
};

struct ADCRESULT6_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT6_REG
{
    Uint32 all;
    struct ADCRESULT6_BITS bit;
};

struct ADCRESULT7_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // Reserved
};

union ADCRESULT7_REG
{
    Uint32 all;
    struct ADCRESULT7_BITS bit;
};

struct ADCRESULT8_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT8_REG
{
    Uint32 all;
    struct ADCRESULT8_BITS bit;
};

struct ADCRESULT9_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT9_REG
{
    Uint32 all;
    struct ADCRESULT9_BITS bit;
};

struct ADCRESULT10_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT10_REG
{
    Uint32 all;
    struct ADCRESULT10_BITS bit;
};

struct ADCRESULT11_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT11_REG
{
    Uint32 all;
    struct ADCRESULT11_BITS bit;
};

struct ADCRESULT12_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT12_REG
{
    Uint32 all;
    struct ADCRESULT12_BITS bit;
};

struct ADCRESULT13_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT13_REG
{
    Uint32 all;
    struct ADCRESULT13_BITS bit;
};

struct ADCRESULT14_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT14_REG
{
    Uint32 all;
    struct ADCRESULT14_BITS bit;
};

struct ADCRESULT15_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT15_REG
{
    Uint32 all;
    struct ADCRESULT15_BITS bit;
};

struct ADCRESULT16_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT16_REG
{
    Uint32 all;
    struct ADCRESULT16_BITS bit;
};

struct ADCRESULT17_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT17_REG
{
    Uint32 all;
    struct ADCRESULT17_BITS bit;
};

struct ADCRESULT18_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT18_REG
{
    Uint32 all;
    struct ADCRESULT18_BITS bit;
};

struct ADCRESULT19_BITS
{
    Uint32 RESULT : 12; // ADC Result
    Uint32 rsvd1  : 20; // 31:12 Reserved
};

union ADCRESULT19_REG
{
    Uint32 all;
    struct ADCRESULT19_BITS bit;
};

struct ADCPPB1RESULT_BITS
{                           // bits description
    Uint32 PPB1RESULT : 12; // 11:0 ADC Post Processing Block 1 Result
    Uint32 SIGN       : 20; // 31:12 Sign Extended Bits
};

union ADCPPB1RESULT_REG
{
    Uint32 all;
    struct ADCPPB1RESULT_BITS bit;
};

struct ADCPPB2RESULT_BITS
{                           // bits description
    Uint32 PPB2RESULT : 12; // 11:0 ADC Post Processing Block 2 Result
    Uint32 SIGN       : 20; // 31:12 Sign Extended Bits
};

union ADCPPB2RESULT_REG
{
    Uint32 all;
    struct ADCPPB2RESULT_BITS bit;
};

struct ADCPPB3RESULT_BITS
{                           // bits description
    Uint32 PPB3RESULT : 12; // 11:0 ADC Post Processing Block 3 Result
    Uint32 SIGN       : 20; // 31:12 Sign Extended Bits
};

union ADCPPB3RESULT_REG
{
    Uint32 all;
    struct ADCPPB3RESULT_BITS bit;
};

struct ADCPPB4RESULT_BITS
{                           // bits description
    Uint32 PPB4RESULT : 12; // 11:0 ADC Post Processing Block 4 Result
    Uint32 SIGN       : 20; // 31:12 Sign Extended Bits
};

union ADCPPB4RESULT_REG
{
    Uint32 all;
    struct ADCPPB4RESULT_BITS bit;
};

struct ADC_RESULT_REGS
{
    union ADCRESULT0_REG ADCRESULT0;       // ADC Result 0 Register
    union ADCRESULT1_REG ADCRESULT1;       // ADC Result 1 Register
    union ADCRESULT2_REG ADCRESULT2;       // ADC Result 2 Register
    union ADCRESULT3_REG ADCRESULT3;       // ADC Result 3 Register
    union ADCRESULT4_REG ADCRESULT4;       // ADC Result 4 Register
    union ADCRESULT5_REG ADCRESULT5;       // ADC Result 5 Register
    union ADCRESULT6_REG ADCRESULT6;       // ADC Result 6 Register
    union ADCRESULT7_REG ADCRESULT7;       // ADC Result 7 Register
    union ADCRESULT8_REG ADCRESULT8;       // ADC Result 8 Register
    union ADCRESULT9_REG ADCRESULT9;       // ADC Result 9 Register
    union ADCRESULT10_REG ADCRESULT10;     // ADC Result 10 Register
    union ADCRESULT11_REG ADCRESULT11;     // ADC Result 11 Register
    union ADCRESULT12_REG ADCRESULT12;     // ADC Result 12 Register
    union ADCRESULT13_REG ADCRESULT13;     // ADC Result 13 Register
    union ADCRESULT14_REG ADCRESULT14;     // ADC Result 14 Register
    union ADCRESULT15_REG ADCRESULT15;     // ADC Result 15 Register
    union ADCRESULT16_REG ADCRESULT16;     // ADC Result 16 Register
    union ADCRESULT17_REG ADCRESULT17;     // ADC Result 17 Register
    union ADCRESULT18_REG ADCRESULT18;     // ADC Result 18 Register
    union ADCRESULT19_REG ADCRESULT19;     // ADC Result 19 Register
    union ADCPPB1RESULT_REG ADCPPB1RESULT; // ADC Post Processing Block1 Result Register
    union ADCPPB2RESULT_REG ADCPPB2RESULT; // ADC Post Processing Block2 Result Register
    union ADCPPB3RESULT_REG ADCPPB3RESULT; // ADC Post Processing Block3 Result Register
    union ADCPPB4RESULT_REG ADCPPB4RESULT; // ADC Post Processing Block4 Result Register
};

//---------------------------------------------------------------------------
// ADC External References & Function Declarations:
//

extern volatile struct ADC_REGS AdcaRegs;
extern volatile struct ADC_RESULT_REGS AdcaResultRegs;

extern volatile struct ADC_REGS AdcbRegs;
extern volatile struct ADC_RESULT_REGS AdcbResultRegs;

extern volatile struct ADC_REGS AdccRegs;
extern volatile struct ADC_RESULT_REGS AdccResultRegs;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif
