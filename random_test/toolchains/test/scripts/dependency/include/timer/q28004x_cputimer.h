#ifndef Q28004X_CPUTIMER_H
#define Q28004X_CPUTIMER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_types.h"

struct CPUTIMER_REGS
{
    Uint32 LoadCount;    /* offset: 0x00 */
    Uint32 CurrentValue; /* offset: 0x04 */

    union /* offset: 0x08 */
    {
        Uint32 ControlReg;
        struct
        {
            Uint32 enable   : 1;  /* [0] */
            Uint32 mode     : 1;  /* [1] */
            Uint32 int_mask : 1;  /* [2] */
            Uint32 pwm      : 1;  /* [3] */
            Uint32 rsvd     : 28; /* [31:4]*/
        } ControlReg_bit;
    };

    union /* offset: 0x0C */
    {
        Uint32 EOI;
        struct
        {
            Uint32 EOI  : 1;  /* [0] */
            Uint32 rsvd : 31; /* [31:1] */
        } EOI_bit;
    };

    union /* offset: 0x10 */
    {
        Uint32 IntStatus;
        struct
        {
            Uint32 int_status : 1;  /* [0] */
            Uint32 rsvd       : 31; /* [31:1] */
        } IntStatus_bit;
    };
};

struct CPUTIMER_SYS_REGS
{
    union /* offset: 0x00 */
    {
        Uint32 IntStatus;
        struct
        {
            Uint32 IntStatus : 3;  /* [2:0] */
            Uint32 rsvd      : 29; /* [31:3] */
        } IntStatus_bit;
    };

    union /* offset: 0x04 */
    {
        Uint32 EOI;
        struct
        {
            Uint32 EOI  : 3;  /* [2:0] */
            Uint32 rsvd : 29; /* [31:3] */
        } EOI_bit;
    };

    union /* offset: 0x08 */
    {
        Uint32 RawIntStatus;
        struct
        {
            Uint32 RawIntStatus : 3;  /* [2:0] */
            Uint32 rsvd         : 29; /* [31:3] */
        } RawIntStatus_bit;
    };
    Uint32 CompVersion; /* offset: 0x0C */
};

struct TIMER_NLOADCOUNT2_REGS
{
    Uint32 LoadCount2;
};

extern volatile struct CPUTIMER_REGS CpuTimer0Regs;
extern volatile struct CPUTIMER_REGS CpuTimer1Regs;
extern volatile struct CPUTIMER_REGS CpuTimer2Regs;
extern volatile struct TIMER_NLOADCOUNT2_REGS CpuTimer0PwmRegs;
extern volatile struct TIMER_NLOADCOUNT2_REGS CpuTimer1PwmRegs;
extern volatile struct TIMER_NLOADCOUNT2_REGS CpuTimer2PwmRegs;
extern volatile struct CPUTIMER_SYS_REGS CpuTimerSysRegs;

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif
