#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float y = 2.71f;
     int n = 2;
     y = ldexpf(x, n);
    unsigned ans = 0x4148f5c3;
    dbg_compare_float(y, *(float *)&ans);
    return 0;
}
