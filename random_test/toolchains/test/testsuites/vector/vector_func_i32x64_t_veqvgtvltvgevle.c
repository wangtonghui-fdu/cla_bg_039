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



void SIMD_Intrinsic_Testcase0() {
	i32x64_t i32x64_t_dst = { 32 };
	i32x64_t i32x64_t_a = { 3,4,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							5,6,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,7,8 };
	i32x64_t i32x64_t_b = { 4,3,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							5,6,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,8,7 };
	i32x64_t_dst = veq_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 64, 4);
#endif
	i32x64_t_dst = vgt_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 64, 4);
#endif
	i32x64_t_dst = vlt_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 64, 4);
#endif
	i32x64_t_dst = vge_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 64, 4);
#endif
	i32x64_t_dst = vle_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 64, 4);
#endif

}
int main() {
	SIMD_Intrinsic_Testcase0();
	return 0;
}
