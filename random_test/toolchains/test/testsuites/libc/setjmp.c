#include "swift_debug.h"
#include <setjmp.h>

int main() {
  jmp_buf env;
  int res = setjmp(env);
  dbg_output(&res, 1, 4);
  if (res == 0) {
    longjmp(env, 0);
  } else if (res == 1) {
    longjmp(env, 256);
  }
  return 0;
}