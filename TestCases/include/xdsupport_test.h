#ifndef XDSUPPORT_TEST_H
#define XDSUPPORT_TEST_H

#include <stdbool.h>

extern bool executable;
extern char shellcode[];
void run(char *);

void mmap_c_nx(void);

#endif 
