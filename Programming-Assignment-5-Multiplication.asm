%include "io.inc"
section .text
global main
main:
    ;write your code here
    
    ; Load the number into eax
    mov eax, [number]

    ; Call the multiply_by_two function
    call multiply_by_two

    ; Print the result
    PRINT_DEC 4, eax
    NEWLINE

   
; multiply_by_two function
multiply_by_two:
    ; Multiply the number in eax by two
    shl eax, 1 ; Shift left to multiply by 2
    ret
    
    
    xor eax, eax
    ret
    
section .data
    number dd 10