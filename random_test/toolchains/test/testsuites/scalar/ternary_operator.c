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
	int a = 1;
	int b = 2;
	int c = (a > b) ? 0 : 7;
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 1, 4);
#endif
	return 0;
}
