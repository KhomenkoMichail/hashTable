#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>
#include <sys/stat.h>

#include "../include/helpingFunctions.h"

/*
char* copyFileContent (const char* nameOfFile) {
    assert(nameOfFile);

    int fileDescriptor = open(nameOfFile, O_RDONLY, 0);
    if (fileDescriptor == -1) {

        fprintf(stderr, "Error of opening file \"%s\"", nameOfFile);
        perror("");
        return NULL;
    }

    unsigned int sizeOfFile = getSizeOfFile(fileDescriptor);
    if (sizeOfFile == 0) {
        close(fileDescriptor);
        return NULL;
    }

    char* fileCopyBuffer = (char*)calloc(sizeOfFile + 1, sizeof(char));
    if (!fileCopyBuffer) {
        printf("Error calloc for fileCopyBuffer in func %s.\n", __func__);
    }

    if (fileCopyBuffer) {
        size_t numOfReadSymbols = read(fileDescriptor, fileCopyBuffer, sizeOfFile);
        fileCopyBuffer[numOfReadSymbols] = '\0';
    }

    if(close(fileDescriptor) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", nameOfFile);
        perror("");
        return NULL;
    }

    return fileCopyBuffer;
}*/

unsigned int getSizeOfFile (int fileDescriptor) {
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

struct line {
    char* ptrToString;
    size_t lengthOfString;
};

struct novel {
    char* text;
    struct line* arrOfStringStructs;
    size_t sizeOfText;
    size_t numberOfStrings;
};


char* copyFileContent (struct novel* structAddress, const char* fileName) {
    assert(fileName);

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

    size_t numOfReadSymbols = read(fileDescriptor, fileCopyBuffer, sizeOfFile);
    fileCopyBuffer[numOfReadSymbols] = '\0';

    if(close(fileDescriptor) != 0) {
        fprintf(stderr, "Error of closing file \"%s\"", fileName);
        perror("");
        return NULL;
    }

    structAddress->sizeOfText = numOfReadSymbols;

    return fileCopyBuffer;
}

void getStructNovel (struct novel* structAddress, const char* fileName) {
    assert(structAddress);
    assert(fileName);

    char* buffer = copyFileContent(structAddress, fileName);
    assert(buffer);

    size_t numberOfStrings    = getNumberOfSymbols(buffer, '\n');
    char** arrOfPtrsToStrings = (char**)calloc(numberOfStrings, sizeof(*arrOfPtrsToStrings));

    structAddress->text               = buffer;
    structAddress->numberOfStrings    = numberOfStrings;

    getArrOfStringStructs(structAddress);

}

void getArrOfStringStructs (struct novel* structAddress) {
    assert(structAddress);

    structAddress->arrOfStringStructs = (struct line*)calloc(structAddress->numberOfStrings, sizeof(struct line));
    size_t line = 0;
    (structAddress->arrOfStringStructs[line]).ptrToString = structAddress->text;
    (structAddress->arrOfStringStructs[line]).lengthOfString = myStrlen((structAddress->arrOfStringStructs[line]).ptrToString) + 1;
    line++;

    size_t numOfCharInText = 0;
    for( ; (structAddress->text[numOfCharInText] != '\0') && (line < structAddress->numberOfStrings) ; numOfCharInText++) {

        if (structAddress->text[numOfCharInText] == '\n') {
            (structAddress->arrOfStringStructs[line]).ptrToString = structAddress->text + numOfCharInText + 1;
            line++;
        }
    }

    getLengthOfStrings(structAddress);
}

void getLengthOfStrings (struct novel* structAddress) {
    assert(structAddress);

    for(size_t line = 0; line < structAddress->numberOfStrings - 1; line++)
        (structAddress->arrOfStringStructs[line]).lengthOfString = (size_t)((structAddress->arrOfStringStructs[line+1]).ptrToString - (structAddress->arrOfStringStructs[line]).ptrToString);

    (structAddress->arrOfStringStructs[structAddress->numberOfStrings - 1]).lengthOfString = myStrlen((structAddress->arrOfStringStructs[structAddress->numberOfStrings - 1]).ptrToString) + 1;
}
