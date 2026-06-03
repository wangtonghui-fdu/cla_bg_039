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
    i32x4_t i32x4_t_dst = { 16 };
	dspvi32 vla = { 3,2,0,2 };
	dspvi32 vlb = { 38,2,0,3 };
	i32x4_t_dst = vsls_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i32x4_t_dst, 8, 4);
#endif
	return 0;
}
