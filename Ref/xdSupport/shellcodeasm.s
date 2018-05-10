        .global _start

        .text
_start:
        # write(1, message, 13)
	jmp  ender
     	starter: 
        mov     $0x1111111111111111, %rax                # system call 1 is write
	shl     $0x3f, %rax
	shr     $0x3f, %rax
        mov     $0x1111111111111111, %rdi                # file handle 1 is stdout
	shl     $0x3f, %rdi
	shr     $0x3f, %rdi
        #mov     $message, %rsi          # address of string to output
        pop     %rsi
	mov     $0x1111111111111113, %rdx               # number of bytes
	shl     $0x38,  %rdx
	shr     $0x38,  %rdx
        syscall                         # invoke operating system to do the write

        # exit(0)
        mov     $0x111111111111113c, %rax               # system call 60 is exit
	shl     $0x38,  %rax
	shr     $0x38,  %rax
        xor     %rdi, %rdi              # we want return code 0
        syscall                         # invoke operating system to exit
        
        ender:
        call starter
        #db  'Hello, World'
message:
        .ascii  "shellcode executed\n"

