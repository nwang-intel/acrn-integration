#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "include/xdsupport_test.h"
#define CODEBUF 150

char *m_heap;

void heap_segment() {
    m_heap = (char *)malloc(CODEBUF);
	if (m_heap == NULL) {
		printf("allocation failed \n");
		return;
	}
   	strcpy(m_heap, shellcode);
    run(m_heap);
	return;
}
