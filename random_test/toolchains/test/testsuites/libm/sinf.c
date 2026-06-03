#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float z;
     z = sinf(x);
    unsigned ans = 0x3ad0bd0b;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
