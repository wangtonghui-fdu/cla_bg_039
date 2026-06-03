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
extern int ex_array[256] = {1};
extern int sum = 0;

extern const int bound = 255;

int add(int *p_array, int p_size){
//static int i = 0;
	int half = p_size>>1;
	int i = 0;

	for( ; i < 255; i++){

		for(int j = half; j >= 0; j -= 2)
			sum += p_array[j];

		while(half < 255)
			sum -= ex_array[half++];
	}

	do{
		
	} while(i++ < bound);
	sum += i;
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}
int main(){
	int b;
	b = add(ex_array,256);
	return 0;
}