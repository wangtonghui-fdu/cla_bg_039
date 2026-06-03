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
int a[64][64];
int sum = 0;

int add(void){
	for (int i = 0; i < 64; i++) {
		for (int j = 0; j < 64; j++) {
			a[i][j] = 1;
		}
	}
	for(int i = 0; i < 64; i += 2)
		for(int j = i; j < 64; j++)
			sum += a[i][j];
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