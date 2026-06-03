/*Insert Sorting by binary searching the inserted position */
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
int binary_insert(int *array, int start, int end)
{
	if(start > end)
		return -1;

	int value; //the element to be inserted this round
	int midpos;	//the middle pos of binary search
	int srchhead; //srchhead,srchrear mark the start and end position of searching process
	int srchrear;

	for(int i = start + 1; i <= end ; i++){
		value = array[i];
		srchhead = start;
		srchrear =  i-1;

		/*shift the index until srchhead = srchrear + 1
		to ensure that all the elements, in the range of search, on the 
		left hand of srchhead are not great than its value, and all on 
		the right hand of srchrear are great than its value.
		*/
		while(srchhead <= srchrear){
			midpos = (srchhead + srchrear)/2;
			if(array[midpos] <= value)
				srchhead = midpos + 1;
			else
				srchrear = midpos -1;
		}
		
		//insert the element and rightshift one position for elements behind it   
		for(int j = i-1; j >= srchhead; j--)
			array[j+1] = array[j];
		array[srchhead] = value;
	}
	for(int t = start; t <= end; t++)
		TEST_OUT(array[t]);
#ifdef DSP_VALIDATION
	dbg_output(array + start, end - start+1, 4);
#endif
	return 0;
}
int main(){
	int array[5] = {1,2,3,4,5},start = 1, end = 4;
	int a;
	a = binary_insert(array,start,end);
	return 0;
}