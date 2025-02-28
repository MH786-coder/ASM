section .bss
    buffer resb 2  ; Reserve space for 2 characters

section .text
    global _start

_start:
    ; Add 5 + 3
    mov rax, 5
    add rax, 3

    ; Convert number to ASCII
    add rax, '0'      ; Convert to character
    mov [buffer], al  ; Store in buffer

    ; Print result
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 1
    syscall

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
