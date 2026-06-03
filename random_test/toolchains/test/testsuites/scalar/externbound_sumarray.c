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
int x[5] = {1,2,3,4,5};
int nTaps = 5;
int y[5] = {0};

int main(void){
	int m = 0;
	int sum = 0;
	while (m < nTaps)
	{
		y[m] += x[m];
		sum += x[m] * y[m];
		m++;
	}
	TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
	return sum;
}