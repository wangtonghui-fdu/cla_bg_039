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

int g_Array[5] ={1,2,3,4,5};

int main(void){

    for(int i=0; i<5; i++)
        g_Array[i] = 5-i;
	for(int i =0; i<5; i++)
		g_Array[i]++;
	for(int i = 0; i < 5;  i++)
		TEST_OUT(g_Array[i]);
#ifdef DSP_VALIDATION
	dbg_output(g_Array, 5, 4);
#endif
	return 0;
}