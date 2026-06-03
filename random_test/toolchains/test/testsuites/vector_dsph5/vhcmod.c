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
	dspvh a = { 1.5,2.5,0,0,0,0,0,0 };
	dspvh b = vhcmod_h(a);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&b, 16, 2);
#endif
	return 0;
}
