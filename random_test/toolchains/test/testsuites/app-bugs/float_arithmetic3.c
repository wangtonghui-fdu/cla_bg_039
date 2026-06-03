#include "swift_debug.h"

int main(){
    volatile float a=3.1415926;
    volatile float b=2.7182818;
    volatile float c=a+b;
    volatile float d=a-b;
    volatile float e=a/b;
    volatile float f=a*b;
    dbg_output(&a,1,4);
    dbg_output(&b,1,4);
    dbg_output(&c,1,4);
    dbg_output(&d,1,4);
    dbg_output(&e,1,4);
    dbg_output(&f,1,4);
}
