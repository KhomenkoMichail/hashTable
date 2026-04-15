#include <stdio.h>
#include <stdint.h>
#include <immintrin.h>

#include "../include/structsAndConsts.h"
#include "../include/hashFunctions.h"

uint64_t alwaysZeroHash (const char* str) {
    (void)str;
    return 0;
}

uint64_t firstLetterASCIICodeHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)
    return (uint64_t)*str;
}

uint64_t strlenHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)
    uint64_t hash = 0;

    for ( ; *str; str++)
        hash++;

    return hash;
}

uint64_t sumASCIIcodesHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)
    uint64_t hash = 0;

    for ( ; *str; str++)
        hash += (uint64_t)*str;

    return hash;
}

uint64_t rolHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)

    uint64_t hash = (uint8_t)(*str);
    str++;

    for ( ; *str; str++)
        hash = ((hash << 1) | (hash >> 63)) ^ (uint8_t)(*str);

    return hash;
}

uint64_t rorHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)

    uint64_t hash = (uint8_t)(*str);
    str++;

    for ( ; *str; str++)
        hash = ((hash >> 1) | (hash << 63)) ^ (uint8_t)(*str);

    return hash;
}

uint64_t gnuHash (const char* str) {
    DEBUG(if (!str || !*str) return 0;)
    uint64_t hash = 5381;

    for ( ; *str; str++)
        hash = (hash << 5) + hash + (uint8_t)(*str);

    return hash;
}

uint64_t crc32Hash(const char* str) {
    DEBUG(if (!str) return 0;)

    uint64_t crc = 0xFFFFFFFF;

    while (*str) {
        crc = _mm_crc32_u8(crc, (uint8_t)*str);
        str++;
    }

    return crc;
}
