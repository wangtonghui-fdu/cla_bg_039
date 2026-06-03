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

	f32x64 a = { 1.5, 3.0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			1.5, 3.0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,1.5, 3.0 };
	f32x64 b = { 2.5, 1.5,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			2.5, 1.5,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,2.5, 1.5 };
	f32x64 c = vsmul_f(a, b);
	TEST_OUT(c);
#ifdef DSP_VALIDATION
	dbg_output(&c, 32, 4);
#endif
	return 0;
}
