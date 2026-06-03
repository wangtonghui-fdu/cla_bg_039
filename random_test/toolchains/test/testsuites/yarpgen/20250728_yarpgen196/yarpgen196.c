/* Merged from yarpgen196 */

/* Header content */
extern signed char var_6;
extern _Bool var_7;
extern int var_8;
extern unsigned long long int arr_2 [8] ;
extern unsigned char arr_3 [8] ;


/* Function implementations */
/*
yarpgen version 2.0 (build 5da6e3a on 2024:12:29)
Seed: 139326380
Invocation: ./yarpgen --std=c -o yarpgen196
*/

#define max(a,b) \
    ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
       _a > _b ? _a : _b; })
#define min(a,b) \
    ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
       _a < _b ? _a : _b; })
void test(signed char var_1, unsigned char var_2, int var_3, _Bool var_5, int zero, unsigned long long int arr_1 [8] ) {
    if (((/* implicit */_Bool) var_1))
    {
        var_6 = var_1;
        var_7 = ((/* implicit */_Bool) ((short) var_3));
    }

    /* LoopNest 1 */
    for (_Bool i_0 = ((/* implicit */int) ((/* implicit */_Bool) var_2))/*1*/; i_0 < (_Bool)1/*1*/; i_0 += ((/* implicit */int) ((/* implicit */_Bool) var_1))/*1*/) 
    {
        {
            arr_2 [i_0 - 1] = arr_1 [i_0 - 1];
            arr_3 [i_0 - 1] = ((/* implicit */unsigned char) min((((/* implicit */unsigned long long int) 0)), (arr_1 [i_0])));
        }
    } 
    var_8 = ((/* implicit */int) var_5);
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

signed char var_1 = (signed char)81;
unsigned char var_2 = (unsigned char)75;
int var_3 = 514042799;
_Bool var_5 = (_Bool)0;
int zero = 0;
signed char var_6 = (signed char)127;
_Bool var_7 = (_Bool)0;
int var_8 = 905959931;
unsigned long long int arr_1 [8] ;
unsigned long long int arr_2 [8] ;
unsigned char arr_3 [8] ;
void init() {
    for (size_t i_0 = 0; i_0 < 8; ++i_0) 
        arr_1 [i_0] = 9067610395219784104ULL;
    for (size_t i_0 = 0; i_0 < 8; ++i_0) 
        arr_2 [i_0] = 1954533216482029548ULL;
    for (size_t i_0 = 0; i_0 < 8; ++i_0) 
        arr_3 [i_0] = (unsigned char)157;
}

void checksum() {
    hash(&seed, var_6);
    hash(&seed, var_7);
    hash(&seed, var_8);
    for (size_t i_0 = 0; i_0 < 8; ++i_0) 
        hash(&seed, arr_2 [i_0] );
    for (size_t i_0 = 0; i_0 < 8; ++i_0) 
        hash(&seed, arr_3 [i_0] );
}
void test(signed char var_1, unsigned char var_2, int var_3, _Bool var_5, int zero, unsigned long long int arr_1 [8] );

int main() {
    init();
    test(var_1, var_2, var_3, var_5, zero, arr_1 );
    checksum();
    printf("0x%08llx\n", seed & 0xFFFFFFFF);
    printf("0x%08llx\n", seed >> 32);
#ifdef DSP_VALIDATION
    dbg_output(&seed, 2, 4);
#endif
}
