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
     z = log10f(x);
    unsigned ans = 0x3efe6d91;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
