%include "io.inc"
section .text
global main
main:
    ;write your code here
    
    ; Perform AND operation
    mov eax, [n1] ; n1 = 5
    mov ebx, [n2] ; n2 = 5
    and eax, ebx  ; eax = eax and ebx
    mov [and_result], eax 
    PRINT_DEC 4, [and_result]
    NEWLINE
    
    ; Perform OR operation
    mov eax, [n1] ; n1 = 5
    mov ebx, [n2] ; n2 = 5
    or eax, ebx  ; eax = eax and ebx
    mov [or_result], eax 
    PRINT_DEC 4, [or_result]
    NEWLINE
    
    ; Perform XOR operation
    mov eax, [n1] ; n1 = 5
    mov ebx, [n2] ; n2 = 5
    xor eax, ebx  ; eax = eax and ebx
    mov [xor_result], eax 
    PRINT_DEC 4, [xor_result]
    NEWLINE
    
    ; Perform NOT operation
    mov eax, [n1] ; n1 = 5
    mov ebx, [n2] ; n2 = 5
    xor eax, ebx  ; eax = eax and ebx
    mov [not_result], eax 
    PRINT_DEC 4, [not_result]
    
    xor eax, eax
    ret
    
section .data
    n1 dd 5
    n2 dd 5
    and_result dd 4
    or_result dd 4
    xor_result dd 4
    not_result dd 4