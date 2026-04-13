#include <stdio.h>
#include <assert.h>

#include "../include/structsAndConsts.h"
#include "../include/structAccessFunctions.h"

int* listHead (list_t* lst) {
    assert(lst);
    return &(((lst->nodeArr)[0]).next);
}

int* listTail (list_t* lst) {
    assert(lst);
    return &((lst->nodeArr)[0]).prev;
}

size_t* listFree (list_t* lst) {
    assert(lst);
    return &(lst->free);
}

int* listNext (list_t* lst, size_t numOfNode) {
    assert(lst);

    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    }

    return &(((lst->nodeArr)[numOfNode]).next);
}

int* listPrev (list_t* lst, size_t numOfNode) {
    assert(lst);

    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    }

    return &(((lst->nodeArr)[numOfNode]).prev);
}

size_t* listNodeRepCounter (list_t* lst, size_t numOfNode) {
    assert(lst);

    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    }

    return &(((lst->nodeArr)[numOfNode]).data.repCounter);
}

char** listNodeWord (list_t* lst, size_t numOfNode) {
    assert(lst);

    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    }

    return &(((lst->nodeArr)[numOfNode]).data.word);
}

size_t* listNodeWordLen (list_t* lst, size_t numOfNode) {
    assert(lst);

    if (numOfNode > lst->capacity) {
        printf("Error! request for too big numberOfNode in func %s\n", __func__);
        return NULL;
    }

    return &(((lst->nodeArr)[numOfNode]).data.wordLen);
}

size_t* listSize (list_t* lst) {
    assert(lst);
    return &(lst->size);
}

size_t* listCapacity (list_t* lst) {
    assert(lst);
    return &(lst->capacity);
}

int* isListLinear (list_t* lst) {
    assert(lst);
    return &(lst->isLinear);
}

list_t** hashTableList (hashTable_t* hashTable, size_t numOfList) {
    assert(hashTable);
    return hashTable->listArr + numOfList;
}

size_t* hashTableArrSize (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->sizeOfArr);
}

size_t* hashTableNumOfWords (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->tableNumOfWords);
}

double* hashTableLoadFactor (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->loadFactor);
}

int* hashTableErrorCode (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->errorCode);
}

hashFunc_t* hashTableFunc (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->hashFunc);
}

dump_t** hashTableDumpStruct (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->dump);
}

info_t** hashTableInfoStruct (hashTable_t* hashTable) {
    assert(hashTable);
    return &(hashTable->creationInfo);
}
