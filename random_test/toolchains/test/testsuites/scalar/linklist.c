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
typedef struct _LNode{
	int key;
	struct _LNode* next;
}LNode, *LinkList;

#define NULL 0

int main()
{
	LNode L1,L2;
	LinkList p = &L1;
	LinkList q = &L2;

	p->key = 1;
	q->key = 2;
	p->next = q;
	q->next = NULL;

	while(p->next){
		p->key++;
		p = p->next;
	}
	int a = q->key;
	TEST_OUT(a);
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
	return q->key;
}