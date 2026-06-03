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


dspvi16 dspvi16_2sub(dspvi16 a, dspvi16 b){
	return a - b;
}
dspvi16 dspvi16_3sub(dspvi16 a, dspvi16 b, dspvi16 c){
	return a - b - c;
}

int main(int argc, char const *argv[])
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
	vla -= vlb;
#ifdef DSP_VALIDATION
	dbg_output(&vla, 256, 2);
#endif
	volatile dspvi16 vld = dspvi16_2sub(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 256, 2);
#endif
	volatile dspvi16 vlh = dspvi16_3sub(vla, vlb, vlc);
#ifdef DSP_VALIDATION
	dbg_output(&vlh, 256, 2);
#endif
	vlc -= vld; 
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 256, 2);
#endif
	return 0;
}