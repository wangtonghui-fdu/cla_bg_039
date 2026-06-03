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
	dspvh a = { 0.25,0.125,0,0,0,0,0,0 };
	dspvi16 b = vcvthf(a);
#ifdef DSP_VALIDATION
	dbg_output(&b, 16, 2);
#endif
	return 0;
}
