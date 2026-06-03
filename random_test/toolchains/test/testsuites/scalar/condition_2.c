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
int test(int a){
	_Bool t = a ? 1:0;
	if(t){
		return 1;
	}
	return 0;
}
int main(){
	int b;
	b = test(1);
	TEST_OUT(b);
#ifdef DSP_VALIDATION
	dbg_output(&b, 1, 4);
#endif
	return 0;
}