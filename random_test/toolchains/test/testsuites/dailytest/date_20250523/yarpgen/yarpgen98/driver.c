#include <stdio.h>

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
unsigned long long int seed = 0;
void hash(unsigned long long int *seed, unsigned long long int const v) {
    *seed ^= v + 0x9e3779b9 + ((*seed)<<6) + ((*seed)>>2);
}

unsigned long long int var_0 = 145093122505111663ULL;
int var_1 = -1482851642;
unsigned short var_8 = (unsigned short)38625;
int zero = 0;
short var_10 = (short)-231;
unsigned long long int var_11 = 7960403768818711904ULL;
void init() {
}

void checksum() {
    hash(&seed, var_10);
    hash(&seed, var_11);
}
void test(unsigned long long int var_0, int var_1, unsigned short var_8, int zero);

int main() {
    init();
    test(var_0, var_1, var_8, zero);
    checksum();
    printf("0x%08llx\n", seed & 0xFFFFFFFF);
    printf("0x%08llx\n", seed >> 32);
#ifdef DSP_VALIDATION
    dbg_output(&seed, 2, 4);
#endif
}
