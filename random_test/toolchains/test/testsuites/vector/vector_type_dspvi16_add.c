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

dspvi16 dspvi16_2add(dspvi16 a, dspvi16 b)
{
	return a + b;
}

dspvi16 dspvi16_3add(dspvi16 a, dspvi16 b, dspvi16 c)
{
	return a + b + c;
}

int main()
{
	volatile dspvi16 vla = { 3,4,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   5,6,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,7,8 };
	volatile dspvi16 vlb = { 1,2,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					3,4,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,5,6 };
	volatile dspvi16 vlc = { 0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0 };
	vla += vlb; //vla.1=vla+vlb
	volatile dspvi16 vld = dspvi16_2add(vla, vlb); //vld=vla+2vlb
	volatile dspvi16 vle = dspvi16_3add(vla, vlb, vld); //vle=vla.1+vlb+vld=vla+2vlb+vla+2vlb=2la+4vlb
	vlc += vld; //vlc=vla+2vlb
#ifdef DSP_VALIDATION
	dbg_output(&vld, 256, 2);
	dbg_output(&vle, 256, 2);
	dbg_output(&vlc, 256, 2);
#endif

	return 0;
}
