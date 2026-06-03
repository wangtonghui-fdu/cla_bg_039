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
int main()
{
	int i = 0;
	int j = 5;
	int k = 0;
	int retval = 0;

//	while(i < j){
		for( ; i<3; i++)retval++;
		for( ; j>3; j--)retval--;
		for( ; k<j; k++)retval += 2;
//	if(i == j)
//		retval = 0;
//	}
	TEST_OUT(retval);
#ifdef DSP_VALIDATION
	dbg_output(&retval, 1, 4);
#endif
	return retval;
}