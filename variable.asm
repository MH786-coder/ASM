section .data
    ; number1 db "1", 0xA
    startwith db "Bismillah", 0xA
    get_startwith_len equ $ - startwith
    endswith db "Alhambdulillah", 0xA
    ; len equ $ - number1

section .text
    global _start

_start:
    mov rax,1 ;sys_write
    mov rdi,1 ;stdout
    mov rsi,startwith
    mov rdx,get_startwith_len
    syscall

    mov rax,60 ;sys_exite
    xor rdi,rdi
    syscall; run and exit