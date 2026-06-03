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
int a[5] = {1,2,3,4,5};

int add(void){

	int sum = 0;
	unsigned int i = 4;
	do{
		sum += a[i--];
	} while(i > 0);
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}
int main(){
	int b;
	b = add();
	return 0;
}