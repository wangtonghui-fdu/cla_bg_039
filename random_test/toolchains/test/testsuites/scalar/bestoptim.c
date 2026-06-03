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
void hardwareLoop(int a[], int j){
	for(int i = 0; i < 2; ++i){
		j *= 3;
		a[j] = 0;
	}
	for(int i = 0; i < j; i++)
		TEST_OUT(a[i]);
#ifdef DSP_VALIDATION
	dbg_output(a,j,4);
#endif
}

int main(){
	int a[10] = {1}, j = 1;
	hardwareLoop(a,j);
	return 0;
}
