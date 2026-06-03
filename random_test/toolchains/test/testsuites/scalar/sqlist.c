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
#define MAXSIZE 10

typedef struct {
	int key[MAXSIZE];
	int length;
}SqList, *SqListptr;

int main(){
	SqList L;
	SqListptr p = &L;

	for(int i = 0; i<MAXSIZE; i++)
		L.key[i] = i;
	L.length = MAXSIZE;
	int a = p->length;
	TEST_OUT(a);
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return a;
}