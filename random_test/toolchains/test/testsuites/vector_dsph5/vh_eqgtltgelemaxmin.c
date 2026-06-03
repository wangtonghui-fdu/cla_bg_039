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
	dspvh a = { 2.0,1.5,0,0,0,0,0,0 };
	dspvh b = { 2.0,2.5,0,0,0,0,0,0 };
	f16x8_dst = vheq_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhgt_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhlt_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhge_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhle_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhmax_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
    f16x8_dst = vhmin_h(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f16x8_dst, 16, 2);
#endif
	return 0;

}
