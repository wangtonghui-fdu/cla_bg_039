#ifdef CROSS_VALIDATION
#include <stdlib.h>
#include<stdio.h>
#define TEST_OUT(a) printf("%d\n", a);
#else
#define TEST_OUT(a)
#endif

#define DSP_VALIDATION
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

int main(){
	long long a = 452000000000;
	long long b = 452000000000;
	long long c = a - b;
 	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 1, 4);
#endif
	return 0;
}
