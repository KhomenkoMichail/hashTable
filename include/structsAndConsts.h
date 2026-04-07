#ifndef STRUCTS_AND_CONSTS_H
#define STRUCTS_AND_CONSTS_H

const int POISON = 0xBAD;
const int NULL_CANARY = 0xBABE;

typedef uint64_t (*hashFunc_t)(const char* str);

struct hashTable_t {
    struct list_t** listArr;

    size_t sizeOfArr;

    uint64_t tableSize;
    double loadFactor;

    hashFunc_t hashFunc;

    int errorCode;
};

struct tableElem_t {
    const char* word;
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
    struct node_t* nodeArr;
    size_t free;

    size_t capacity;
    size_t size;

    int isLinear;

    int errorCode;
    struct info_t creationInfo;
};

const size_t MAX_CAPACITY = 5000;

enum hashTableErr_t {
    htNO_ERRORS            = 0x00,
    htBAD_CTOR_CALLOC      = -0x00,




}

enum listErr_t {
    lstNO_ERRORS                = 0x00,
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


#endif
