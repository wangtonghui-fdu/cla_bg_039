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
/*check whether the order after sorting is right.*/
int check(int* Array, int start, int end)
{
	int flag = 0;
	for(int i = start; i< end; i++)
		if(Array[i] > Array[i+1]){
			flag = -1;
			break;
		}
	return flag;
}
int main(){
	int b, a[5] = {3,5,7,9,1};
	b = check(a,0,4);
	for(int i = 0; i < 5; i ++)
		TEST_OUT(a[i]);
#ifdef DSP_VALIDATION
	dbg_output(&a, 5, 4);
#endif
	return 0;
}
