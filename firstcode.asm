section .data
    message db "Hello, World!", 10  ; The message to print, with a newline (10)
    len equ $ - message

section .text
    global _start

_start:
    mov rax,1 ;system call to write in linux
    mov rdi,1 ;file descriptor to stdout
    mov rsi,message
    mov rdx,len
    syscall ;run

    mov rax,60 ;after execution it'll exit
    xor rdi,rdi ;to check any error or other present after execution,if not return 0 for success
    syscall ;run to above two statement to exit