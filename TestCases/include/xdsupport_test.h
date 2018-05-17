#ifndef XDSUPPORT_TEST_H
#define XDSUPPORT_TEST_H

#include <stdbool.h>

extern bool executable;
extern char shellcode[];
void run(char *);

void mmap_c_nx(void);
void mprotect_c_nx(void);
void mprotect_s_nx(void);
void data_segment(void);

#endif 
