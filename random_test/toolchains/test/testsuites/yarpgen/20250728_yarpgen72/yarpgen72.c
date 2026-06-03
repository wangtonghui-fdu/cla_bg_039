/* Merged from yarpgen72 */

/* Header content */
extern signed char var_8;
extern int var_9;
extern unsigned int var_10;
extern short var_11;


/* Function implementations */
/*
yarpgen version 2.0 (build 5da6e3a on 2024:12:29)
Seed: 3853007491
Invocation: ./yarpgen --std=c -o yarpgen72
*/

#define max(a,b) \
    ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
       _a > _b ? _a : _b; })
#define min(a,b) \
    ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
       _a < _b ? _a : _b; })
void test(unsigned int var_3, long long int var_5, _Bool var_6, int var_7, int zero, int arr_0 [9] [9] ) {
    /* LoopNest 2 */
    for (_Bool i_0 = ((((/* implicit */int) ((/* implicit */_Bool) ((((/* implicit */_Bool) 4194303U)) ? (((/* implicit */int) (_Bool)1)) : (-186171086))))) - (1))/*0*/; i_0 < ((/* implicit */int) ((/* implicit */_Bool) var_5))/*1*/; i_0 += ((/* implicit */int) ((/* implicit */_Bool) max((((/* implicit */long long int) var_7)), (5876700118090051275LL))))/*1*/) 
    {
        for (unsigned long long int i_1 = ((((/* implicit */unsigned long long int) var_6)) + (1ULL))/*2*/; i_1 < ((((/* implicit */unsigned long long int) var_7)) - (1857810163ULL))/*7*/; i_1 += 2ULL/*2*/) 
        {
            {
                var_8 ^= ((/* implicit */signed char) (~(var_7)));
                var_9 = arr_0 [(unsigned short)1] [i_0];
            }
        } 
    } 
    var_10 ^= ((var_6) ? (((/* implicit */unsigned int) ((/* implicit */int) (unsigned short)26534))) : (var_3));
    var_11 += ((/* implicit */short) ((long long int) var_7));
}


/* Main function */
#include <stdio.h>

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
unsigned long long int seed = 0;
void hash(unsigned long long int *seed, unsigned long long int const v) {
    *seed ^= v + 0x9e3779b9 + ((*seed)<<6) + ((*seed)>>2);
}

unsigned int var_3 = 3274918667U;
long long int var_5 = -466885839846135264LL;
_Bool var_6 = (_Bool)1;
int var_7 = 1857810170;
int zero = 0;
signed char var_8 = (signed char)79;
int var_9 = 782036628;
unsigned int var_10 = 1899510380U;
short var_11 = (short)18211;
int arr_0 [9] [9] ;
void init() {
    for (size_t i_0 = 0; i_0 < 9; ++i_0) 
        for (size_t i_1 = 0; i_1 < 9; ++i_1) 
            arr_0 [i_0] [i_1] = 1523692294;
}

void checksum() {
    hash(&seed, var_8);
    hash(&seed, var_9);
    hash(&seed, var_10);
    hash(&seed, var_11);
}
void test(unsigned int var_3, long long int var_5, _Bool var_6, int var_7, int zero, int arr_0 [9] [9] );

int main() {
    init();
    test(var_3, var_5, var_6, var_7, zero, arr_0 );
    checksum();
    printf("0x%08llx\n", seed & 0xFFFFFFFF);
    printf("0x%08llx\n", seed >> 32);
#ifdef DSP_VALIDATION
    dbg_output(&seed, 2, 4);
#endif
}
