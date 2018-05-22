#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <stdint.h>
#include <error.h>
#define CODEBUF 150
#define PAGESIZE sysconf(_SC_PAGE_SIZE)
#define SHELL_FMT "cat /proc/%ld/maps | grep zero"
#define CMD_SIZE (sizeof(SHELL_FMT) + 20)


char shellcode[] =
	"\xeb\x50\x48\xb8\x11\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe0\x3f\x48\xc1\xe8\x3f\x48\xbf\x11\x11\x11\x11\x11\x11\x11\x11"
	"\x48\xc1\xe7\x3f\x48\xc1\xef\x3f\x5e\x48\xba\x13\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe2\x38\x48\xc1\xea\x38\x0f\x05\x48"
	"\xb8\x3c\x11\x11\x11\x11\x11\x11\x11\x48\xc1\xe0\x38\x48\xc1\xe8\x38\x48\x31\xff\x0f\x05\xe8\xab\xff\xff\xff\x73\x68\x65"
	"\x6c\x6c\x63\x6f\x64\x65\x20\x65\x78\x65\x63\x75\x74\x65\x64\x0a";

void run(char *codestring) {
	unsigned long long *ret;
	ret = (unsigned long long *)&ret + 2;
	*ret = (unsigned long long)codestring;
	return;
}

void main() {
	char cmd[CMD_SIZE];
	char *codestring =  mmap(NULL, CODEBUF, PROT_READ|PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
	if (codestring == MAP_FAILED) {
		perror("mmap");
		return;
	}
	printf("$ Before mprotect\n");
	snprintf(cmd, CMD_SIZE, SHELL_FMT, (long)getpid());
	system(cmd); 	
   	strcpy(codestring, shellcode);
	int r_mprotect = mprotect(codestring, CODEBUF, PROT_READ|PROT_WRITE|PROT_EXEC);
	if (r_mprotect) {
		printf("mprotect error: %s \n", strerror(r_mprotect));
		return;
	}
	printf("$ After mprotect\n");
	system(cmd);
	printf("$ executing shellcode\n");
	run(codestring);	
   	return;
}
