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
int g2;

int main(){
	int* a;
	int c = 1;
	a = &c;
	int b = 2;
	g2++;
	int t;
	t = (*a)>b?*a:b;
	TEST_OUT(t);
#ifdef DSP_VALIDATION
	dbg_output(&t, 1, 4);
#endif
	return ( (*a)>b?*a:b );
}
