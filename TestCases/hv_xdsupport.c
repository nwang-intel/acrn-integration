#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <stdint.h>
#include <error.h>
#include "include/check_argv.h"
#include "include/xdsupport_test.h"
#define CODEBUF 150
#define SHELL_FMT "cat /proc/%ld/maps | grep zero"
#define SHELL_FMT_ALL "cat /proc/%ld/map"
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

bool executable = 0;

int main(int argc, char **argv) {
    e_test test = check_argv(argc, argv);
    switch (test) {
        case (t_mmap_c_nx):
            mmap_c_nx();
            break;
        case (t_mprotect_s_nx):
            break;
        case (t_mprotect_c_nx):
            break;
        default :
            break;
    }
   	return 0;
}
