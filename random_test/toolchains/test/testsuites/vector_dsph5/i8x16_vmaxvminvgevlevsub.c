#include "swift_math.h"
#ifdef CROSS_VALIDATION
#include <stdlib.h>
#include<stdio.h>
#define TEST_OUT(a) printf("%d\n", a);
#else
#define TEST_OUT(a)
#endif

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

int main()
{
    i8x16_t i8x16_t_dst = { 0 };
	dspvi8 vla = { 3,2,0,8,0,0,0,0,0,0,0,0,0,0,0,0 };
	dspvi8 vlb = { 1,3,0,6,0,0,0,0,0,0,0,0,0,0,0,0 };
	i8x16_t_dst = vmax_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i8x16_t_dst, 8, 4);
#endif
    i8x16_t_dst = vmin_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i8x16_t_dst, 8, 4);
#endif
    i8x16_t_dst = vge_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i8x16_t_dst, 8, 4);
#endif
    i8x16_t_dst = vle_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i8x16_t_dst, 8, 4);
#endif
    i8x16_t_dst = vsub_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i8x16_t_dst, 8, 4);
#endif
	return 0;
}
