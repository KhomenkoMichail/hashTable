#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>

#include "../include/structsAndConsts.h"
#include "../include/structAccessFunctions.h"
#include "../include/listFunctions.h"

int listCtor (list_t* lst, ssize_t capacity, info_t listInfo) {
    DEBUG(assert(lst);)

    lst->nodeArr = (node_t*)calloc(capacity, sizeof(node_t));
    #ifdef DEBUG_MODE
        if (!lst->nodeArr) {
            printf("ERROR! Bad listCtor calloc!\n");
            lst->errorCode = lstBAD_CTOR_CALLOC;
            return lstBAD_CTOR_CALLOC;
        }
    #endif

    *(listCapacity(lst)) = capacity;
    *(listSize(lst)) = 0;

    *(listNodeRepCounter(lst, 0)) = NULL_CANARY;

    *(listHead(lst)) = 0;
    *(listTail(lst)) = 0;

    for (int nodeNum = 1; nodeNum < capacity; nodeNum++) {
        *(listNodeRepCounter(lst, nodeNum)) = POISON;
        *(listNext(lst, nodeNum)) = nodeNum + 1;
        *(listPrev(lst, nodeNum)) = -1;
    }
    *(listNext(lst, capacity - 1)) = 0;

    *(listFree(lst)) = 1;

    (lst->creationInfo).name = listInfo.name;
    (lst->creationInfo).nameOfFunc = listInfo.nameOfFunc;
    (lst->creationInfo).nameOfFile = listInfo.nameOfFile;
    (lst->creationInfo).numOfLine = listInfo.numOfLine;

    *isListLinear(lst) = 1;

    lst->errorCode = lstNO_ERRORS;
    DEBUG(listVerifier(lst);)

    return lst->errorCode;
}

int deleteElement (list_t* lst, size_t deletedElement, dump_t* lstDump) {
    DEBUG(assert(lst);)
    DEBUG(assert(lstDump);)
    (void)lstDump;

    #ifdef DEBUG_MODe
        lstDump->nameOfFunc = __func__;
        char beforeMessage[STR_SIZE] =  {};
        char afterMessage[STR_SIZE]= {};
        snprintf(beforeMessage, sizeof(beforeMessage), "BEFORE delete element with idx [%lu]", deletedElement);
        snprintf(afterMessage, sizeof(afterMessage), "AFTER delete element with idx [%lu]", deletedElement);

    if (findBadDeleteNum(lst, deletedElement, lstDump))
        return lstBAD_DELETE_NUM;

    if(listVerifier(lst)) {
        listDump (lst, lstDump, beforeMessage);
        return lst->errorCode;
    }
    #endif

    *(listNodeRepCounter(lst, deletedElement)) = POISON;
    *(listNodeWordLen(lst, deletedElement)) = 0;

    free(*(listNodeWord(lst, deletedElement)));
    *(listNodeWord(lst, deletedElement)) = NULL;

    int prevElemNum = *(listPrev(lst, deletedElement));
    int nextElemNum = *(listNext(lst, deletedElement));

    *(listNext(lst, prevElemNum)) = *(listNext(lst, deletedElement));
    *(listNext(lst, deletedElement)) = (int)*(listFree(lst));

    *(listPrev(lst, nextElemNum)) = prevElemNum;
    *(listPrev(lst, deletedElement)) = -1;

    *(listFree(lst)) = deletedElement;
    *(listSize(lst)) -= 1;

    #ifdef DEBUG_MODE
        if(listVerifier(lst)) {
            listDump (lst, lstDump, afterMessage);
            return lst->errorCode;
        }
    #endif

    return 0;
}

listErr_t reallocListUP (list_t* lst) {
    DEBUG(assert(lst);)

    size_t oldCapacity = *(listCapacity(lst));
    *(listCapacity(lst)) = 2*oldCapacity;

    node_t* newArr = (node_t*)realloc(lst->nodeArr, (lst->capacity)*sizeof(node_t));

    if (!newArr) {
        printf("Error! Bad realloc!\n");
        return lstBAD_REALLOC;
    }
    lst->nodeArr = newArr;

    for (size_t nodeNum = *(listCapacity(lst)) / 2; nodeNum < *(listCapacity(lst)); nodeNum++) {
        *(listNodeRepCounter(lst, nodeNum)) = POISON;
        *(listNodeWord(lst, nodeNum)) = NULL;
        *(listNodeWordLen(lst, nodeNum)) = 0;
        *(listNext(lst, nodeNum)) = (int)(nodeNum + 1);
        *(listPrev(lst, nodeNum)) = -1;
    }
    *(listNext(lst, oldCapacity*2 - 1)) = 0;

    *(listFree(lst)) = *(listCapacity(lst)) / 2;
    return lstNO_ERRORS;
}

int fprintfLstGraphDump (list_t* lst, const char* textGraphFileName) {
    assert(lst);
    assert(textGraphFileName);

    FILE* graphFile = fopen(textGraphFileName, "w");

    if (graphFile == NULL) {
        fprintf(stderr, "Error of opening file \"%s\"", textGraphFileName);
        perror("");
        return 1;
    }

    fprintf(graphFile, "digraph List {\n");
    fprintf(graphFile, "    rankdir = LR;\n");
    fprintf(graphFile, "    node [shape = Mrecord, color = black];\n");

    fprintfCurrentListGraph(lst, 0, graphFile, 0);

    fprintf(graphFile, "    head [shape = box3d, label=\"HEAD\", style = filled, fillcolor = \"#79D47F\", color = black];\n");
    fprintf(graphFile, "    tail [shape = box3d, label=\"TAIL\", style = filled, fillcolor = \"#E07397\", color = black];\n");
    fprintf(graphFile, "    free [shape = box3d, label=\"FREE\", style = filled, fillcolor = \"#E3f194\", color = black];\n");

    fprintf(graphFile, "    head -> node%d_0 [color = \"#79D47F\"];\n", *(listHead(lst)));
    fprintf(graphFile, "    tail -> node%d_0 [color = \"#E07397\"];\n", *(listTail(lst)));
    if (*(listFree(lst)) != 0)
        fprintf(graphFile, "    free -> node%lu_0 [color = gray];\n", *(listFree(lst)));

    fprintf(graphFile, "    { rank = same; head; tail; free; }\n");

    fprintf(graphFile, " }\n");


    if (fclose(graphFile) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", textGraphFileName);
        perror("");
        return 1;
    }

    return 0;
}

int fprintfCurrentListGraph (list_t* lst, size_t numOfList, FILE* graphFile, int isBT) {
    assert(lst);
    assert(graphFile);

    const char* bL = isBT ? "{" : "";
    const char* bR = isBT ? "}" : "";

    for (int numOfNode = 0; numOfNode < (int)(lst->capacity); numOfNode++) {

        const char* fillColor = "#C2BBBD";
        if (numOfNode == *(listHead(lst))) fillColor = "#79D47F";
        if (numOfNode == *(listTail(lst))) fillColor = "#E07397";
        if ((*(listNodeRepCounter(lst, numOfNode)) == POISON) && (*(listPrev(lst, numOfNode)) == -1))
            fillColor = "#E3f194";

        switch (*listNodeRepCounter(lst, numOfNode)) {
            case POISON:

                fprintf(graphFile, "    node%d_%lu [label = \"%s idx = %d | data = PZN |",
                        numOfNode, numOfList, bL, numOfNode);
                break;
            case NULL_CANARY:
                fprintf(graphFile, "    node%d_%lu [label = \"%s idx = %d | data = CANARY |",
                        numOfNode, numOfList, bL, numOfNode);
                break;
            default:
                fprintf(graphFile, "    node%d_%lu [label = \"%s idx = %d | word = %s | len = %lu | repCounter = %lu |",
                        numOfNode, numOfList, bL, numOfNode, *(listNodeWord(lst, numOfNode)),
                         *(listNodeWordLen(lst, numOfNode)), *(listNodeRepCounter(lst, numOfNode)));
                break;
        }

        fprintf(graphFile, " next = %d | prev = %d %s\", style = filled, fillcolor = \"%s\", color = black];\n",
                *(listNext(lst, numOfNode)), *(listPrev(lst, numOfNode)), bR, fillColor);
    }

    fprintf(graphFile, "\n");

    for (size_t numOfNode = 0; numOfNode < *(listCapacity(lst)) - 1; numOfNode++)
        fprintf(graphFile, "    node%lu_%lu -> node%lu_%lu [weight = 500, style = invis, color = white];\n", numOfNode, numOfList, numOfNode + 1, numOfList);

    for (int numOfNode = 0; numOfNode < (int)(*(listCapacity(lst))); numOfNode++) {

        if (*(listPrev(lst, numOfNode)) == -1)
            continue;

        int nextNum = *(listNext(lst, numOfNode));

        if ((nextNum > (int)(*(listCapacity(lst)))) || (nextNum < 0)) {
            fprintf(graphFile, "    errorNode%d_%lu [shape = doubleoctagon, style = filled, fillcolor = \"#ff0000ff\",  color = \"#ff0000ff\", label = \" idx = %d\", fontcolor = white];\n", nextNum, numOfList, nextNum);
            fprintf(graphFile, "    node%d_%lu -> errorNode%d_%lu [color = \"#ff0000ff\", penwidth = 4];\n", numOfNode, numOfList, nextNum, numOfList);
            continue;
        }

        if (numOfNode == *(listPrev(lst, nextNum)))
            fprintf(graphFile, "    node%d_%lu -> node%d_%lu [dir = both, color = \"#9faafaff\"];\n", numOfNode, numOfList, nextNum, numOfList);
        else {
            fprintf(graphFile, "    node%d_%lu -> node%d_%lu [color = \"#220ff5ff\"];\n", numOfNode, numOfList, *(listNext(lst, numOfNode)), numOfList);
            fprintf(graphFile, "    errorNode%d_%lu [shape = doubleoctagon, style = filled, fillcolor = \"#ff0000ff\",  color = \"#ff0000ff\", label = \" idx = %d\", fontcolor = white];\n", *(listPrev(lst, nextNum)), numOfList, *(listPrev(lst, nextNum)));
            fprintf(graphFile, "    node%d_%lu -> errorNode%d_%lu [color = \"#ff0000ff\", penwidth = 4];\n", nextNum, numOfList, *(listPrev(lst, nextNum)), numOfList);
        }
    }

    size_t freeListCounter = 0;
    for (size_t numOfNode = *(listFree(lst));
        (*(listNext(lst, numOfNode)) != 0) && (*(listFree(lst)) != 0) && (freeListCounter <= (*(listCapacity(lst)) - *(listSize(lst))));
        numOfNode = *(listNext(lst, numOfNode)), freeListCounter++)
        fprintf(graphFile, "    node%lu_%lu -> node%d_%lu [color = gray];\n", numOfNode, numOfList, *(listNext(lst, numOfNode)), numOfList);

    fprintf(graphFile, "\n");
    return 0;
}

void listDump (list_t* lst, dump_t* lstDump, const char* message) {
    assert(lst);
    assert(lstDump);
    assert(message);

    const char* nameOfTextGraphFile = lstDump->nameOfGraphFile;

    FILE* dumpFile = 0;
    if(lstDump->dumpFileWasOpened)
        dumpFile = fopen(lstDump->nameOfDumpFile, "a");
    else {
        dumpFile = fopen(lstDump->nameOfDumpFile, "w");
        lstDump->dumpFileWasOpened = 1;
    }

    if (dumpFile == NULL) {
        fprintf(stderr, "Error of opening file \"%s\"", lstDump->nameOfDumpFile);
        perror("");
        return;
    }

    fprintf(dumpFile, "<pre>\n");
    fprintf(dumpFile, "<h3>listDump() <font color=red>from %s at %s:%u</font></h3>\n",
    lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);

    fprintf(dumpFile, "<h2><font color=blue>%s</font></h2>\n", message);
    fprintf(dumpFile, "list \"%s\" [%p] from %s at %s:%u\n\n",
    (lst->creationInfo).name, lst, lst->creationInfo.nameOfFunc, lst->creationInfo.nameOfFile, lst->creationInfo.numOfLine);


    fprintfListErrorsForDump (lst, dumpFile, lstDump);

    if(!(lst->errorCode & -lstBAD_CAPACITY)) {
        fprintfListDataForDump (lst, dumpFile);
        createLstGraphImageForDump (lst, dumpFile, nameOfTextGraphFile);
    }

    if (fclose(dumpFile) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", lstDump->nameOfGraphFile);
        perror("");
        return;
    }
}

void fprintfListDataForDump (list_t* lst, FILE* dumpFile) {
    assert(lst);
    assert(dumpFile);

    fprintf(dumpFile, "capacity       == %lu\n", *(listCapacity(lst)));
    fprintf(dumpFile, "size           == %lu\n", *(listSize(lst)));
    fprintf(dumpFile, "is list linear == %d\n", *isListLinear(lst));
    fprintf(dumpFile, "errorCode      == %d\n\n", lst->errorCode);

    fprintf(dumpFile, "free           == %lu\n\n", *(listFree(lst)));

    fprintf(dumpFile, "idx:           ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15lu ]", numOfNode);
    fprintf(dumpFile, "\n");

    fprintf(dumpFile, "word:          ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15s ]", *(listNodeWord(lst, numOfNode)));
    fprintf(dumpFile, "\n");

    fprintf(dumpFile, "wordLen:       ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15lu ]", *(listNodeWordLen(lst, numOfNode)));
    fprintf(dumpFile, "\n");

    fprintf(dumpFile, "repCounter:    ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15lu ]", *(listNodeRepCounter(lst, numOfNode)));
    fprintf(dumpFile, "\n");

    fprintf(dumpFile, "next:          ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15d ]", *(listNext(lst, numOfNode)));
    fprintf(dumpFile, "\n");

    fprintf(dumpFile, "prev:          ");
    for (size_t numOfNode = 0; numOfNode < lst->capacity; numOfNode++)
        fprintf(dumpFile, "[ %15d ]", *(listPrev(lst, numOfNode)));
    fprintf(dumpFile, "\n");
}

void createLstGraphImageForDump (list_t* lst, FILE* dumpFile, const char* nameOfTextGraphFile) {
    assert(lst);
    assert(dumpFile);
    assert(nameOfTextGraphFile);

    static int graphImageCounter = 0;
    graphImageCounter++;

    fprintfLstGraphDump (lst, nameOfTextGraphFile);

    char graphvizCallCommand[STR_SIZE] = {};
    snprintf(graphvizCallCommand, sizeof(graphvizCallCommand), "dot -Tpng %s -o graphDumps/graph%d.png", nameOfTextGraphFile, graphImageCounter);
    system(graphvizCallCommand);
    fprintf(dumpFile, "Image:\n <img src=graphDumps/graph%d.png width=%lupx>\n", graphImageCounter, lst->capacity*150);
}

int listVerifier (list_t* lst) {

    if (!lst)
        return lstBAD_LIST_PTR;

    if (lst->nodeArr == NULL)
        lst->errorCode |= -lstBAD_NODE_ARR_PTR;

    if (lst->capacity > MAX_CAPACITY) {
        lst->errorCode |= -lstBAD_CAPACITY;
        return lstBAD_CAPACITY;
    }

    if (((lst->nodeArr)[0]).data.repCounter != NULL_CANARY)
        lst->errorCode |= -lstBAD_NULL_NODE;

    int listHead = (lst->nodeArr)[0].next;
    if (((lst->nodeArr)[listHead]).prev != 0)
        lst->errorCode |= -lstBAD_HEAD;

    int listTail = (lst->nodeArr)[0].prev;
    if (((lst->nodeArr)[listTail]).next != 0)
        lst->errorCode |= -lstBAD_TAIL;

    if (findBadFreeListNode(lst))
        lst->errorCode |= -lstBAD_FREE_NODE;

    if (findBadNextAndPrevMatch(lst))
        lst->errorCode |= -lstBAD_NEXT_AND_PREV_MATCH;

    if ((lst->size > lst->capacity) || (lst->size > MAX_CAPACITY))
        lst->errorCode |= -lstBAD_SIZE;

    if (findBadNodeCycle(lst))
        lst->errorCode |= -lstBAD_NODE_CYCLE;

    if (findFreeListCycle(lst))
        lst->errorCode |= -lstFREE_LIST_CYCLE;

    if (findNonlinearList(lst))
        *(isListLinear(lst)) = 0;

    return lst->errorCode;
}


int findBadFreeListNode (list_t* lst) {
    assert(lst);

    for (size_t numOfNode = 0; numOfNode < *(listCapacity(lst)); numOfNode++)
        if ((*(listNodeRepCounter(lst, numOfNode)) == POISON) && ((*(listPrev(lst, numOfNode)) != -1)))
            return 1;

    for (size_t numOfNode = 0; numOfNode < *(listCapacity(lst)); numOfNode++)
        if ((*(listNodeRepCounter(lst, numOfNode)) != POISON) && ((*(listPrev(lst, numOfNode))) == -1))
            return 1;

    return 0;
}

int findBadNextAndPrevMatch (list_t* lst) {
    assert(lst);

    for (int numOfNode = 0; numOfNode < (int)(*(listCapacity(lst))); numOfNode++) {

        if(listPrev(lst, numOfNode) == NULL)
            return 1;

        if((*(listPrev(lst, numOfNode))) == -1)
            continue;

        int nextNum = *(listNext(lst, numOfNode));
        if(listPrev(lst, nextNum) == NULL)
            return 1;
        if (numOfNode != *(listPrev(lst, nextNum)))
            return 1;
    }

    return 0;
}

int fprintfListErrorsForDump (list_t* lst, FILE* dumpFile, dump_t* lstDump) {
    assert(lst);
    assert(lstDump);
    assert(dumpFile);

    int listErrorsCounter = 0;

    if (lst->errorCode & -lstBAD_NODE_ARR_PTR) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NODE ARRAY POINTER IS NULL! errorcode = %d</font></h2>\n",
        lstBAD_NODE_ARR_PTR);
        printf("ERROR! NODE ARRAY POINTER IS NULL! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_NODE_ARR_PTR, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_CAPACITY) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! CAPACITY IS TOO BIG! errorcode = %d</font></h2>\n", lstBAD_CAPACITY);
        printf("ERROR! CAPACITY IS TOO BIG! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_CAPACITY, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_NULL_NODE) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NULL NODE VALUES WERE DAMAGED! errorcode = %d</font></h2>\n",
        lstBAD_NULL_NODE);
        printf("ERROR! NULL NODE VALUES WERE DAMAGED! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_NULL_NODE, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_FREE_NODE) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! FREE NODE(S) VALUES WERE DAMAGED! errorcode = %d</font></h2>\n",
        lstBAD_FREE_NODE);
        printf("ERROR! FREE NODE(S) VALUES WERE DAMAGED! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_FREE_NODE, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_NEXT_AND_PREV_MATCH) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NEXT VALUES DO NOT MATCH WITH PREV! errorcode = %d</font></h2>\n",
        lstBAD_NEXT_AND_PREV_MATCH);
        printf("ERROR! NEXT VALUES DO NOT MATCH WITH PREV! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_NEXT_AND_PREV_MATCH, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_HEAD) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! BAD HEAD VALUE! errorcode = %d</font></h2>\n",
        lstBAD_HEAD);
        printf("ERROR! BAD HEAD VALUE! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_HEAD, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_TAIL) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! BAD TAIL VALUE! errorcode = %d</font></h2>\n", lstBAD_TAIL);
        printf("ERROR! BAD TAIL VALUE! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_TAIL, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_SIZE) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! BAD LIST SIZE! errorcode = %d</font></h2>\n", lstBAD_SIZE);
        printf("ERROR! BAD LIST SIZE! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_SIZE, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstBAD_NODE_CYCLE) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! BAD NODE CYCLE! errorcode = %d</font></h2>\n", lstBAD_NODE_CYCLE);
        printf("ERROR! BAD NODE CYCLE! errorcode = %d; In func %s from %s:%u\n",
        lstBAD_NODE_CYCLE, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    if (lst->errorCode & -lstFREE_LIST_CYCLE) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! FREE LIST HAS CYCLE! errorcode = %d</font></h2>\n", lstFREE_LIST_CYCLE);
        printf("ERROR! FREE LIST HAS CYCLE! errorcode = %d; In func %s from %s:%u\n",
        lstFREE_LIST_CYCLE, lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        listErrorsCounter++;
    }

    return listErrorsCounter;
}

int insertAfter (list_t* lst, int anchorElemNum, char* newWord, size_t wordLen, uint64_t wordHash,
                 dump_t* lstDump) {
    DEBUG(assert(lst);)
    DEBUG(assert(lstDump);)
    DEBUG(assert(newWord);)
    (void)lstDump;

    #ifdef DEBUG_MODE
    lstDump->nameOfFunc = __func__;

    if (findBadAnchorElemNum(lst, anchorElemNum, lstDump))
        return lstBAD_INSERT_ANCHOR_NUM;

    char beforeMessage[STR_SIZE] =  {};
    char afterMessage[STR_SIZE]= {};
    snprintf(beforeMessage, sizeof(beforeMessage), "BEFORE Insert \"%d\" after idx [%d]", dataValue, anchorElemNum);
    snprintf(afterMessage, sizeof(afterMessage), "AFTER Insert \"%d\" after idx [%d]",  dataValue, anchorElemNum);

    if(listVerifier(lst)) {
        listDump (lst, lstDump, beforeMessage);
        return lst->errorCode;
    }
    #endif

    if(lst->free == 0)
        if (reallocListUP(lst))
            return lstBAD_REALLOC;

    int newNodeNum = (int)*(listFree(lst));

    *(listNodeRepCounter(lst, newNodeNum)) = 1;
    *(listNodeWord(lst, newNodeNum)) = newWord;
    *(listNodeWordLen(lst, newNodeNum)) = wordLen;
    *(listNodeWordHash(lst, newNodeNum)) = wordHash;

    *(listPrev(lst, newNodeNum)) = anchorElemNum;

    size_t nextFreeNum = *(listNext(lst, newNodeNum));

    *(listNext(lst, newNodeNum)) = *(listNext(lst, anchorElemNum));
    *(listNext(lst, anchorElemNum)) = newNodeNum;

    size_t nextNumAfterNew = *(listNext(lst, newNodeNum));
    *(listPrev(lst, nextNumAfterNew)) = newNodeNum;

    *listFree(lst) = nextFreeNum;
    *(listSize(lst)) += 1;

    #ifdef DEBUG_MODE
    if(listVerifier(lst)) {
        listDump (lst, lstDump, beforeMessage);
        return lst->errorCode;
    }
    #endif

    return newNodeNum;
}

listErr_t findBadNodeCycle (list_t* lst) {
    assert(lst);

    size_t cycleCounter = 0;

    for (size_t numOfNode = 0; cycleCounter < 2*(*(listCapacity(lst))); numOfNode = *(listNext(lst, numOfNode))) {
        if (numOfNode > *(listCapacity(lst)))
            return lstBAD_NODE_CYCLE;

        if (*(listNext(lst, numOfNode)) == 0)
            break;
        cycleCounter++;
    }

    if(cycleCounter != *(listSize(lst)))
        return lstBAD_NODE_CYCLE;

    cycleCounter = 0;

    for (size_t numOfNode = 0; cycleCounter < 2*(*(listCapacity(lst))); numOfNode = *(listPrev(lst, numOfNode))) {
        if (numOfNode > *(listCapacity(lst)))
            return lstBAD_NODE_CYCLE;

        if (*(listPrev(lst, numOfNode)) == 0)
            break;
        cycleCounter++;
    }

    if(cycleCounter != *(listSize(lst)))
        return lstBAD_NODE_CYCLE;

    return lstNO_ERRORS;
}

listErr_t findBadAnchorElemNum (list_t* lst, size_t anchorElemNum, dump_t* lstDump) {
    assert(lst);
    assert(lstDump);

    if ((anchorElemNum > *(listCapacity(lst))) || (*(listPrev(lst, anchorElemNum)) == -1)) {
        printf("Error! Bad number of Anchor Element in %s from %s:%u\n", lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        return lstBAD_INSERT_ANCHOR_NUM;
    }

    return lstNO_ERRORS;
}

listErr_t findBadDeleteNum(list_t* lst, size_t deletedElement, dump_t* lstDump) {
    assert(lst);
    assert(lstDump);

    if ((deletedElement > *(listCapacity(lst))) || (*(listPrev(lst, deletedElement)) == -1) || (deletedElement == 0)) {
        printf("Error! Bad number of deleted element in %s from %s:%u\n", lstDump->nameOfFunc, lstDump->nameOfFile, lstDump->numOfLine);
        return lstBAD_DELETE_NUM;
    }

    return lstNO_ERRORS;
}

int insertBefore (list_t* lst, int anchorElemNum, char* newWord, size_t wordLen, uint64_t wordHash,
                  dump_t* lstDump) {
    DEBUG(assert(lst);)
    DEBUG(assert(newWord);)
    DEBUG(assert(lstDump);)
    (void)lstDump;

    #ifdef DEBUG_MODE
        lstDump->nameOfFunc = __func__;

        if (findBadAnchorElemNum(lst, anchorElemNum, lstDump))
            return lstBAD_INSERT_ANCHOR_NUM;

        char beforeMessage[STR_SIZE] =  {};
        char afterMessage[STR_SIZE]= {};
        snprintf(beforeMessage, sizeof(beforeMessage), "BEFORE Insert \"%s\" before idx [%d]", newWord, anchorElemNum);
        snprintf(afterMessage, sizeof(afterMessage), "AFTER Insert \"%s\" before idx [%d]",  newWord, anchorElemNum);

        if(listVerifier(lst)) {
            listDump (lst, lstDump, beforeMessage);
            return lst->errorCode;
        }
    #endif

    if(lst->free == 0)
        if (reallocListUP(lst))
            return lstBAD_REALLOC;

    int newNodeNum = (int)*(listFree(lst));

    int nextFreeNum = *(listNext(lst, newNodeNum));

    *(listNodeRepCounter(lst, newNodeNum)) = 1;
    *(listNodeWord(lst, newNodeNum)) = newWord;
    *(listNodeWordLen(lst, newNodeNum)) = wordLen;
    *(listNodeWordHash(lst, newNodeNum)) = wordHash;

    *(listNext(lst, newNodeNum)) = anchorElemNum;

    *(listPrev(lst, newNodeNum)) = *(listPrev(lst, anchorElemNum));
    *(listPrev(lst, anchorElemNum)) = newNodeNum;

    size_t prevNumAfterNew = *(listPrev(lst, newNodeNum));
    *(listNext(lst, prevNumAfterNew)) = newNodeNum;

    *listFree(lst) = nextFreeNum;
    *(listSize(lst)) += 1;

    #ifdef DEBUG_MODE
        if(listVerifier(lst)) {
            listDump (lst, lstDump, beforeMessage);
            return lst->errorCode;
        }
    #endif

    return newNodeNum;
}

listErr_t findFreeListCycle (list_t* lst) {
    assert(lst);

    if ((*(listFree(lst)) == 0) && (*(listSize(lst)) != *(listCapacity(lst)) - 1))
        return lstFREE_LIST_CYCLE;

    size_t cycleCounter = 0;

    for (size_t numOfNode = *(listFree(lst)); cycleCounter < 2*(*(listCapacity(lst)));
         numOfNode = *(listNext(lst, numOfNode))) {
        if (numOfNode > *(listCapacity(lst)))
            return lstFREE_LIST_CYCLE;

        if(*(listFree(lst)) == 0)
            break;

        if (*(listNext(lst, numOfNode)) == 0)
            break;
        cycleCounter++;
    }

    if (cycleCounter > *(listCapacity(lst)) - *(listSize(lst)))
        return lstFREE_LIST_CYCLE;

    return lstNO_ERRORS;
}

void listDtor (list_t* lst) {
    DEBUG(assert(lst);)

    free(lst->nodeArr);
    lst->nodeArr = NULL;
}

int linearOrderNodeComparator(const void* firstStruct, const void* secondStruct) {
    DEBUG(assert(firstStruct);)
    DEBUG(assert(secondStruct);)

    const node_t* firstNode = (const node_t*)firstStruct;
    const node_t* secondNode = (const node_t*)secondStruct;

    if ((firstNode->prev == -1) && (secondNode->prev != -1))
        return 1;

    if ((secondNode->prev == -1) && (firstNode->prev != -1))
        return -1;

    if((firstNode->prev == -1) && (firstNode->next == 0))
        return 1;

    if((secondNode->prev == -1) && (secondNode->next == 0))
        return -1;

    if(firstNode->next == 0)
        return 1;

    if(secondNode->next == 0)
        return -1;

    return (int)(firstNode->next - secondNode->next);
}

int makeListLinear (list_t* lst, dump_t* lstDump) {
    DEBUG(assert(lst);)
    DEBUG(assert(lstDump);)
    (void)lstDump;

    #ifdef DEBUG_MODE
        lstDump->nameOfFunc = __func__;
        char beforeMessage[STR_SIZE] =  {};
        char afterMessage[STR_SIZE]= {};
        snprintf(beforeMessage, sizeof(beforeMessage), "BEFORE making list linear");
        snprintf(afterMessage, sizeof(afterMessage), "AFTER making list linear");

    if(listVerifier(lst)) {
        listDump (lst, lstDump, beforeMessage);
        return lst->errorCode;
    }

    listDump (lst, lstDump, beforeMessage);
    #endif

    int nodeIdx = 1;
    for (size_t numOfNode = 0; *listNext(lst, numOfNode) != 0; ) {
        size_t nextNum = *listNext(lst, numOfNode);
        *listNext(lst, numOfNode) = nodeIdx;
        nodeIdx++;
        numOfNode = nextNum;
    }
    qsort((lst->nodeArr) + 1, lst->capacity - 1, sizeof(node_t), &linearOrderNodeComparator);

    *listPrev(lst, 0) = (int)*(listSize(lst));
    for (size_t numOfNode = 1; numOfNode <= *(listSize(lst)); numOfNode++)
        *listPrev(lst, numOfNode) = (int)(numOfNode - 1);

    if(*listFree(lst) != 0)
        *listFree(lst) = *listSize(lst) + 1;

    for (size_t numOfFreeNode = *listFree(lst); (*listNext(lst, numOfFreeNode) != 0) && (numOfFreeNode != 0); numOfFreeNode++)
        *listNext(lst, numOfFreeNode) = (int)numOfFreeNode + 1;

    if((*listSize(lst)) < (*listCapacity(lst)) / 2)
        if (reallocListDown(lst))
            return lstBAD_REALLOC;

    *isListLinear(lst) = 1;

    #ifdef DEBUG_MODE
        if(listVerifier(lst)) {
            listDump (lst, lstDump, afterMessage);
            return lst->errorCode;
        }

        listDump (lst, lstDump, afterMessage);
    #endif
    return 0;
}

listErr_t reallocListDown (list_t* lst) {
    DEBUG(assert(lst);)

    size_t oldCapacity = *(listCapacity(lst));
    *(listCapacity(lst)) = oldCapacity / 2;

    node_t* newArr = (node_t*)realloc(lst->nodeArr, (*(listCapacity(lst)))*sizeof(node_t));
    if (!newArr) {
        printf("Error! Bad realloc!\n");
        return lstBAD_REALLOC;
    }
    lst->nodeArr = newArr;

    *(listNext(lst, *(listCapacity(lst)) - 1)) = 0;

    if((*listSize(lst)) == (*listCapacity(lst)) - 1)
        *listFree(lst) = 0;

    return lstNO_ERRORS;
}

int findNonlinearList(list_t* lst) {
    assert(lst);

    for(int numOfNode = 0; numOfNode < (int)(*listSize(lst)); numOfNode++)
        if (*listNext(lst, numOfNode) != numOfNode + 1)
            return 1;

    return 0;
}
