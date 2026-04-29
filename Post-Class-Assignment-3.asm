%include "io.inc"
section .text
global main
main:
    mov ebp, esp; for correct debugging

    ;write your code here
    mov ebp, esp;
    fld dword [n1]
    fsub dword [n2]
    fstp dword [diff]
    
    xor eax, eax
    ret
    
section .data
    n1 dd 25.5
    n2 dd 17.0
    diff dd 0.0