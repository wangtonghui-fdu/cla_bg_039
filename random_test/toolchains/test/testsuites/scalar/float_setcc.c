#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
int main()
{
	float a = 4;
	float b = 3;
	int i = 0;

	if (a < b)
	{
		i = 1;
	}
	else i = 2;
#ifdef DSP_VALIDATION
	dbg_output(&i, 1, 4);
#endif

	return 0;
}
