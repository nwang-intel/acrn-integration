#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <stdint.h>
#include <error.h>
#include "include/xdsupport_test.h"
#define CODEBUF 150
#define SHELL_FMT "cat /proc/%ld/maps | grep zero"
#define CMD_SIZE (sizeof(SHELL_FMT) + 20)

void mprotect_s_nx() {
	char cmd[CMD_SIZE];
	char *codestr = (char *) mmap(NULL, CODEBUF, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
	if (codestr == MAP_FAILED) {
		perror("mmap");
		return;
	}
	printf("$ Before mprotect\n");
	snprintf(cmd, CMD_SIZE, SHELL_FMT, (long)getpid());
	system(cmd); 	
   	strcpy(codestr, shellcode);
	int r_mprotect = 0;
    if (executable) {
        mprotect(codestr, CODEBUF, PROT_READ|PROT_WRITE|PROT_EXEC);
    } else {
        mprotect(codestr, CODEBUF, PROT_READ|PROT_WRITE);
    }
	if (r_mprotect) {
		printf("mprotect error: %s \n", strerror(r_mprotect));
		return;
	}
	printf("$ After mprotect\n");
	system(cmd);
	printf("$ executing shellcode\n");
	run(codestr);	
   	return;
}
