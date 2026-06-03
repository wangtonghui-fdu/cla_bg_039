#include<swift_math.h>
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



void SIMD_Intrinsic_Testcase0(){
	i32x64_t i32x64_t_dst = {32};
	dspvi32 vla = { 3,4,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   5,6,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,7,8 };
	dspvi32 vlb = { 1,2,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   3,4,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,0,0,
				   0,0,0,0,0,0,5,6 };

	i32x64_t_dst = vadd_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif
	i32x64_t_dst = vsub_i(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif
	
}
int main(){
	SIMD_Intrinsic_Testcase0();
	return 0;
}