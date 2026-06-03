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
#include <swift_math.h>
 __attribute__((Vpnum(1)))
int main()
{
set_vpsel(1);

	dspvf a = { 1.5,2.5,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			1.5,2.5,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,1.5,2.5 };
	dspvf b = vscmod_f(a);
	TEST_OUT(b);
#ifdef DSP_VALIDATION
	dbg_output(&b, 32, 4);
#endif
	return 0;
}
