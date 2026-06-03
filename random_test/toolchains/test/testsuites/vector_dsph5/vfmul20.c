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
	dspvi16 vla = { 0x999,4,0,0,0x99,4,0,0 };
	dspvi16 vlb = { 0x100,2,0,0,0x10,2,0,0 };
	i16x8_t vlc = vfmul_s(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 8, 4);
#endif
	return 0;
}
