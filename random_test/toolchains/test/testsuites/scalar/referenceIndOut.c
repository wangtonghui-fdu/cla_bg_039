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
int Array1[7] = {1,2,3,4,5,6,7};
int arraySize = 7;

int main(void){
	int sum = 0;
	int i = 0;

	for(i; i < arraySize; i += 3){
		sum += Array1[i];
	}
	
	int a = sum + i;
	TEST_OUT(a);
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	//Reference iterator after loop
	return a;
}