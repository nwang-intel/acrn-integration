#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "include/xdsupport_test.h"
#define CODEBUF 150

void stack_segment() {
    char codestr[CODEBUF];
    strcpy(codestr, shellcode);
    run(codestr);
}
