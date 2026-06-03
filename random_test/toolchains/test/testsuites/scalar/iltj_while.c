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
	int array[3] = {0};
	int i = 0;
	int j = 4;
	int k = 2;

	while(i<j){
		while(i<k)
			i++;
		array[0] = i;
		while(k<j)
			k++;
		array[1] = k;
	}

	array[2] = j;
	TEST_OUT(j-i);
	int a = j-i;
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return (j-i);
}