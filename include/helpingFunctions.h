#ifndef HELPING_FUNCTIONS_H
#define HELPING_FUNCTIONS_H

char* copyFileContent (const char* nameOfFile);

unsigned int getSizeOfFile (int fileDescriptor);

void skipSpaces(char** bufPos);

int compareDouble (double first, double second);

#endif
