#ifdef CROSS_VALIDATION
#include <stdio.h>
#include <stdlib.h>
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

	f32x64 a = { 2.1,4.566,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			-2.1,4.566,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0, -2.1,4.566 };
	f32x64 b = { 3.8,9.6734,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			3.8,9.6734,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0, 3.8,9.6734 };
	f32x64 c = vsadd_f(a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 32, 4);
#endif
	return 0;
}
