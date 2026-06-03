#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
    float x = 0.5f;
    float z;
    z = acosf(x);
    unsigned ans = 0x3F860A92 ;  
	dbg_compare_float(z,*(float *)&ans);
    return 0;
}
