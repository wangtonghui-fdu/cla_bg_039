#include <stdio.h>

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
unsigned long long int seed = 0;
void hash(unsigned long long int *seed, unsigned long long int const v) {
    *seed ^= v + 0x9e3779b9 + ((*seed)<<6) + ((*seed)>>2);
}

long long int var_0 = -4572820728681540547LL;
long long int var_2 = 7634538052136258447LL;
int zero = 0;
signed char var_6 = (signed char)45;
long long int var_7 = 3060057820732189601LL;
signed char var_8 = (signed char)-122;
void init() {
}

void checksum() {
    hash(&seed, var_6);
    hash(&seed, var_7);
    hash(&seed, var_8);
}
void test(long long int var_0, long long int var_2, int zero);

int main() {
    init();
    test(var_0, var_2, zero);
    checksum();
    printf("0x%08llx\n", seed & 0xFFFFFFFF);
    printf("0x%08llx\n", seed >> 32);
#ifdef DSP_VALIDATION
    dbg_output(&seed, 2, 4);
#endif
}
