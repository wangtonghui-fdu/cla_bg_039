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
	dspvi8 vla = { -3,2,-0,-8,
                    0,0,0,0,
                    0,0,0,0,
                    0,0,0,0 };
	i8x16_t vlb = vabs_c(vla);
#ifdef DSP_VALIDATION
	dbg_output(&vlb, 8, 4);
#endif
	return 0;
}
