section .data
    var db "Hello", 10
    len equ $ - var

section .text
    global _start

_start:
    mov rax,1 ;system call to write
    mov rdi,1 ; file descriptor as 'stdout'
    mov rsi,var ;That string
    mov rdx,len ; length of the string
    syscall ;run
    ;After execution

    mov rax,60 ; system call to exit
    xor rdi,rdi ; check for exits
    syscall ; run above statement

    