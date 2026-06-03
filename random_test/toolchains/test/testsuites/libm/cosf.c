#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float z;
     z = cosf(x);
    unsigned ans = 0xbf7fffeb;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
