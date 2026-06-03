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
int main()
{
    long long a = 73014444041;//0x11 0000 0009H
    long long b = -1030;
    long long c = -4;
    long long d = a / c;
    long long e = b / c;
    long long f = b % c;
	TEST_OUT(d);
    TEST_OUT(e);
    TEST_OUT(f);
#ifdef DSP_VALIDATION
	dbg_output(&d, 2, 4);
    dbg_output(&e, 2, 4);
    dbg_output(&f, 2, 4);
#endif
    return 0;
}