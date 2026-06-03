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
	int i = 0;
	int j = 4;
	int k = 2;

	while(i<j || j>k){
		
			i++;
			k++;
		
	}
	int a = j-i;
	TEST_OUT(a);
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return (j-i);
}