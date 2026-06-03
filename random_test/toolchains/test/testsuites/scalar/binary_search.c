/*Binary searching the given value of element ,return its index in array*/
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
int binarysearch(int* array, int value, int start, int end)
{
	if(start > end)
		return -1;

	int bottem = start;
	int top = end;
	int midpos;
	int t = -1;
	while(bottem <= top){
		midpos = (bottem + top)/2;
		if(array[midpos] == value){
			t = midpos;
			break;
		}
		else if(array[midpos] < value)
			bottem = midpos + 1;
		else
			top = midpos - 1;
	}
	TEST_OUT(t);
#ifdef DSP_VALIDATION
	dbg_output(&t, 1, 4);
#endif
	return t;
}


int main(){
	int a[] = {3,2,4,5,6,8}, value = 3, start = 0, end = 5;
	int t;
	t = binarysearch(a,value,start,end);
	return 0;
}