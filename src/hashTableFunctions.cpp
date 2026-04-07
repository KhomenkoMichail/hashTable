#include <stdlib.h>
#include <assert.h>

#include "../include/structsAndConsts.h"
#include "../include/structAccessFunctions.h"
#include "../include/listFunctions.h"
#include "../include/hashTableFunctions.h"


int hashTableCtor (struct hashTable_t* hashTable, size_t sizeOfArr, hashFunc_t hashFunc) {
    assert(hashTable);
    assert(hashFunc);

    hashTableList(hashTable, 0)     = (struct list_t**)calloc(sizeOfArr, sizeof(struct list_t*));

    if (!hashTableList(hashTable, 0)) {
        printf("ERROR! Bad hashTableCtor calloc!\n");
        *hashTableErrorCode(hashTable) = htBAD_CTOR_CALLOC;
        return htBAD_CTOR_CALLOC;
    }

    *hashTableArrSize(hashTable)    = sizeOfArr;
    *hashTableSize(hashTable)       = 0;
    *hashTableLoadFactor(hashTable) = 0.0;

    *hashTableFunc(hashTable)       = hashFunc;

    *hashTableErrorCode             = 0;

    for (size_t numOfList = 0; numOfList < sizeOfArr; numOfList++) {
        *hashTableList(hashTable, numOfList) = (list_t*)calloc(1, sizeof(list_t));

        if (!(*hashTableList(hashTable, numOfList))) {
            printf("ERROR! Bad hashTableCtor calloc!\n");
            *hashTableErrorCode(hashTable) = htBAD_CTOR_CALLOC;
            hashTableDtor(hashTable, numOfList - 1);
            return htBAD_CTOR_CALLOC;
        }

        struct info_t listInfo= {};
        if (LIST_CTOR(**hashTableList(hashTable, numOfList), 1, listInfo) != lstNO_ERRORS) {
            hashTableDtor(hashTable, numOfList);
            return lstBAD_CTOR_CALLOC;
        }
    }

    return htNO_ERRORS;
}

void hashTableDtor(struct hashTable_t* hashTable, size_t numOfLists) {
    assert(hashTable);

    for (int curList = 0; curList < numOfLists; curList++)
        listDtor(*hashTableList(hashTable, curList));

    free(hashTableList(hashTable, 0));
}


