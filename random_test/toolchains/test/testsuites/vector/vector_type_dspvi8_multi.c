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
              // sign bit: 8
              // integer field: 7-5
              // decimal field: 4-0
dspvi8 vla = { 0b00110000/*1.5*/,0b00010000/*0.5*/,0,0,0,0,0,0,
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
			   0,0,0,0,0,0,0,0,
			   0b00110000/*1.5*/,0b00010000/*0.5*/,0,0,0,0,0,0,
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
			   0,0,0,0,0,0,0b00010000/*0.5*/,0b00010000/*0.5*/ };
              // sign bit: 8
              // integer field: 7-5
              // decimal field: 4-0
dspvi8 vlb = { 0b00010000/*0.5*/,0b00010000/*0.5*/,0,0,0,0,0,0,
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
			   0,0,0,0,0,0,0,0,
			   0b01010000/*2.5*/,0b00110000/*1.5*/,0,0,0,0,0,0,
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
			   0,0,0,0,0,0,0b00101000/*1.25*/,0b01001000/*2.25*/ };
dspvi8 dspvi8_2multi(dspvi8 a, dspvi8 b) {
	return a * b;
}
int main(int argc, char const* argv[])
{

	// Under the above definition of fixed point decimal binary format,
	// the result of multiplying vfmul10 is the result of retaining one decimal place,
	// that is, the lowest three digits represents the decimal place,
	// and the remaining digits represent the integer place.
	dspvi8 vld = dspvi8_2multi(vla, vlb);
#ifdef DSP_VALIDATION
	dbg_output(&vld, 512, 1);
#endif
	return 0;
}
