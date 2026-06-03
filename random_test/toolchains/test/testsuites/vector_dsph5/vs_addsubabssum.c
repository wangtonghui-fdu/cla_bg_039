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
	dspvf a = { 1.5,3.0,0,0 };
	dspvf b = { 2.5,1.5,0,0 };
	f32x4_dst =  vsadd_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
	f32x4_dst =  vssub_f(a, b);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
	f32x4_dst =  vsabs_f(a);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
	f32x4_dst =  vssum_f(a);
#ifdef DSP_VALIDATION
	dbg_output(&f32x4_dst, 8, 4);
#endif
	return 0;
}
