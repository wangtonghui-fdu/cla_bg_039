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
	double a1 = 1.25, a2 = 3.4;
	double a,b,c,d,e;
	a = a1 + a2;
	b = a1 - a2;
	c = a1 * a2;
	d = a1 / a2;
#ifdef DSP_VALIDATION
	dbg_output(&a, 2, 4);
	dbg_output(&b, 2, 4);
	dbg_output(&c, 2, 4);
	dbg_output(&d, 2, 4);
#endif
	return 0;
}

