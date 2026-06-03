/*Error when we referred the argument in compound condition*/
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
extern int array[];
int array[3] = {4,7,2};
// static const int beg = 0;
// static const int end = 4;

int part(int beg, int end)
// int part()
{
	int i = beg, j = end;

	while(i < j && array[j] > array[beg])
	// while(array[j] > array[beg])
		j--;

	return j - i;
}
int main(){
	
	int b;
	b = part(0,2);
	TEST_OUT(b);
#ifdef DSP_VALIDATION
	dbg_output(&b, 1, 4);
	
#endif
	return 0;
}