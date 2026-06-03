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
	dspvi8 vla = { 3,2,1,8,3,2,0,8,
                    3,2,1,8,3,2,0,8 };
	dspvi8 vlb = { 1,3,0,6,1,3,0,6,
                    1,3,0,6,1,3,0,6 };
	i8x16_t vlc = vgt_c(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vlc, 8, 4);
#endif
	return 0;
}
