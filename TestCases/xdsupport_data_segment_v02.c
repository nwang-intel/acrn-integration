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
char shellcode[] =
	"\xeb\x24\x48\xc7\xc0\x01\x00\x00\x00\x48\xc7\xc7\x01"
	"\x00\x00\x00\x5e\x48\xc7\xc2\x0d\x00\x00\x00\x0f\x05"
	"\x48\xc7\xc0\x3c\x00\x00\x00\x48\x31\xff\x0f\x05\xe8"
	"\xd7\xff\xff\xff\x48\x65\x6c\x6c\x6f\x2c\x20\x57\x6f"
	"\x72\x6c\x64\x0a";

void main() {
   unsigned long long  *ret;
   ret = (unsigned long long *)&ret + 2;
   (*ret) = (unsigned long long)shellcode;
}
