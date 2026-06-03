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

int Qsort(int *array, int beg, int end)
{
	if(end - beg < 1) return -1;
	
	int i = beg, j = end + 1;
	int pivot = array[beg], temp;

	while(i < j){
		while(array[--j] > pivot) continue;
		while(++i < j)
			if(array[i] >= pivot) break;
		if(i < j){
			temp = array[i];
			array[i] = array[j];
			array[j] = temp;
		}
	}
	//j always stops at a value where array[j] <= pivot.
	array[beg] = array[j];
	array[j] = pivot;

	Qsort(array, beg, j-1);
	Qsort(array, j+1, end);
	return 0;
}
int main(){
	int a[5] = {1,4,3,6,7},b;
	b = Qsort(a,0,4);
	for(int i = 0; i < 5; i ++)
		TEST_OUT(a[i]);
#ifdef DSP_VALIDATION
	dbg_output(&a, 5, 4);
#endif
	return 0;
}