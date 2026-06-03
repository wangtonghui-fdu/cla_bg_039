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
	unsigned long long a = 17592186044422;
	unsigned long long b = 5;
	unsigned long long c = a/b;
	unsigned long long d = a % b;
#ifdef DSP_VALIDATION
	dbg_output(&c, 2, 4);
	dbg_output(&d, 2, 4);
#endif
	return 0;
}