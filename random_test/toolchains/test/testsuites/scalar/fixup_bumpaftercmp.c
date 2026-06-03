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
extern int a[256] = {1};
extern int sum = 0;
//int b[3] = {1,2,3}


int add(void){
	int i = 0;
	do{
		sum += a[i];
	}while(++i < 256);
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