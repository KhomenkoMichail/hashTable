#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <fcntl.h>
#include <math.h>
#include <sys/stat.h>

#include "../include/helpingFunctions.h"

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
}

unsigned int getSizeOfFile (int fileDescriptor) {
    struct stat fileInfo = {};

    if (fstat(fileDescriptor, &fileInfo) == 0)
        return fileInfo.st_size;

    perror("Error of getting the size of the file");
    return 0;
}

void skipSpaces(char** bufPos) {
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
