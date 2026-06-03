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


int main(void){
	int g_Array[5] = {1,2,3,4,5};
	int sum = 0;
	
	for(int i = 0; i < 5; i++)
		sum += g_Array[i];
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}