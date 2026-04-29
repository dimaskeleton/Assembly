; Purpose => to find the largest element in the arrya
; Contract: List of elements => integer

%include "io.inc"
section .text
global main
main:
    ;write your code here
    mov edx, arr ; move the array to edx = point to the first element of the array
    xor ecx, ecx ; mov ecx, 0
    mov ebx, 0; to store the greatest element
    
    Loop_larg:
    mov eax, [edx] ; eax = 10
    cmp eax, ebx ; eax = 10, ebx = 0
    ja big ; jump if the first element is greater than ecx 
    jmp incr
    
    big:
        mov ebx, eax
    
    incr:
        add edx, 4 ; integer needs 4 bytes storage 
        inc ecx ; ecx = ecx + 1
        cmp ecx, 6
        jl Loop_larg
    
PRINT_STRING txt
PRINT_DEC 4, ebx
NEWLINE
    
section.data
    arr dd 10, 20, 888, 65, 102, 45
    txt db "The largest element of the array is: ", 0
    
    ;ecx
; ----------------
    
    ; Initialization ; 
    ; Condition = 6 loops
    ; Increment/Decrement operation
    
    
    