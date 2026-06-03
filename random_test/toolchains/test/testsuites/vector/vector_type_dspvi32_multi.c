#include "swift_math.h"
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
dspvi32 dspvi32_2multi(dspvi32 a, dspvi32 b) {
	return a * b;
}

int main()
{
    // sign bit: 31
    // integer field: 30-17
    // decimal field: 16-0
	volatile dspvi32 vla = { 0b00000000000001010000000000000000/*2.5*/,0b00000000000000110000000000000000/*1.5*/,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0b00000000000000101000000000000000/*1.25*/,0b00000000000000010000000000000000/*0.5*/,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0b00000000000001001000000000000000/*2.25*/,0b00000000000001110000000000000000/*3.5*/ };
    // sign bit: 31
    // integer field: 30-17
    // decimal field: 16-0
	volatile dspvi32 vlb = { 0b00000000000001010000000000000000/*2.5*/,0b00000000000000010000000000000000/*0.5*/,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0b00000000000000110000000000000000/*1.5*/,0b00000000000000110000000000000000/*1.5*/,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0,0,
					0,0,0,0,0,0,0b00000000000001010000000000000000/*2.5*/,0b00000000000000010000000000000000/*0.5*/ };
	vla += vlb;
	// Under the above definition of fixed point decimal binary format,
	// the result of multiplying vfmul40 is the result of retaining one decimal place,
	// that is, the lowest three digits represents the decimal place,
	// and the remaining digits represent the integer place.
	dspvi32 vld = dspvi32_2multi(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 128, 4);
#endif
	return 0;
}
