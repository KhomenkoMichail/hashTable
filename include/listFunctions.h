#ifndef LIST_FUNCTIONS_H
#define LIST_FUNCTIONS_H

#define LIST_CTOR(listName, capacity, listInfo) ({\
    (listInfo).name = #listName;\
    (listInfo).nameOfFile = __FILE__;\
    (listInfo).nameOfFunc = __func__;\
    (listInfo).numOfLine = __LINE__;\
    int returnableValue = listCtor(&(listName), capacity, listInfo);\
    returnableValue;\
})

#define InsertAfter(listAddress, anchorElemNum, dataValue, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int returnableValue = insertAfter(listAddress, anchorElemNum, dataValue, dumpInfoAddress);\
    returnableValue;\
})

#define InsertBefore(listAddress, anchorElemNum, dataValue, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int returnableValue = insertBefore(listAddress, anchorElemNum, dataValue, dumpInfoAddress);\
    returnableValue;\
})

#define InsertBeforeHead(listAddress, dataValue, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int head = *(listHead(listAddress));\
    int returnableValue = insertBefore(listAddress, head, dataValue, dumpInfoAddress);\
    returnableValue;\
})

#define InsertAfterTail(listAddress, dataValue, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int tail = *(listTail(listAddress));\
    int returnableValue = insertAfter(listAddress, tail, dataValue, dumpInfoAddress);\
    returnableValue;\
})

#define DeleteElement(listAddress, deletedElement, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int returnableValue = deleteElement(listAddress, deletedElement, dumpInfoAddress);\
    returnableValue;\
})

#define MakeListLinear(listAddress, dumpInfoAddress) ({\
    (dumpInfoAddress)->nameOfFile = __FILE__;\
    (dumpInfoAddress)->numOfLine = __LINE__;\
    int returnableValue = makeListLinear(listAddress, dumpInfoAddress);\
    returnableValue;\
})

int listCtor (struct list_t* lst, ssize_t capacity, struct info_t listInfo);

listErr_t reallocListUP (struct list_t* lst);

int fprintfGraphDump (struct list_t* lst, const char* textGraphFileName);

int listVerifier (struct list_t* lst);

void listDump (struct list_t* lst, struct dump_t* dumpInfo, const char* message);

void fprintfListDataForDump (struct list_t* lst, FILE* dumpFile);

void createGraphImageForDump (struct list_t* lst, FILE* dumpFile, const char* nameOfTextGraphFile);

int findBadFreeNode (struct list_t* lst);

int findBadNextAndPrevMatch (struct list_t* lst);

void fprintfListErrorsForDump (struct list_t* lst, FILE* dumpFile, struct dump_t* dumpInfo);

int insertAfter (struct list_t* lst, size_t anchorElemNum, listData_t dataValue, struct dump_t* dumpInfo);

int insertBefore (struct list_t* lst, size_t anchorElemNum, listData_t dataValue, struct dump_t* dumpInfo);

int deleteElement (struct list_t* lst, size_t deletedElement, struct dump_t* dumpInfo);

listErr_t findBadNodeCycle (struct list_t* lst);

listErr_t findBadAnchorElemNum (struct list_t* lst, size_t anchorElemNum, struct dump_t* dumpInfo);

listErr_t findBadDeleteNum (struct list_t* lst, size_t deletedElement, struct dump_t* dumpInfo);

listErr_t findFreeListCycle (struct list_t* lst);

void userListPrintf (struct list_t* lst);

void listDtor (struct list_t* lst);

int linearOrderNodeComparator (const void* firstStruct, const void* secondStruct);

int makeListLinear (struct list_t* lst, struct dump_t* dumpInfo);

listErr_t reallocListDown (struct list_t* lst);

int findNonlinearList(struct list_t* lst);

#endif
