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
#define DSP_VALIDATION
#include <swift_math.h>
#include<swift_debug.h>
int main()
{
	dspvi8 a = { 5,7,0,0,0,0,0,1,
                 0,0,0,0,0,0,0,9 };
	dspvi8 b = { 5,7,8,9,5,7,8,9,
                 5,7,8,9,5,7,8,9 };
	dspvi8 c = veq_c(a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 8, 4);
#endif
	return 0;
}
