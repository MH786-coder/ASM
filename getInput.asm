section .data
    prompt db "Enter your name: ", 0  ; Prompt message
    prompt_len equ $ - prompt         ; Length of prompt message
    output_msg db "Hello, ", 0        ; Output message

section .bss
    name_len resb 1                   ; Store length of input name
    name resb 50                      ; Reserve 50 bytes for name

section .text
    global _start

_start:
    ; Print "Enter your name: "
    mov eax, 4        ; syscall: sys_write
    mov ebx, 1        ; file descriptor: stdout
    mov ecx, prompt   ; message address
    mov edx, prompt_len ; message length
    int 0x80          ; call kernel

    ; Read user input
    mov eax, 3        ; syscall: sys_read
    mov ebx, 0        ; file descriptor: stdin
    mov ecx, name     ; buffer address
    mov edx, 50       ; max input size
    int 0x80          ; call kernel

    ; Print "Hello, "
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, 7
    int 0x80

    ; Print user name
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 50
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
