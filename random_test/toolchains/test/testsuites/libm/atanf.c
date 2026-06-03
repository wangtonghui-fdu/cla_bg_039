#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
    float x = 3.14f;
    float y;
    y = atanf(x);
    unsigned ans = 0x3fa198f7;
    dbg_compare_float(y, *(float *)&ans);
    return 0;
}
