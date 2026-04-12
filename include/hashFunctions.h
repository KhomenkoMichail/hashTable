#ifndef HASH_FUNCTIONS_H
#define HASH_FUNCTIONS_H

uint64_t alwaysZeroHash (const char* str);

uint64_t firstLetterASCIICodeHash (const char* str);

uint64_t strlenHash (const char* str);

uint64_t sumASCIIcodesHash (const char* str);

uint64_t rolHash (const char* str);

uint64_t rorHash (const char* str);

uint64_t gnuHash (const char* str);

uint64_t crc32Hash(const char* str);

#endif
