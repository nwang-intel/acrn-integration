#include <stdio.h>
#include <stdlib.h>
#include <error.h>
#include <string.h>
#include <unistd.h>
#include <sys/mman.h>
#include "include/xdsupport_test.h"
#define CODEBUF 150
#define SHELL_FMT "cat /proc/%ld/maps"
#define CMD_SIZE (sizeof(SHELL_FMT) + 20)

void print_map() {
    char cmd[CMD_SIZE];
    printf("$ process map status\n");
    snprintf(cmd, CMD_SIZE, SHELL_FMT,(long)getpid());
    system(cmd);  
	printf("$ executing shellcode \n");	
    run(shellcode);
}
