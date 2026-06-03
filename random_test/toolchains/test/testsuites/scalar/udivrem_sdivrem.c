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
	int a=6;
	int b=4;
	int c;
	c=a/b;
	c=a%b;
	
	unsigned int d=6;
	unsigned int e=4;
	unsigned int f=d/e;
	f=d%4;
	TEST_OUT(f);
#ifdef DSP_VALIDATION
	dbg_output(&f, 1, 4);
#endif
	return 0;
}