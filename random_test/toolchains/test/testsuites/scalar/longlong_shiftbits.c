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

int main() {
	long long a = 12;
	long long b[3];
	b[0] = 1ULL << a;
	b[1] = -1000000000001024LL >> 8;
	b[2] = 4096000000000ULL >> 10;
#ifdef DSP_VALIDATION
	dbg_output(b, 6, 4);
#endif
	return 0;
}

