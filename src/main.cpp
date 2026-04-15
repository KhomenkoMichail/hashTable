#include <stdio.h>

#include "../include/structsAndConsts.h"
#include "../include/hashTableFunctions.h"
#include "../include/hashFunctions.h"
#include "../include/structAccessFunctions.h"
#include "../include/helpingFunctions.h"

int main (void) {

    wordArrStruct_t wordArr= {};
    getWordArrStruct(&wordArr, "warAndPeace.txt");

    hashTable_t crcHashTable = {};
    dump_t dump = {};
    HASH_TABLE_CTOR(crcHashTable, HASH_TABLE_SIZE, crc32Hash, &dump);

    fillHashTable (&crcHashTable, &wordArr);

    shuffleWords(&wordArr);

    testHashTable(&crcHashTable, &wordArr, NUM_OF_TESTS);

    hashTableDtor(&crcHashTable, *hashTableArrSize(&crcHashTable));
    freeWordArrStruct(&wordArr);

    return 0;
}
