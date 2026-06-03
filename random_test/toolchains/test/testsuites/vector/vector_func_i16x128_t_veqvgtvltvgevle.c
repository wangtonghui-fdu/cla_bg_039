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
	i16x128_t i16x128_t_dst = { 16 };
	i16x128_t i16x128_t_a = { 3,4,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  5,6,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,7,8 };
	i16x128_t i16x128_t_b = { 4,3,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  5,6,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,8,7 };

	i16x128_t_dst = veq_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 128, 2);
#endif
	i16x128_t_dst = vgt_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 128, 2);
#endif
	i16x128_t_dst = vlt_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 128, 2);
#endif
	i16x128_t_dst = vge_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 128, 2);
#endif
	i16x128_t_dst = vle_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 128, 2);
#endif


}
int main() {
	SIMD_Intrinsic_Testcase0();
	return 0;
}
