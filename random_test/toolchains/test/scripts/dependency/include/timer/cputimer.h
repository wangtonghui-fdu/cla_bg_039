#ifndef QX_CPUTIMER_H
#define QX_CPUTIMER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_cputimer.h"
#include "define.h"

// INFO: LoadCount2 register is no used, No define by default

typedef enum
{
    FREE_RUNNING = 0U,
    USER_DEFINED = 1U,
} timer_mode_type;

STATIC_INLINE void CPUTimer_enableTimer(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.enable = 1;
}

STATIC_INLINE void CPUTimer_disableTimer(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.enable = 0;
}

STATIC_INLINE void CPUTimer_setMode(uint32_t base, timer_mode_type mode)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.mode = mode;
}

STATIC_INLINE void CPUTimer_enableInterrupt(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.int_mask = 0;
}

STATIC_INLINE void CPUTimer_disableInterrupt(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.int_mask = 1;
}

STATIC_INLINE void CPUTimer_clearInterrupt(uint32_t base)
{
    u32 TimerEOI = ((volatile struct CPUTIMER_REGS *)base)->EOI_bit.EOI;
}

STATIC_INLINE void CPUTimer_clearALLInterrupt(void)
{
    u32 TimerALLEOI = CpuTimerSysRegs.EOI_bit.EOI;
}

STATIC_INLINE void CPUTimer_reload(uint32_t base, u32 time_value)
{
    ((volatile struct CPUTIMER_REGS *)base)->LoadCount = time_value;
}

STATIC_INLINE void CPUTimer_enablePwm(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.pwm = 1;
}

STATIC_INLINE void CPUTimer_disablePwm(uint32_t base)
{
    ((volatile struct CPUTIMER_REGS *)base)->ControlReg_bit.pwm = 0;
}

STATIC_INLINE void CPUTimer_setPwmHighPeriod(struct TIMER_NLOADCOUNT2_REGS *timerPwmReg, u32 time_value)
{
    timerPwmReg->LoadCount2 = time_value;
}

void CPUTimer_initTimer(uint32_t base, timer_mode_type mode, u32 value);
void CPUTimer_initPwm(
    uint32_t base, struct TIMER_NLOADCOUNT2_REGS *timerPwmReg, timer_mode_type mode, u32 high_period, u32 low_period);

#endif
