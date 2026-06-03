#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
    float x = 3.14f;
    float z;

    z = acoshf(x);
    unsigned ans = 0x3fe7ce91 ;  
	dbg_compare_float(z,*(float *)&ans);    
    return 0;
}
