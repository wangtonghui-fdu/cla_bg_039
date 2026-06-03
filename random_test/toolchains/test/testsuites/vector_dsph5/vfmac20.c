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
	dspvi16 vla = { 4,4,0,0,4,4,0,0 };
	dspvi16 vlb = { 2,2,0,0,2,2,0,0 };
    i16x8_t vlc = { 1,1,0,0,1,1,0,0 };
	vlc = vfmac_s(vlc,vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 8, 4);
#endif
	return 0;
}
