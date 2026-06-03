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
extern int ExArray[5];
extern int sum;
//int b[3] = {1,2,3}

extern const int threshold = 4;
extern const int bound = 2;
int sum = 0, ExArray[5] = {1};

int add(int *p_array, int asize){
//static int i = 0;
	int i = 0;
	for(i; i<asize; i += 2){
		if(p_array[i] < bound){
			sum += ExArray[i];
			if(sum > threshold)
				break;
		}
		else
			sum += p_array[i];
	}
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}
int main(){
	int p_array[5] = {1}, b;
	b = add(p_array,5);
	return 0;
}