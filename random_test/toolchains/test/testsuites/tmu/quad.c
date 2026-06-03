
#include <swift_debug.h>
#include <qx320f.h>


int main()
{
	float x, y, quadrant, ratio;
	
	x = 1.0f, y = 2.0f;
	quadrant = quad_f32(&ratio, x, y);
	unsigned ans1 = 0xBF000000;
	dbg_compare_float(ratio, *(float *)&ans1);
	unsigned ans2 = 0x3E800000;
	dbg_compare_float(quadrant, *(float *)&ans2);

	x = 1.0f, y = -2.0f;
	quadrant = quad_f32(&ratio, x, y);
	ans1 = 0x3F000000;
	dbg_compare_float(ratio, *(float *)&ans1);
	ans2 = 0xBE800000;
	dbg_compare_float(quadrant, *(float *)&ans2);

	x = 1.0f, y = 0.5f;
	quadrant = quad_f32(&ratio, x, y);
	ans1 = 0x3F000000;
	dbg_compare_float(ratio, *(float *)&ans1);
	ans2 = 0x00000000;
	dbg_compare_float(quadrant, *(float *)&ans2);

	x = -1.0f, y = 0.5f;
	quadrant = quad_f32(&ratio, x, y);
	ans1 = 0xBF000000;
	dbg_compare_float(ratio, *(float *)&ans1);
	ans2 = 0x3F000000;
	dbg_compare_float(quadrant, *(float *)&ans2);

	x = -1.0f, y = -0.5f;
	quadrant = quad_f32(&ratio, x, y);
	ans1 = 0x3F000000;
	dbg_compare_float(ratio, *(float *)&ans1);
	ans2 = 0xBF000000;
	dbg_compare_float(quadrant, *(float *)&ans2);

	return 0;
}
