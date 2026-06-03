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
	i32x64_t i32x64_t_a = { 0x10000,0x10000,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0x100000,0x10000,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0x1000000,0x100000 };
	i32x64_t i32x64_t_b = { 0x10000,0x10000,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0x100000,0x100000,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0x1000000,0x100000 };
	i32x64_t i32x64_t_c = { 4,3,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							5,6,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,0,0,
							0,0,0,0,0,0,8,7 };
	i32x64_t_dst = vabs_i(i32x64_t_a);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif
	i32x64_t_dst = vfmul_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif
	//	i32x64_t_a = vfmac_i(i32x64_t_a, i32x64_t_b, i32x64_t_c);
	//	#ifdef DSP_VALIDATION
	//		dbg_output(&i32x64_t_a, 64, 4);
	//	#endif
	i32x64_t_dst = vcmulr_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif
	i32x64_t_dst = vcmuli_i(i32x64_t_a, i32x64_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i32x64_t_dst, 128, 4);
#endif

}
int main() {
	SIMD_Intrinsic_Testcase0();
	return 0;
}
