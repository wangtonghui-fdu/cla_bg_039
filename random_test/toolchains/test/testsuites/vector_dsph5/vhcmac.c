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
	dspvh a = { 1.5,3.0,0,0,0,0,0,0 };
	dspvh b = { 2.5,1.5,0,0,0,0,0,0 };
	dspvh c = { 1,1,0,0,0,0,0,0 };
	c = vhcmac_h(c, a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 16, 2);
#endif
	return 0;
}
