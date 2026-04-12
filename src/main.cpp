#include <stdio.h>

#include "../include/structsAndConsts.h"
#include "../include/hashTableFunctions.h"
#include "../include/hashFunctions.h"
#include "../include/structAccessFunctions.h"

int main (void) {

    hashTable_t hashTable = {};
    dump_t dump = {};

    dump.nameOfDumpFile = "dump.html";
    dump.nameOfGraphFile = "textGraph.txt";

    HASH_TABLE_CTOR(hashTable, 100, sumASCIIcodes, &dump);
    fillHashTable(&hashTable, "warAndPeace.txt");

    hashTableDtor(&hashTable, *hashTableArrSize(&hashTable));

    return 0;
}
