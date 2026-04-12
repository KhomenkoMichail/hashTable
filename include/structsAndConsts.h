#ifndef STRUCTS_AND_CONSTS_H
#define STRUCTS_AND_CONSTS_H

#include <stdint.h>

const int POISON = 0xBAD;
const int NULL_CANARY = 0xBABE;
const int MAX_WORD_LENGTH = 32;

typedef uint64_t (*hashFunc_t)(const char* str);


struct tableElem_t {
    char* word;
    size_t wordLen;
    size_t repCounter;
};

typedef tableElem_t listData_t;

struct node_t {
    listData_t data;
    int next;
    int prev;
};

struct info_t {
    const char* name;
    const char* nameOfFile;
    const char* nameOfFunc;
    unsigned int numOfLine;
};

struct listFiles {
    const char* nameOfDumpFile;
    const char* nameOfGraphFile;
    FILE* dumpFile;
};

struct list_t {
    node_t* nodeArr;
    size_t free;

    size_t capacity;
    size_t size;

    int isLinear;

    int errorCode;
    info_t creationInfo;
};

const size_t MAX_CAPACITY = 5000;

enum hashTableErr_t {
    htNO_ERRORS            =  0x00,
    htBAD_CTOR_CALLOC      = -0x10000,
    htLIST_ERROR           = -0x20000,
    htNULL_LST_ARR         = -0x40000,
    htNULL_LST_PTR         = -0x80000,
    htWRONG_LOAD_FACTOR    = -0x100000,
    htNULL_FUNC            = -0x200000,
    htBAD_NEW_ELEM_CALLOC  = -0x400000
};

const int ERROR_FILLING_HT  = 0xBADBAD;
const int CAN_NOT_FIND_WORD = -0xEDA;

enum listErr_t {
    lstNO_ERRORS                =  0x00,
    lstBAD_LIST_PTR             = -0x01,
    lstBAD_NODE_ARR_PTR         = -0x02,
    lstBAD_CAPACITY             = -0x04,
    lstBAD_NULL_NODE            = -0x08,
    lstBAD_FREE_NODE            = -0x10,
    lstBAD_NEXT_AND_PREV_MATCH  = -0x20,
    lstBAD_HEAD                 = -0x40,
    lstBAD_TAIL                 = -0x80,
    lstBAD_SIZE                 = -0x100,
    lstBAD_NODE_CYCLE           = -0x200,
    lstREQUEST_FOR_BAD_NUM      = -0x400,
    lstBAD_INSERT_ANCHOR_NUM    = -0x800,
    lstBAD_DELETE_NUM           = -0x1000,
    lstBAD_REALLOC              = -0x2000,
    lstFREE_LIST_CYCLE          = -0x4000,
    lstBAD_CTOR_CALLOC          = -0x8000
};

const size_t STR_SIZE = 64;

struct dump_t {
    const char* nameOfFile;
    const char* nameOfFunc;
    unsigned int numOfLine;

    const char* nameOfDumpFile;
    const char* nameOfGraphFile;
    int dumpFileWasOpened;
};

struct hashTable_t {
    list_t** listArr;

    size_t sizeOfArr;

    uint64_t tableSize;
    double loadFactor;

    hashFunc_t hashFunc;

    int errorCode;
    dump_t* dump;
    info_t* creationInfo;
};

#endif
