#ifndef HASH_TABLE_FUNCTIONS_H
#define HASH_TABLE_FUNCTIONS_H

#define HASH_TABLE_CTOR(hashTableName, sizeOfArr, hashFunc, htDump) ({\
    info_t htInfo = {};\
    (htInfo).name = #hashTableName;\
    (htInfo).nameOfFile = __FILE__;\
    (htInfo).nameOfFunc = __func__;\
    (htInfo).numOfLine = __LINE__;\
    int returnableValue = hashTableCtor(&(hashTableName), sizeOfArr, hashFunc, &htInfo, htDump);\
    returnableValue;\
})

int hashTableCtor (hashTable_t* hashTable, size_t sizeOfArr, hashFunc_t hashFunc,
                   info_t* creationInfo, dump_t* htDump);

void hashTableDtor (hashTable_t* hashTable, size_t numOfLists);

int hashTableVerifier (hashTable_t* hashTable);

void hashTableDump (hashTable_t* hashTable, const char* message);

void fprintfHashTableErrorsForDump (hashTable_t* hashTable, FILE* dumpFile);

void fprintfHashTableDataForDump (hashTable_t* hashTable, FILE* dumpFile);

void createHtGraphImageForDump (hashTable_t* hashTable, FILE* dumpFile,
                                const char* nameOfTextGraphFile);

void fprintfHtGraphDump (hashTable_t* hashTable, const char* nameOfTextGraphFile);

int fillHashTable (hashTable_t* hashTable, const char* nameOfInputFile);

#endif
