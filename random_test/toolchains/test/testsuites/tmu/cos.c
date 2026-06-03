
#include <swift_debug.h>
extern float a1=4.8, a2= 0.68;
#include <qx320f.h>
int main()
{

	float s1 = cos_f32(a1);
	float s2 = cos_puf(a2);
	unsigned s1_ans = 0x3db332c4;
	dbg_compare_float(s1,*(float *)&s1_ans);
	unsigned s2_ans = 0xbed9ffbd;
	dbg_compare_float(s2,*(float *)&s2_ans);
	return 0;
}
