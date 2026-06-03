#include <swift_debug.h>

int main()
{
	volatile float a=2.0;
	volatile float b=3.0;
	volatile int cond1=233;
	volatile int cond2=456;

	if (a<b){
		dbg_output(&cond1,1,4);
	} else {
		dbg_output(&cond2,1,4);
	}

	if (b<4.0){
		dbg_output(&cond1,1,4);
	} else {
		dbg_output(&cond2,1,4);
	}

	if (b<1.0){
		dbg_output(&cond1,1,4);
	} else {
		dbg_output(&cond2,1,4);
	}
	return 0;
}

