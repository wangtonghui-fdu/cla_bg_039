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

int main(){
	long long a = 100000000000, b = 5;
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return 0;
}