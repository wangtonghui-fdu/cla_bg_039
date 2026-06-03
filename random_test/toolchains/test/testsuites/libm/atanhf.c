#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
    float x = 0.5f;
    float z;
    z = atanhf(x);
    unsigned ans = 0x3f0c9f54;  
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
