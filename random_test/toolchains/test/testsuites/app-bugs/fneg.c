#include "swift_debug.h"
float fneg(float f){
    return -f;
}

int main(){
    volatile float a=2.5;
    volatile float b=fneg(a);
    dbg_output(&a,1,4);
    dbg_output(&b,1,4);
    return 0;
}