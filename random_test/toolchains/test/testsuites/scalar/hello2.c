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
// #include <stdio.h>
int main()
{
    int a = 0, b = 1, c = -1;
    a > b ? (c = 1) : (c = 0);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 1, 4);
#endif
    return 0;
}
