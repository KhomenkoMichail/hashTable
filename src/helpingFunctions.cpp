#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>
#include <cctype>
#include <sys/stat.h>

#include "../include/structsAndConsts.h"
#include "../include/helpingFunctions.h"

size_t getSizeOfFile (int fileDescriptor) {
    struct stat fileInfo = {};

    if (fstat(fileDescriptor, &fileInfo) == 0)
        return fileInfo.st_size;

    perror("Error of getting the size of the file");
    return 0;
}

void skipSpaces(const char** bufPos) {
    assert(bufPos);
    assert(*bufPos);

    while (**bufPos == ' ' || **bufPos == '\t' || **bufPos == '\n')
        (*bufPos)++;
}

int compareDouble (double first, double second) {
    const double EPSILON = 1e-10;

    if (isnan(first) && isnan(second))
        return 1;
    else if (isinf(first) && isinf(second))
        return 1;
    else {
        double fabsOfDifference = NAN;
        fabsOfDifference = fabs(first - second);

        if (fabsOfDifference < EPSILON)
            return 1;
        return 0;
    }
}

size_t countWords(const char* text) {
    assert(text);

    size_t count = 0;
    int inWord = 0;

    while (*text != '\0') {
        if (isspace((unsigned char)*text)) {
            inWord = 0;
        } else if (!inWord) {
            inWord = 1;
            count++;
        }
        text++;
    }
    return count;
}

void getArrOfWordStructs(wordArrStruct_t* structAddress) {
    assert(structAddress);
    assert(structAddress->text);

    structAddress->arrOfWordStructs = (word_t*)calloc(structAddress->numberOfWords, sizeof(word_t));
    if (!structAddress->arrOfWordStructs) {
        perror("Error calloc for arrOfWordStructs");
        return;
    }

    size_t wordIndex = 0;
    char* curPos = structAddress->text;
    char* wordStart = NULL;
    int inWord = 0;

    while (*curPos != '\0') {

        if (isspace((unsigned char)*curPos)) {
            if (inWord) {
                structAddress->arrOfWordStructs[wordIndex].lengthOfWord = (size_t)(curPos - wordStart);

                *curPos = '\0';

                wordIndex++;
                inWord = 0;
            }
        } else if (!inWord) {
            wordStart = curPos;
            structAddress->arrOfWordStructs[wordIndex].ptrToWord = wordStart;
            inWord = 1;
        }
        curPos++;
    }

    if (inWord && wordIndex < structAddress->numberOfWords) {
        structAddress->arrOfWordStructs[wordIndex].lengthOfWord = (size_t)(curPos - wordStart);
    }
}

char* copyFileContent(wordArrStruct_t* structAddress, const char* fileName) {
    assert(fileName);
    assert(structAddress);

    int fileDescriptor = open(fileName, O_RDONLY, 0);
    if (fileDescriptor == -1) {
        fprintf(stderr, "Error of opening file \"%s\"", fileName);
        perror("");
        return NULL;
    }

    ssize_t sizeOfFile = getSizeOfFile(fileDescriptor);
    if (sizeOfFile < 1) {
        close(fileDescriptor);
        return NULL;
    }

    char* fileCopyBuffer = (char*)calloc(sizeOfFile + 1, sizeof(char));
    if (!fileCopyBuffer) {
        close(fileDescriptor);
        return NULL;
    }

    size_t numOfReadSymbols = read(fileDescriptor, fileCopyBuffer, sizeOfFile);
    fileCopyBuffer[numOfReadSymbols] = '\0';

    if(close(fileDescriptor) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", fileName);
        perror("");
    }

    structAddress->sizeOfText = numOfReadSymbols;

    return fileCopyBuffer;
}

void getWordArrStruct (wordArrStruct_t* structAddress, const char* fileName) {
    assert(structAddress);
    assert(fileName);

    char* buffer = copyFileContent(structAddress, fileName);
    assert(buffer);

    structAddress->text = buffer;
    structAddress->numberOfWords = countWords(buffer);

    getArrOfWordStructs(structAddress);
}

void freeWordArrStruct(wordArrStruct_t* structAddress) {
    if (structAddress == NULL) {
        return;
    }

    if (structAddress->arrOfWordStructs != NULL) {
        free(structAddress->arrOfWordStructs);
        structAddress->arrOfWordStructs = NULL;
    }

    if (structAddress->text != NULL) {
        free(structAddress->text);
        structAddress->text = NULL;
    }

    structAddress->sizeOfText = 0;
    structAddress->numberOfWords = 0;
}

void swapWords(word_t* wordA, word_t* wordB) {
    word_t temp = *wordA;
    *wordA = *wordB;
    *wordB = temp;
}

void shuffleWords(wordArrStruct_t* wordArr) {
    if (!wordArr || wordArr->numberOfWords < 2) return;

    for (size_t i = wordArr->numberOfWords - 1; i > 0; i--) {
        size_t j = rand() % (i + 1);
        swapWords(&wordArr->arrOfWordStructs[i], &wordArr->arrOfWordStructs[j]);
    }
}
