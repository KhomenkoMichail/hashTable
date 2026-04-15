#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <ctype.h>

#include "../include/structsAndConsts.h"
#include "../include/structAccessFunctions.h"
#include "../include/helpingFunctions.h"
#include "../include/listFunctions.h"
#include "../include/hashTableFunctions.h"

int hashTableCtor (hashTable_t* hashTable, size_t sizeOfArr, hashFunc_t hashFunc,
                   info_t* creationInfo, dump_t* htDump) {
    #ifdef DEBUG_MODE
        assert(hashTable);
        assert(hashFunc);
        assert(htDump);
        assert(creationInfo);
    #endif

    hashTable->listArr     = (list_t**)calloc(sizeOfArr, sizeof(list_t*));

    #ifdef DEBUG_MODE
        if (!hashTable->listArr) {
            printf("ERROR! Bad hashTableCtor calloc!\n");
            *hashTableErrorCode(hashTable) = htBAD_CTOR_CALLOC;
            return htBAD_CTOR_CALLOC;
        }
    #endif

    *hashTableArrSize(hashTable)    = sizeOfArr;
    *hashTableNumOfWords(hashTable) = 0;
    *hashTableLoadFactor(hashTable) = 0.0;

    *hashTableFunc(hashTable)       = hashFunc;

    *hashTableErrorCode(hashTable)  = 0;

    for (size_t numOfList = 0; numOfList < sizeOfArr; numOfList++) {
        *hashTableList(hashTable, numOfList) = (list_t*)calloc(1, sizeof(list_t));

        #ifdef DEBUG_MODE
            if (!(*hashTableList(hashTable, numOfList))) {
                printf("ERROR! Bad hashTableCtor calloc!\n");
                *hashTableErrorCode(hashTable) = htBAD_CTOR_CALLOC;
                hashTableDtor(hashTable, numOfList - 1);
                return htBAD_CTOR_CALLOC;
            }
        #endif

        info_t listInfo= {};
        if (listCtor(*hashTableList(hashTable, numOfList), 4, listInfo) != lstNO_ERRORS) {
            hashTableDtor(hashTable, numOfList);
            return lstBAD_CTOR_CALLOC;
        }
    }

    *hashTableDumpStruct(hashTable) = htDump;
    *hashTableInfoStruct(hashTable) = creationInfo;

    return htNO_ERRORS;
}

void hashTableDtor (hashTable_t* hashTable, size_t numOfLists) {
    assert(hashTable);

    for (size_t curList = 0; curList < numOfLists; curList++)
        listDtor(*hashTableList(hashTable, curList));

    free(hashTable->listArr);
    hashTable->listArr = NULL;
}

int hashTableVerifier (hashTable_t* hashTable) {
    assert(hashTable);

    if (!hashTable->listArr) {
        *hashTableErrorCode(hashTable) |= -htNULL_LST_ARR;
        return *hashTableErrorCode(hashTable);
    }

    for (size_t curList = 0; curList < *hashTableArrSize(hashTable); curList++) {
        if (!(*hashTableList(hashTable, curList))) {
            *hashTableErrorCode(hashTable) |= -htNULL_LST_PTR;
            return *hashTableErrorCode(hashTable);
        }

        *hashTableErrorCode(hashTable) |= listVerifier(*hashTableList(hashTable, curList));

        if (*hashTableErrorCode(hashTable) != lstNO_ERRORS) {
            *hashTableErrorCode(hashTable) |= -htLIST_ERROR;
            return *hashTableErrorCode(hashTable);
        }
    }

    double curLoadFactor = (double)*hashTableNumOfWords(hashTable) / (double)*hashTableArrSize(hashTable);

    if (!compareDouble(curLoadFactor, *hashTableLoadFactor(hashTable)))
        *hashTableErrorCode(hashTable) |= -htWRONG_LOAD_FACTOR;

    if (!(*hashTableFunc(hashTable)))
        *hashTableErrorCode(hashTable) |= -htNULL_FUNC;

    return *hashTableErrorCode(hashTable);
}

void hashTableDump (hashTable_t* hashTable, const char* message) {
    assert(hashTable);
    assert(message);

    dump_t** dumpPtr = hashTableDumpStruct(hashTable);
    assert(dumpPtr && "Access function returned NULL pointer to pointer");

    dump_t* htDump = *dumpPtr;
    assert(htDump && "Pointer to dump_t is NULL! Ctor didn't set it!");

    const char* nameOfTextGraphFile = htDump->nameOfGraphFile;

    FILE* dumpFile = 0;
    if (htDump->dumpFileWasOpened)
        dumpFile = fopen(htDump->nameOfDumpFile, "a");
    else {
        dumpFile = fopen(htDump->nameOfDumpFile, "w");
        (*hashTableDumpStruct(hashTable))->dumpFileWasOpened = 1;
    }

    if (dumpFile == NULL) {
        fprintf(stderr, "Error of opening file \"%s\"", htDump->nameOfFile);
        perror("");
        return;
    }

    fprintf(dumpFile, "<pre>\n");
    fprintf(dumpFile, "<h2>hashTableDump() <font color=red>from %s at %s:%d</font></h2>\n",
    htDump->nameOfFunc, htDump->nameOfFile, htDump->numOfLine);

    fprintf(dumpFile, "<h2><font color=blue>%s</font></h2>\n", message);

    info_t* htInfo = *hashTableInfoStruct(hashTable);
    fprintf(dumpFile, "hashTable \"%s\" [%p] from %s at %s:%d\n\n",
    htInfo->name, hashTable, htInfo->nameOfFunc, htInfo->nameOfFile, htInfo->numOfLine);

    fprintfHashTableDataForDump(hashTable, dumpFile);
    fprintfHashTableErrorsForDump(hashTable, dumpFile);

    fprintf(dumpFile, "<h2><font color=orange>GRAPH OF THE HASH TABLE:</font></h2>\n");
    createHtGraphImageForDump(hashTable, dumpFile, nameOfTextGraphFile);
    fprintfHashTableHistogram(hashTable, dumpFile);

    if (fclose(dumpFile) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", htDump->nameOfGraphFile);
        perror("");
        return;
    }
}

void fprintfHashTableErrorsForDump (hashTable_t* hashTable, FILE* dumpFile) {
    assert(hashTable);
    assert(dumpFile);

    dump_t htDump = **hashTableDumpStruct(hashTable);

    if (*hashTableErrorCode(hashTable) & -htWRONG_LOAD_FACTOR) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! WRONG LOAD FACTOR! errorcode = %d; In func %s from %s:%d</font></h2>\n",
        htWRONG_LOAD_FACTOR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
        printf("ERROR! WRONG LOAD FACTOR! errorcode = %d; In func %s from %s:%d\n",
        htWRONG_LOAD_FACTOR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
    }

    if (*hashTableErrorCode(hashTable) & -htNULL_FUNC) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NULL HASH FUNC! errorcode = %d; In func %s from %s:%d</font></h2>\n",
        htNULL_FUNC, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
        printf("ERROR! NULL HASH FUNC! errorcode = %d; In func %s from %s:%d\n",
        htNULL_FUNC, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
    }

    if (*hashTableErrorCode(hashTable) & -htNULL_LST_ARR) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NULL HASH FUNC! errorcode = %d; In func %s from %s:%d</font></h2>\n",
        htNULL_LST_ARR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
        printf("ERROR! NULL HASH FUNC! errorcode = %d; In func %s from %s:%d\n",
        htNULL_LST_ARR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
    }

    if (*hashTableErrorCode(hashTable) & -htNULL_LST_PTR) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! NULL LIST POINTER! errorcode = %d; In func %s from %s:%d</font></h2>\n",
        htNULL_LST_PTR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
        printf("ERROR! NULL LIST POINTER! errorcode = %d; In func %s from %s:%d\n",
        htNULL_LST_PTR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
    }

    if (*hashTableErrorCode(hashTable) & -htLIST_ERROR) {
        fprintf(dumpFile, "<h2><font color=red>ERROR! SOME LISTS HAVE ERRORS! errorcode = %d; In func %s from %s:%d</font></h2>\n",
        htLIST_ERROR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
        printf("ERROR! SOME LISTS HAVE ERRORS! errorcode = %d; In func %s from %s:%d\n",
        htLIST_ERROR, htDump.nameOfFunc, htDump.nameOfFile, htDump.numOfLine);
    }

    for (size_t curListNum = 0; curListNum < *hashTableArrSize(hashTable); curListNum++) {
        list_t* curList = *hashTableList(hashTable, curListNum);

        fprintf(dumpFile,"-------------------------------------------------------------------\n");
        fprintf(dumpFile, "<h1><font color=blue>List #%lu [%p] </font></h1>\n", curListNum, curList);

        if (!curList) {
            fprintf(dumpFile, "<font color=red>NULL POINTER!</font></h2>\n");
            continue;
        }

        if (!fprintfListErrorsForDump (curList, dumpFile, *hashTableDumpStruct(hashTable)))
            fprintf(dumpFile, "<font color=green>NO ERRORS</font></h2>\n");

        if(!(curList->errorCode & -lstBAD_CAPACITY)) {
            fprintfListDataForDump (curList, dumpFile);
            createLstGraphImageForDump (curList, dumpFile, (*hashTableDumpStruct(hashTable))->nameOfGraphFile);
        }
    }
}

void fprintfHashTableDataForDump (hashTable_t* hashTable, FILE* dumpFile) {
    assert(hashTable);
    assert(dumpFile);

    fprintf(dumpFile, "<h4><font color=\"#f28816\">sizeOfArr = %lu</font></h4>\n", *hashTableArrSize(hashTable));
    fprintf(dumpFile, "<h4><font color=\"#f28816\">numOfWords = %lu</font></h4>\n", *hashTableNumOfWords(hashTable));
    fprintf(dumpFile, "<h4><font color=\"#f28816\">loadFactor = %lf</font></h4>\n", *hashTableLoadFactor(hashTable));
    fprintf(dumpFile, "<h4><font color=\"#f28816\">errorCode = %X</font></h4>\n", *hashTableErrorCode(hashTable));
}


void createHtGraphImageForDump (hashTable_t* hashTable, FILE* dumpFile,
                                const char* nameOfTextGraphFile) {
    assert(hashTable);
    assert(dumpFile);
    assert(nameOfTextGraphFile);

    static int hashTableGraphImageCounter = 0;
    hashTableGraphImageCounter++;

    fprintfHtGraphDump(hashTable, nameOfTextGraphFile);

    char graphvizCallCommand[STR_SIZE] = {};
    snprintf(graphvizCallCommand, sizeof(graphvizCallCommand), "dot -Tpng %s -o graphDumps/HTgraph%d.png", nameOfTextGraphFile, hashTableGraphImageCounter);
    system(graphvizCallCommand);
    fprintf(dumpFile, "Image:\n <img src=graphDumps/HTgraph%d.png width=%ldpx>\n", hashTableGraphImageCounter, *hashTableArrSize(hashTable) * 150);
}

void fprintfHtGraphDump (hashTable_t* hashTable, const char* nameOfTextGraphFile) {
    assert(hashTable);
    assert(nameOfTextGraphFile);

    FILE* graphFile = fopen(nameOfTextGraphFile, "w");

    if (graphFile == NULL) {
        fprintf(stderr, "Error of opening file \"%s\"", nameOfTextGraphFile);
        perror("");
        return;
    }


    fprintf(graphFile, "digraph List {\n");
    fprintf(graphFile, "    rankdir = BT;\n");
    fprintf(graphFile, "    node [shape = Mrecord, color = black];\n");

    for (size_t curListNum = 0; curListNum < *hashTableArrSize(hashTable); curListNum++) {
        list_t* curList = *hashTableList(hashTable, curListNum);

        fprintf(graphFile, "    list%lu [label = \" idx = %lu | listSize = %lu \", shape = box, style = filled, fillcolor = \"#8599f5\", color = black];\n",
                curListNum, curListNum, *listSize(curList));

        fprintfCurrentListGraph(curList, curListNum, graphFile, 1);
        fprintf(graphFile, "    list%lu -> node0_%lu [weight = 1000, color = \"#7eef6f\"];\n", curListNum, curListNum);
    }

    for (size_t curListNum = 0; curListNum < *hashTableArrSize(hashTable) - 1; curListNum++)
        fprintf(graphFile, "    list%lu -> list%lu [weight = 1000, color = \"#000000\"];\n", curListNum, curListNum + 1);

    fprintf(graphFile, "    { rank = same; ");
    for (size_t curListNum = 0; curListNum < *hashTableArrSize(hashTable); curListNum++)
        fprintf(graphFile, "list%lu; ", curListNum);

    fprintf(graphFile, " }\n}\n");

    if (fclose(graphFile) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", nameOfTextGraphFile);
        perror("");
        return;
    }
}

void fprintfHashTableHistogram (hashTable_t* hashTable, FILE* outputFile) {
    assert(hashTable);
    assert(outputFile);

    size_t arrSize = *hashTableArrSize(hashTable);
    size_t maxListSize = 0;
    for (size_t i = 0; i < arrSize; i++) {
        size_t s = *listSize(*hashTableList(hashTable, i));
        if (s > maxListSize) maxListSize = s;
    }
    if (maxListSize == 0) maxListSize = 1;

    fprintf(outputFile, "\n<style>\n");
    fprintf(outputFile, "    .v-chart-container { display: flex; align-items: flex-end; gap: 2px; \n");
    fprintf(outputFile, "                         background: #f8f9fa; padding: 20px; border: 1px solid #ccc; \n");
    fprintf(outputFile, "                         height: %dpx; overflow-x: auto; border-radius: 8px; }\n", (int)MAX_BAR_HEIGHT_PX + 60);
    fprintf(outputFile, "    .v-chart-column { display: flex; flex-direction: column; align-items: center; min-width: 20px; }\n");
    fprintf(outputFile, "    .v-chart-bar { background-color: #8599f5; border: 1px solid #5a75eb; width: 15px; \n");
    fprintf(outputFile, "                   border-radius: 3px 3px 0 0; }\n");
    fprintf(outputFile, "    .v-chart-value { font-size: 10px; color: #555; margin-bottom: 5px; font-family: monospace; }\n");
    fprintf(outputFile, "    .v-chart-label { font-size: 10px; color: #333; margin-top: 5px; \n");
    fprintf(outputFile, "                     white-space: nowrap; font-family: monospace; transform: rotate(-45deg); }\n");
    fprintf(outputFile, "</style>\n\n");

    fprintf(outputFile, "<h2>Hash collision histogram of the \"%s\" hashTable</h2>\n",
                        (*hashTableInfoStruct(hashTable))->name);
    fprintf(outputFile, "<div class=\"v-chart-container\">\n");

    for (size_t i = 0; i < arrSize; i++) {
        size_t curSize = *listSize(*hashTableList(hashTable, i));
        double barHeight = ((double)curSize / (double)maxListSize) * MAX_BAR_HEIGHT_PX;

        fprintf(outputFile, "    <div class=\"v-chart-column\">\n");
        fprintf(outputFile, "        <div class=\"v-chart-value\">%lu</div>\n", curSize);

        if (curSize == 0) {
            fprintf(outputFile, "        <div class=\"v-chart-bar\" style=\"height: 2px; background: #e0e0e0; border: none;\"></div>\n");
        } else {
            fprintf(outputFile, "        <div class=\"v-chart-bar\" style=\"height: %dpx;\"></div>\n", (int)barHeight);
        }

        fprintf(outputFile, "        <div class=\"v-chart-label\"> %lu</div>\n", i);
        fprintf(outputFile, "    </div>\n");
    }

    fprintf(outputFile, "</div>\n<br><br><br>\n");
}



int fillHashTable (hashTable_t* hashTable, wordArrStruct_t* wordArr) {
    DEBUG(assert(hashTable);)
    DEBUG(assert(wordArr);)

    #ifdef DEBUG_MODE
        if (hashTableVerifier(hashTable) != htNO_ERRORS)
            hashTableDump(hashTable, "Verifier signal BEFORE filling the hashTable");
    #endif

    hashFunc_t hashFunction = *hashTableFunc(hashTable);


    for (size_t numOfWord = 0; numOfWord < *structArrNumberOfWords(wordArr); numOfWord++) {

        if (numOfWord + 1 < *structArrNumberOfWords(wordArr)) {
                const char* nextWord = *structArrWord(wordArr, numOfWord + 1);
                __asm__ volatile (
                    ".intel_syntax noprefix\n"
                    "prefetcht0 [%0]\n"
                    ".att_syntax prefix\n"
                    :
                    : "r" (nextWord)
                    : "memory"
                );
        }

        uint64_t wordHash = hashFunction(*structArrWord(wordArr, numOfWord));
        wordHash = wordHash << 32;

        size_t index = 0;
        uint64_t trash = 0;

        __asm__ volatile (
            ".intel_syntax noprefix\n"
            "mul %3\n"
            ".att_syntax prefix\n"
            : "=d" (index), "=a" (trash)
            : "a" (wordHash), "r" (*hashTableArrSize(hashTable))
            : "cc"
        );
        list_t* curList = *hashTableList(hashTable, index);

        int wordNodeNum = findWordInList_asm(curList, *structArrWord(wordArr, numOfWord),
                                        wordHash);

        if (wordNodeNum == CAN_NOT_FIND_WORD) {
            *hashTableNumOfWords(hashTable) += 1;

            if (insertAfter(curList, (size_t)*listTail(curList), *structArrWord(wordArr, numOfWord), *structArrWordLen(wordArr, numOfWord),
                wordHash, *hashTableDumpStruct(hashTable)) < 0) {
                printf("Error insert of the word \"%s\"!\n", *structArrWord(wordArr, numOfWord));
                break;
            }
        }
        else *listNodeRepCounter(curList, wordNodeNum) += 1;
    }

    #ifdef DEBUG_MODE
        *hashTableLoadFactor(hashTable) = (double)*hashTableNumOfWords(hashTable) / (double)*hashTableArrSize(hashTable);

        if (hashTableVerifier(hashTable) != htNO_ERRORS)
            hashTableDump (hashTable, "Verifier signal AFTER filling the hashTable");
    #endif

    return 0;
}

int findWordInTheHashTable (hashTable_t* hashTable, const char* word) {
    DEBUG(assert(hashTable);)
    DEBUG(assert(word);)

    hashFunc_t hashFunction = *hashTableFunc(hashTable);

    uint64_t wordHash = hashFunction(word);
    wordHash = wordHash << 32;

    size_t index = 0;
    uint64_t trash = 0;

    __asm__ volatile (
        ".intel_syntax noprefix\n"
        "mul %3\n"
        ".att_syntax prefix\n"
        : "=d" (index), "=a" (trash)
        : "a" (wordHash), "r" (*hashTableArrSize(hashTable))
        : "cc"
    );

    list_t* curList = *hashTableList(hashTable, index);

    int wordNodeNum = findWordInList_asm(curList, word, wordHash);

    if (wordNodeNum == CAN_NOT_FIND_WORD)
        return 0;
    else return 1;
}

int testHashTable (hashTable_t* hashTable, wordArrStruct_t* wordArr, size_t numOfTests) {
    int testResult = 0;

    for (size_t curTest = 0; curTest < numOfTests; curTest++) {
        for (size_t curWordNum = 0; curWordNum < *structArrNumberOfWords(wordArr); curWordNum++) {

            if (curWordNum + 1 < *structArrNumberOfWords(wordArr)) {
                const char* nextWord = *structArrWord(wordArr, curWordNum + 1);
                __asm__ volatile (
                    ".intel_syntax noprefix\n"
                    "prefetcht0 [%0]\n"
                    ".att_syntax prefix\n"
                    :
                    : "r" (nextWord)
                    : "memory"
                );
            }

            testResult = findWordInTheHashTable(hashTable, *structArrWord(wordArr, curWordNum));
        }
        __asm__ volatile("" : : "g" (testResult) : "memory");
    }

    return 0;
}
