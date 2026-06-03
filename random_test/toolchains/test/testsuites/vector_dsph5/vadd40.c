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
	dspvi32 vla = { 3,4,0,8 };
	dspvi32 vlb = { 1,2,0,6 };
	vla += vlb;
	dspvi32 vld = vadd_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 8, 4);
#endif
	return 0;
}
