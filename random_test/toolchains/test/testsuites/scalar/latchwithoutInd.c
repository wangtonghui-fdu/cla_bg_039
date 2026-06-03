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
	int t, a[4] = {1,2,3,4};
	t = check(a,0,3);
	TEST_OUT(t);
#ifdef DSP_VALIDATION
	dbg_output(&t, 1, 4);
#endif
	return 0;
}
