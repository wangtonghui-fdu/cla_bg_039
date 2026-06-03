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
dspvi32 dspvi32_2sub(dspvi32 a, dspvi32 b) {
	return a - b;
}
dspvi32 dspvi32_3sub(dspvi32 a, dspvi32 b, dspvi32 c) {
	return a - b - c;
}

int main()
{
	volatile dspvi32 vla = { 3,4,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					5,6,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,7,8 };
	volatile dspvi32 vlb = { 1,2,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					3,4,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,5,6 };
	volatile dspvi32 vlc = { 0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0 };
	vla -= vlb;
	volatile dspvi32 vld = dspvi32_2sub(vla, vlb);
	volatile dspvi32 vlh = dspvi32_3sub(vla, vlb, vlc);
	vlc -= vld;
	vlc -= vlh;
#ifdef DSP_VALIDATION
	dbg_output(&vld, 128, 4);
	dbg_output(&vlh, 128, 4);
	dbg_output(&vlc, 128, 4);
#endif
	return 0;
}
