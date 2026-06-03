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

dspvi32 dspvi32_2add(dspvi32 a, dspvi32 b)
{
	return a + b;
}

dspvi32 dspvi32_3add(dspvi32 a, dspvi32 b, dspvi32 c)
{
	return a + b + c;
}

int main()
{
	dspvi32 vla = { 3,4,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   5,6,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,7,8 };
	dspvi32 vlb = { 1,2,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   3,4,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,5,6 };
	dspvi32 vlc;
	vla += vlb;
	dspvi32 vld = dspvi32_2add(vla, vlb);
	vld += vlb;
	dspvi32 vle = dspvi32_3add(vla, vlb, vld);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 128, 4);
	dbg_output(&vle, 128, 4);
#endif
	return 0;
}
