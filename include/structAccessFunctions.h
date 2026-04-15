#ifndef STRUCT_ACCESS_FUNCTIONS_H
#define STRUCT_ACCESS_FUNCTIONS_H

#include <stdio.h>
#include <assert.h>

#include "../include/structsAndConsts.h"
#include "../include/structAccessFunctions.h"

static inline int* listHead (list_t* lst) {
    DEBUG(assert(lst);)
    return &(((lst->nodeArr)[0]).next);
}

static inline int* listTail (list_t* lst) {
    DEBUG(assert(lst);)
    return &((lst->nodeArr)[0]).prev;
}

static inline size_t* listFree (list_t* lst) {
    DEBUG(assert(lst);)
    return &(lst->free);
}

static inline int* listNext (list_t* lst, size_t numOfNode) {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).next);
}

static inline int* listPrev (list_t* lst, size_t numOfNode) {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).prev);
}

static inline size_t* listNodeRepCounter (list_t* lst, size_t numOfNode) {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).data.repCounter);
}

static inline char** listNodeWord (list_t* lst, size_t numOfNode) {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).data.word);
}

static inline size_t* listNodeWordLen (list_t* lst, size_t numOfNode) {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).data.wordLen);
}

static inline size_t* listSize (list_t* lst) {
    DEBUG(assert(lst);)
    return &(lst->size);
}

static inline size_t* listCapacity (list_t* lst) {
    DEBUG(assert(lst);)
    return &(lst->capacity);
}

static inline int* isListLinear (list_t* lst) {
    DEBUG(assert(lst);)
    return &(lst->isLinear);
}

static inline list_t** hashTableList (hashTable_t* hashTable, size_t numOfList) {
    DEBUG(assert(hashTable);)
    return hashTable->listArr + numOfList;
}

static inline size_t* hashTableArrSize (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->sizeOfArr);
}

static inline size_t* hashTableNumOfWords (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->tableNumOfWords);
}

static inline double* hashTableLoadFactor (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->loadFactor);
}

static inline int* hashTableErrorCode (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->errorCode);
}

static inline hashFunc_t* hashTableFunc (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->hashFunc);
}

static inline dump_t** hashTableDumpStruct (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->dump);
}

static inline info_t** hashTableInfoStruct (hashTable_t* hashTable) {
    DEBUG(assert(hashTable);)
    return &(hashTable->creationInfo);
}

static inline uint64_t* listNodeWordHash (list_t* lst, size_t numOfNode)  {
    DEBUG(assert(lst);)

    DEBUG(
    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    })

    return &(((lst->nodeArr)[numOfNode]).data.wordHash);
}

#endif
