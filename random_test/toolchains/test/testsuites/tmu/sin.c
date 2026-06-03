
#include <swift_debug.h>
#include <qx320f.h>
extern float f1 = -0.8, f2 = 9.7;
int main()
{
	float s1 = sin_puf(f1);
	float s2 = sin_f32(f2);
	unsigned s1_ans = 0x3f737870;
	dbg_compare_float(s1,*(float *)&s1_ans);
	unsigned s2_ans = 0xbe8b242f;
	dbg_compare_float(s2,*(float *)&s2_ans);
	return 0;
}
