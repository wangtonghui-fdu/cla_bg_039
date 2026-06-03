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
	i8x16_t a = { 2,2,0,0,0,0,0,0,
                  2,2,0,0,0,0,0,0 };
	i8x16_t b = { 3,3,0,0,0,0,0,0,
                  3,3,0,0,0,0,0,0 };
    i8x16_t c = { 1,0,0,1,0,0,0,0,
                  1,0,0,1,0,0,0,0 };
	c = vcmac_c(c, a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 8, 4);
#endif
	return 0;
}
