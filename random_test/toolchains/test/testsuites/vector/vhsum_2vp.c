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
 __attribute__((Vpnum(2)))
int main()
{
set_vpsel(2);

	dspvh a = { 1.5,-2.5,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1.5,-2.5,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1,1,
			1,1,1,1,1,1,1.5,-2.5 };
	dspvh b = vhsum_h(a);
	TEST_OUT(b);
#ifdef DSP_VALIDATION
	dbg_output(&b, 128, 2);
#endif
	return 0;
}
