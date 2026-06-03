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
#define ASIZE 5

int SortArray[ASIZE] = {
	5, 1, 3, 4, 2
	};
int size  = ASIZE;
//extern int bubblesort(int *array, int size);
extern int bubblesort(void);
int bubblesort(void){
	int Temp;
	int hasOutOrder;
	int Array[3] = {3,1,2},size = 3;
	for(int Sortpos = size-1; Sortpos > 0; Sortpos--){
		hasOutOrder = 0;
		for(int i = 0; i < Sortpos; i++){
			if(Array[i] > Array[i+1]){
				hasOutOrder = 1;
				//swap
				Temp = Array[i];
				Array[i] = Array[i+1];
				Array[i+1] = Temp;
			}
		}
		if(!hasOutOrder)
			break;
	}
	
	return 0;
}

int main(void){
//static int i = 0;
	// Fibonacci array
/*	int SortArray[ASIZE] = {
		54, 34625, 346, 346, 16,
		516, 56416, 16, 1, 48,
		1318, 1564, 16, 441, 6541,
		1, 61, 6, 684, 95
	};*/

	//bubblesort(SortArray, ASIZE);
	bubblesort();
	// Check the order
	int Inorder = 1;
	for(int i = 1; i < ASIZE; i++){
		if(SortArray[i] < SortArray[i-1]){
			Inorder = 0;
			break;
		}
	}
	TEST_OUT(Inorder);
#ifdef DSP_VALIDATION
	dbg_output(&Inorder, 1, 4);
#endif
	return Inorder;
}
