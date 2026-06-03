#include <swift_debug.h>
extern float a1=0.8,a2 = 1.0;
#include <qx320f.h>
int main()
{

	float s1 = atan_f32(a1);
	// float s2 = __builtin_dsp_atanf2_qx320f(a1, a2);
	unsigned s1_ans = 0x3f2cbbd3;
	dbg_compare_float(s1,*(float *)&s1_ans);
	// unsigned s2_ans = 0x3f2cbbd3;
	// dbg_compare_float(s2,*(float *)&s2_ans);
	return 0;
}