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
	i16x128_t i16x128_t_a = { 0x100,0x100,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0x1000,0x1000,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0x100,0x100 };
	i16x128_t i16x128_t_b = { 0x100,0x100,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0x1000,0x1000,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0x100,0x100 };
	i16x128_t i16x128_t_c = { 0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0,
							  0,0,0,0,0,0,0,0 };
	i16x128_t i16x128_t_dst = { 16 };
	i16x128_t_dst = vabs_s(i16x128_t_a);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 256, 2);
#endif
	i16x128_t_dst = vfmul_s(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 256, 2);
#endif
	//	i16x128_t_a = vfmac_s(i16x128_t_a, i16x128_t_b, i16x128_t_c);
	//#ifdef DSP_VALIDATION
	//	dbg_output(&i16x128_t_a, 256, 2);
	//#endif
	//	i16x128_t_a = vcmac_s(i16x128_t_a, i16x128_t_b,i16x128_t_c);
	//#ifdef DSP_VALIDATION
	//	dbg_output(&i16x128_t_a, 256, 2);
	//#endif
	i16x128_t_dst = vcmul_c(i16x128_t_a, i16x128_t_b);
#ifdef DSP_VALIDATION
	dbg_output(&i16x128_t_dst, 256, 2);
#endif


}
int main() {
	SIMD_Intrinsic_Testcase0();
	return 0;
}
