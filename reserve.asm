section .bss
    mybuff resb 5

section .text
    global _start

_start:
    mov rax,1
    mov rdi,1
    mov [mybuff],"1234"
    mov rdx,5
    syscall

    mov rax,60
    xor rdi,rdi
    syscall