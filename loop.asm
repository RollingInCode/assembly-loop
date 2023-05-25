section .data
    counter db 0

section .text
    global _start
_start:
    ; print numbers from 0 to 9999
    mov ecx, counter
    mov edx, 10
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; increment counter
    inc byte [counter]

    ; compare counter to 10000
    cmp byte [counter], 0x2710
    jl _start

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
