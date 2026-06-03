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


int add(int iscycle){
	if(iscycle){
		for(int i = 0; i < 256; i += 2)
			sum += a[i];
	}
	else
		sum = a[1];
	
	sum += a[255];
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}
int main(){
	int b, t = 1;
	b = add(t);
	return 0;
}