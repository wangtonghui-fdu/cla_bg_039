#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float y = 2.71f;
     float z;
     sincosf(x, &y, &z);
    unsigned ans_s1 = 0x3ad0bd0b;
    dbg_compare_float(y, *(float *)&ans_s1);
    unsigned ans_s2 = 0xbf7fffeb;
    dbg_compare_float(z, *(float *)&ans_s2);
    return 0;
}
