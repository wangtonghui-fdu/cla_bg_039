#include "timer/common.h"
#include "timer/cputimer.h"

#define CPU_EXP_START_MASK (0x7)
#define CPU_EXP_START_OFST (15)


void set_exp_start(void);
void init_cpu_timers(void);
u32 get_timestamp(void);
void init_timer(void);
