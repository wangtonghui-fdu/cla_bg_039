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

	dspvf a = { 2.0,1.5,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			2.0,1.5,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,2.0,1.5 };

	dspvf b = vssum_f(a);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&b, 32, 4);
#endif
	return 0;
}
