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
//.data
int init_g = 1;
static int init_s = 2;
//in .sbss
int uninit_g;
//in .bss
static int uninit_s;

int main(void){
	//.data
	static int init_s_main = 3;
	//in the stack of main()
	int local = 4;
	
	uninit_s = init_g + init_s + uninit_g + init_s_main + local;
	TEST_OUT(uninit_s);
#ifdef DSP_VALIDATION
	dbg_output(&uninit_s, 1, 4);
#endif
	return uninit_s;
}