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

#include <stdio.h>
#include <stdarg.h>

int main()
{
	volatile int s32 = -2;
	volatile unsigned int u32 = 4;
	volatile float f32 = -1.25;
	volatile double f64 = -1.85;
	volatile int a1 = f32;
	volatile int a2 = f64;
	volatile unsigned int b1 = f32;
	volatile unsigned int b2 = f64;
	volatile float c1 = s32;
	volatile float c2 = u32;
	volatile double d1 = s32;
	volatile double d2 = u32;
	volatile double d3 = f32;
#ifdef DSP_VALIDATION
	dbg_output(&a1, 1, 4);
	dbg_output(&a2, 1, 4);
	dbg_output(&b1, 1, 4);
	dbg_output(&b2, 1, 4);
	dbg_output(&c1, 1, 4);
	dbg_output(&c2, 1, 4);
	dbg_output(&d1, 2, 4);
	dbg_output(&d2, 2, 4);
	dbg_output(&d3, 2, 4);
#endif
	return 0;
}

