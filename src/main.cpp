#include <stdio.h>

#include "../include/structsAndConsts.h"
#include "../include/hashTableFunctions.h"
#include "../include/hashFunctions.h"
#include "../include/structAccessFunctions.h"

int main (void) {

    dump_t dump = {};
    dump.nameOfDumpFile = "dump.html";
    dump.nameOfGraphFile = "textGraph.txt";

    FILE* file = fopen("hist.html", "w");

    hashTable_t alwaysZero = {};
    HASH_TABLE_CTOR(alwaysZero, 251, alwaysZeroHash, &dump);
    fillHashTable(&alwaysZero, "warAndPeace.txt");
    fprintfHashTableHistogram(&alwaysZero, file);
    hashTableDtor(&alwaysZero, *hashTableArrSize(&alwaysZero));


    hashTable_t firstLetterASCIICode = {};
    HASH_TABLE_CTOR(firstLetterASCIICode, 251, firstLetterASCIICodeHash, &dump);
    fillHashTable(&firstLetterASCIICode, "warAndPeace.txt");
    fprintfHashTableHistogram(&firstLetterASCIICode, file);
    hashTableDtor(&firstLetterASCIICode, *hashTableArrSize(&firstLetterASCIICode));


    hashTable_t strlen = {};
    HASH_TABLE_CTOR(strlen, 251, strlenHash, &dump);
    fillHashTable(&strlen, "warAndPeace.txt");
    fprintfHashTableHistogram(&strlen, file);
    hashTableDtor(&strlen, *hashTableArrSize(&strlen));


    hashTable_t sumASCIIcodesSmall = {};
    HASH_TABLE_CTOR(sumASCIIcodesSmall, 251, sumASCIIcodesHash, &dump);
    fillHashTable(&sumASCIIcodesSmall, "shortWarAndPeace.txt");
    fprintfHashTableHistogram(&sumASCIIcodesSmall, file);
    hashTableDtor(&sumASCIIcodesSmall, *hashTableArrSize(&sumASCIIcodesSmall));


    hashTable_t sumASCIIcodesBig = {};
    HASH_TABLE_CTOR(sumASCIIcodesBig, 251, sumASCIIcodesHash, &dump);
    fillHashTable(&sumASCIIcodesBig, "warAndPeace.txt");
    fprintfHashTableHistogram(&sumASCIIcodesBig, file);
    hashTableDtor(&sumASCIIcodesBig, *hashTableArrSize(&sumASCIIcodesBig));


    hashTable_t rol = {};
    HASH_TABLE_CTOR(rol, 251, rolHash, &dump);
    fillHashTable(&rol, "warAndPeace.txt");
    fprintfHashTableHistogram(&rol, file);
    hashTableDtor(&rol, *hashTableArrSize(&rol));


    hashTable_t ror = {};
    HASH_TABLE_CTOR(ror, 251, rorHash, &dump);
    fillHashTable(&ror, "warAndPeace.txt");
    fprintfHashTableHistogram(&ror, file);
    hashTableDtor(&ror, *hashTableArrSize(&ror));


    hashTable_t gnu = {};
    HASH_TABLE_CTOR(gnu, 251, gnuHash, &dump);
    fillHashTable(&gnu, "warAndPeace.txt");
    fprintfHashTableHistogram(&gnu, file);
    hashTableDtor(&gnu, *hashTableArrSize(&gnu));


    hashTable_t crc32 = {};
    HASH_TABLE_CTOR(crc32, 251, crc32Hash, &dump);
    fillHashTable(&crc32, "warAndPeace.txt");
    fprintfHashTableHistogram(&crc32, file);
    hashTableDtor(&crc32, *hashTableArrSize(&crc32));

    fclose(file);

    return 0;
}
