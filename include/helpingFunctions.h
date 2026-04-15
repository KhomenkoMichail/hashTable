#ifndef HELPING_FUNCTIONS_H
#define HELPING_FUNCTIONS_H

size_t getSizeOfFile (int fileDescriptor);

void skipSpaces(const char** bufPos);

int compareDouble (double first, double second);

size_t countWords(const char* text);

void getArrOfWordStructs(wordArrStruct_t* structAddress);

char* copyFileContent(wordArrStruct_t* structAddress, const char* fileName);

void getWordArrStruct(wordArrStruct_t* structAddress, const char* fileName);

void freeWordArrStruct(wordArrStruct_t* structAddress);

void swapWords(word_t* wordA, word_t* wordB);

void shuffleWords(wordArrStruct_t* wordArr);

static inline char** structArrWord (wordArrStruct_t* wordArr, size_t numOfWord) {
    assert(wordArr);
    return &((wordArr->arrOfWordStructs + numOfWord)->ptrToWord);
}

static inline size_t* structArrNumberOfWords (wordArrStruct_t* wordArr) {
    assert(wordArr);
    return &(wordArr->numberOfWords);
}

static inline size_t* structArrWordLen (wordArrStruct_t* wordArr, size_t numOfWord) {
    assert(wordArr);
    return &((wordArr->arrOfWordStructs + numOfWord)->lengthOfWord);
}

#endif
