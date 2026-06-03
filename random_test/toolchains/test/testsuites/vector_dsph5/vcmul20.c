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
	i16x8_t a = { 0x117,0x117,0,0,0,0,0,0 };
	i16x8_t b = { 0x100,0x100,0,0,0,0,0,0 };
	dspvi16 c = vcmul_c(a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 8, 4);
#endif
	return 0;
}
