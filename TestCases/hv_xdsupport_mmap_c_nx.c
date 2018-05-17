#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <error.h>
#include "include/xdsupport_test.h"
#define CODEBUF 150
#define SHELL_FMT "cat /proc/%ld/maps | grep zero"
#define CMD_SIZE (sizeof(SHELL_FMT) + 20) 

void mmap_c_nx() {
	char cmd[CMD_SIZE];
    char *codestr = NULL;
    if (executable) { 
	    codestr = (char *)mmap(NULL, CODEBUF, PROT_EXEC|PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
    } else {
        codestr = (char *)mmap(NULL, CODEBUF, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
    } 
    if (codestr == MAP_FAILED) {
	    perror("mmap");
	    return;
	}
	printf("$ nx status of /dev/zero\n");
    snprintf(cmd, CMD_SIZE, SHELL_FMT, (long)getpid());
	system(cmd);	
   	strcpy(codestr, shellcode);
	printf("$ executing shellcode\n");
	run(codestr);
   	return;
}
