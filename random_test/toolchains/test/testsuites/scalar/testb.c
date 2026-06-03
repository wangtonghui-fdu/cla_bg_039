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
int init_gB = 5;
int uninit_gB = 1;

int neg(int*);
//int neg(int);

int testb(int gA1, int sA1, int* pgA2, int* psA2, int gB1, int* pgB2){
//int testb(int gA1, int sA1, int gA2, int sA2, int gB1, int gB2){
	int localb = 10;
	*pgA2 = gA1;
	*psA2 = sA1;
	*pgB2 = gB1;

	localb += gA1 + *pgA2 + sA1 + *psA2 + init_gB + uninit_gB;
	//localb += gA1 + gA2 + sA1 + sA2 + init_gB + uninit_gB;

	neg(&localb);
	//localb = neg(localb);

	return localb;
}

int neg(int* x){
	*x = -(*x);
	return 0;
}


/*int neg(int x){
	return -x;
}
*/
int main(){
	int a = 1,b = 2, c = 3, d = 4, e = 5, f = 6;
	int t;
	t = testb(a,b,&c,&d,e,&f);
	TEST_OUT(t);
#ifdef DSP_VALIDATION
	dbg_output(&t, 1, 4);
#endif
	t = neg(&a);
	TEST_OUT(t);
#ifdef DSP_VALIDATION
	dbg_output(&t, 1, 4);
#endif
	return 0;
}
