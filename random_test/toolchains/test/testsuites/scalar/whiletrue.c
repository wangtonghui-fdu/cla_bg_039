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
extern int flagsar[10];
extern int bound;
int bound = 5;
int flagsar[10] = {1};
/*Can the Exiting Block be different from Latch Block ?*/
int check(int* Array, int start, int end)
{

	int i = 0;
	int flag = 0;

	do{

		if(Array[i] > Array[i+1]){
			flag = -1;
		}
		if(i >= bound)
			break;

		flagsar[i] = -1;
		i++;
	} while(1);

	return flag;
}
int main(){
	int a[5] = {3,1,4,5,7}, b;
	b = check(a,0,4);
	for(int i = 0; i < 5; i ++)
		TEST_OUT(a[i]);
	TEST_OUT(b);
#ifdef DSP_VALIDATION
	dbg_output(&a, 5, 4);
	dbg_output(&b,1,4);
#endif
	return 0;
}
