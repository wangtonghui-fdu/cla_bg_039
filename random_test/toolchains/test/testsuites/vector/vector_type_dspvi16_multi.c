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
              // sign bit: 15
              // integer field: 14-9
              // decimal field: 8-0
dspvi16 vla = { 0b0000001100000000/*1.5*/,0b0000010010000000/*2.25*/,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0b0000001010000000/*1.25*/,0b0000001100000000/*1.5*/,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0b0000001100000000/*1.5*/,0b0000001100000000/*1.5*/ };
              // sign bit: 15
              // integer field: 14-9
              // decimal field: 8-0
dspvi16 vlb = { 0b0000001010000000/*1.25*/,0b0000001100000000/*1.5*/,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0b0000010010000000/*2.25*/,0b0000001100000000/*1.5*/,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0b0000010100000000/*2.5*/,0b0000000010000000/*0.25*/ };

dspvi16 dspvi16_2multi(dspvi16 a, dspvi16 b) {
	return a * b;
}
int main(int argc, char const* argv[])
{
	vla += vlb;
#ifdef DSP_VALIDATION
	dbg_output(&vla, 128, 2);
#endif
	// Under the above definition of fixed point decimal binary format,
	// the result of multiplying vfmul20 is the result of retaining one decimal place,
	// that is, the lowest three digits represents the decimal place,
	// and the remaining digits represent the integer place.
	dspvi16 vld = dspvi16_2multi(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 256, 2);
#endif
	return 0;
}
