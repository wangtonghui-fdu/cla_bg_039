#include <math.h>
#include <swift_debug.h>
int main()
{
	volatile double x = -123.456;
	volatile double y = fabs(x);
    dbg_output(&y,2,4);
	return 0;
}
