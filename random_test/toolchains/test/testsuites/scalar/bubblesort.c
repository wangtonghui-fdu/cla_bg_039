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
/*Bubble Sort*/
/// \brief Comparison in Latch does not use induction.
/// Fail to convert.
extern int Array[] = {3,1,2};
extern int size = 3;

//int bubblesort(int *Array,  int size){
int bubblesort(void){
//static int i = 0;
	int Temp;
	int hasOutOrder;
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
	for(int i = 0;i < size; i++)
		TEST_OUT(Array[i]);
#ifdef DSP_VALIDATION
	dbg_output(Array, size, 4);
#endif
	return 0;
}
int main(){
	int b;
	b = bubblesort();
	return 0;
}