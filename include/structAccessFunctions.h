#ifndef STRUCT_ACCESS_FUNCTIONS_H
#define STRUCT_ACCESS_FUNCTIONS_H

int* listHead (list_t* lst);

int* listTail (list_t* lst);

size_t* listFree (list_t* lst);

int* listNext (list_t* lst, size_t numOfNode);

int* listPrev (list_t* lst, size_t numOfNode);

size_t* listNodeRepCounter (list_t* lst, size_t numOfNode);

char** listNodeWord (list_t* lst, size_t numOfNode);

size_t* listNodeWordLen (list_t* lst, size_t numOfNode);

size_t* listSize (list_t* lst);

size_t* listCapacity (list_t* lst);

int* isListLinear (list_t* lst);

list_t** hashTableList (hashTable_t* hashTable, size_t numOfList);

size_t* hashTableArrSize (hashTable_t* hashTable);

size_t* hashTableNumOfWords (hashTable_t* hashTable);

double* hashTableLoadFactor (hashTable_t* hashTable);

int* hashTableErrorCode (hashTable_t* hashTable);

hashFunc_t* hashTableFunc (hashTable_t* hashTable);

dump_t** hashTableDumpStruct (hashTable_t* hashTable);

info_t** hashTableInfoStruct (hashTable_t* hashTable);

#endif
