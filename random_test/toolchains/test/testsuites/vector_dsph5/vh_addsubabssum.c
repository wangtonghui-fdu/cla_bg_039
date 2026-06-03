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
    dspvh f16x8_dst = { 0 };
	dspvh a = { 1.5,3.0,0,0,0,0,0,0 };
	dspvh b = { 2.5,1.5,0,0,0,0,0,0 };
	f16x8_dst =  vhadd_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
	f16x8_dst =  vhsub_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
	f16x8_dst =  vhabs_h(a);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
	f16x8_dst =  vhsum_h(a);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
	return 0;
}
