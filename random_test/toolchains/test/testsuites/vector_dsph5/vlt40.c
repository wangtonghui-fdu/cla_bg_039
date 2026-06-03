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
	i32x4_t vla = { 3,2,1,8 };
	i32x4_t vlb = { 1,3,0,6 };
    vla = vlt_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vla, 8, 4);
#endif
	return 0;
}
