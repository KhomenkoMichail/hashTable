#ifndef STRUCT_ACCESS_FUNCTIONS_H
#define STRUCT_ACCESS_FUNCTIONS_H

int* listHead (struct list_t* lst);

int* listTail (struct list_t* lst);

size_t* listFree (struct list_t* lst);

int* listNext (struct list_t* lst, size_t numOfNode);

int* listPrev (struct list_t* lst, size_t numOfNode);

listData_t* listData (struct list_t* lst, size_t numOfNode);

size_t* listSize (struct list_t* lst);

size_t* listCapacity (struct list_t* lst);

int* isListLinear (struct list_t* lst);

#endif
