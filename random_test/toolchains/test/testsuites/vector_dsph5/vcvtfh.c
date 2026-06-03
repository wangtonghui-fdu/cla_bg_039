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
	dspvi16 a = { 0x4000,0x2000,0,0,0,0,0,0 };
	dspvh b = vcvtfh(a);
#ifdef DSP_VALIDATION
	dbg_output(&b, 16, 2);
#endif
	return 0;
}
