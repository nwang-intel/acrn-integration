#include <stdio.h>
#include <stdlib.h>
#include <error.h>
#include <string.h>
#include <unistd.h>
#include <sys/mman.h>
//#define PAGESIZE sysconf(_SC_PAGE_SIZE)
//#define MALLOC_ALIGN 4096
#define CODEBUF 150
#define SHELL_FMT "cat /proc/%ld/maps"
#define CMD_SIZE (sizeof(SHELL_FMT) + 20)


//char __attribute__((aligned(MALLOC_ALIGN))) shellcode[] =
char shellcode[] =
	"\xeb\x50\x48\xb8\x11\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe0\x3f\x48\xc1\xe8\x3f\x48\xbf\x11\x11\x11\x11\x11\x11\x11\x11"
	"\x48\xc1\xe7\x3f\x48\xc1\xef\x3f\x5e\x48\xba\x13\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe2\x38\x48\xc1\xea\x38\x0f\x05\x48"
	"\xb8\x3c\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe0\x38\x48\xc1\xe8\x38\x48\x31\xff\x0f\x05\xe8\xab\xff\xff\xff\x73\x68\x65"
	"\x6c\x6c\x63\x6f\x64\x65\x20\x65\x78\x65\x63\x75\x74\x65\x64\x0a";

void main() {
	unsigned long long  *ret;
    char cmd[CMD_SIZE];
	printf("$ Address before memalign: %p \n", (void *)shellcode);
    printf("$ Before maps status\n");
    snprintf(cmd, CMD_SIZE, SHELL_FMT,(long)getpid());
    system(cmd);  
	//int r_mprotect = mprotect(shellcode, CODEBUF, PROT_NONE);
	//if (r_mprotect) {
	//	printf("mprotect error: %s \n", (char *)strerror(r_mprotect));
	//	return ;
	//}
    printf("$ After maps status\n");
    snprintf(cmd, CMD_SIZE, SHELL_FMT, (long)getpid());
    system(cmd);
	printf("executing\n");	
	ret = (unsigned long long *)&ret + 2;
	(*ret) = (unsigned long long)shellcode;
}
