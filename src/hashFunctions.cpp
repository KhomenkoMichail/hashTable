#include <stdio.h>
#include <stdint.h>

#include "../include/hashFunctions.h"

uint64_t alwaysZeroHash (const char* str) {
    (void)str;
    return 0;
}

uint64_t sumASCIIcodes (const char* str) {
    uint64_t hash = 0;
    for (const char* bufPos = str; *bufPos; bufPos++)
        hash += (uint64_t)*bufPos;

    return hash;
}
