%include  "io.inc"
; Print all the elements in the array
section .text
global main
main:
    ;write your code here
    mov edx, arr ; Move the array to the register | arr = address of the first element of the array
    xor ecx, ecx
    PRINT_STRING txt
    NEWLINE
    
looparr:
    PRINT_CHAR [edx] ; edx = 2
    NEWLINE
    
        add edx, 1 ; Increments edx by 1
        inc ecx ; ecx = ecx + 1
        
            cmp ecx, 7 ; Compare ecx with the actual size of the array
            jl looparr
    
    xor eax, eax
    ret

section .data
    arr db "Dimitri" ; Array declaration
    txt db "The name of the array is :" , 0
    