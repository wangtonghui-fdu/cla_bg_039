#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     long int z = lrintf(x);
    dbg_output(&z, 1, 4);
    return 0;
}
