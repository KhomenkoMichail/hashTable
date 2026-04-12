#ifndef LIST_FUNCTIONS_H
#define LIST_FUNCTIONS_H

int listCtor (list_t* lst, ssize_t capacity, info_t listInfo);

int deleteElement (list_t* lst, size_t deletedElement, dump_t* lstDump);

listErr_t reallocListUP (list_t* lst);

int fprintfLstGraphDump (list_t* lst, const char* textGraphFileName);

int fprintfCurrentListGraph (list_t* lst, size_t numOfList, FILE* graphFile, int isBT);

void listDump (list_t* lst, dump_t* lstDump, const char* message);

void fprintfListDataForDump (list_t* lst, FILE* dumpFile);

void createLstGraphImageForDump (list_t* lst, FILE* dumpFile, const char* nameOfTextGraphFile);

int listVerifier (list_t* lst);

int findBadFreeListNode (list_t* lst);

int findBadNextAndPrevMatch (list_t* lst);

int fprintfListErrorsForDump (list_t* lst, FILE* dumpFile, dump_t* lstDump);

int insertAfter (list_t* lst, int anchorElemNum, char* newWord, size_t wordLen,
                 dump_t* lstDump);

listErr_t findBadNodeCycle (list_t* lst);

listErr_t findBadAnchorElemNum (list_t* lst, size_t anchorElemNum, dump_t* lstDump);

listErr_t findBadDeleteNum(list_t* lst, size_t deletedElement, dump_t* lstDump);

int insertBefore (list_t* lst, int anchorElemNum, char* newWord, size_t wordLen,
                  dump_t* lstDump);

listErr_t findFreeListCycle (list_t* lst);

void listDtor (list_t* lst);

int linearOrderNodeComparator(const void* firstStruct, const void* secondStruct);

int makeListLinear (list_t* lst, dump_t* lstDump);

listErr_t reallocListDown (list_t* lst);

int findNonlinearList(list_t* lst);

int findWordInList(list_t* lst, const char* searchWord, size_t wordLen);

#endif
