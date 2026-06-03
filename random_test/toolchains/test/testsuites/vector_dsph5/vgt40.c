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
	dspvi32 vla = { 3,2,0,8 };
	dspvi32 vlb = { 1,3,0,6 };
	dspvi32 vlc = vgt_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 8, 4);
#endif
//     i32x4_t_dst = veq_i(vla, vlb);
// #ifdef DSP_VALIDATION
// 	dbg_output(&i32x4_t_dst, 8, 4);
// #endif
	return 0;
}
