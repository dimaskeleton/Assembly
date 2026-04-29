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
    PRINT_DEC 4, [edx] ; edx = 2
    NEWLINE
    
        add edx, 4 ; Increments edx by 4
        inc ecx ; ecx = ecx + 1
        
            cmp ecx, 5 ; Compare ecx with the actual size of the array
            jle looparr
    
    xor eax, eax
    ret

section .data
    arr dd 2, 4, 6, 9, 13, 15 ; Array declaration
    txt db "The elements of the array is :" , 0
    
    