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

	dspvi32 a = { 0x40000000,0x20000000,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0x40000000,0x20000000,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0x40000000,0x20000000 };
	dspvf b = vcvtfs(a);
#ifdef DSP_VALIDATION
	dbg_output(&b, 64, 4);
#endif
	return 0;
}
