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
int main()
{
	f32x64 a = { -2.1,4.566,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			-2.1,4.566,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,
			0,0,0,0,0,0, -2.1,4.566 };
	f32x64 b = vsabs_f(a);
#ifdef DSP_VALIDATION
	dbg_output(&b, 128, 4);
#endif
	return 0;
}
