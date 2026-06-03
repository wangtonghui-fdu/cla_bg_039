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
    //Rs
	//dspvi32 vla = { 0x999999,0x999999,0,0 };
	dspvi32 vla = { 0x10000,0x10000,0,0 };
    //Rt
	dspvi32 vlb = { 0x10000,0x10000,2,0 };
	i32x4_t vlc = vcmuli_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 128, 4);
#endif
	return 0;
}