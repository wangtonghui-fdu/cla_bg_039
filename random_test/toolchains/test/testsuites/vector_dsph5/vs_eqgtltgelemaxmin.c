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
    dspvf f32x4_dst = { 0 };
	dspvf a = { 2.0,1.5,0,0,0,0,0,0 };
	dspvf b = { 2.0,2.5,0,0,0,0,0,0 };
	f32x4_dst = vseq_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vsgt_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vslt_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vsge_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vsle_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vsmax_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
    f32x4_dst = vsmin_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
	return 0;

}
