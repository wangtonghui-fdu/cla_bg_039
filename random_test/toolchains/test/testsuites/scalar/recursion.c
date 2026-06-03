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
int sum(int);

int main(void)
{
	int n = 5,a;
	a = sum(n);
	TEST_OUT(a);
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return a;
}

int sum(int x)
{
	if(x <= 1)
		return x;
	else
		return (x + sum(x-1));
}