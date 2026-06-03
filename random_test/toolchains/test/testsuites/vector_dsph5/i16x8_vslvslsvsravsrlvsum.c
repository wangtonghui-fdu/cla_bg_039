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
    i16x8_t i16x8_t_dst = { 0 };
	dspvi16 vla = { 3,2,0,8,0,0,0,0 };
	dspvi16 vlb = { 1,3,0,6,0,0,0,0 };
	i16x8_t_dst = vsl_s(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i16x8_t_dst, 8, 4);
#endif
    i16x8_t_dst = vsls_s(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i16x8_t_dst, 8, 4);
#endif
    i16x8_t_dst = vsra_s(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i16x8_t_dst, 8, 4);
#endif
    i16x8_t_dst = vsrl_s(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i16x8_t_dst, 8, 4);
#endif
    i16x8_t_dst = vsum_s(vla);
#ifdef DSP_VALIDATION
	dbg_output(&i16x8_t_dst, 8, 4);
#endif
	return 0;
}
