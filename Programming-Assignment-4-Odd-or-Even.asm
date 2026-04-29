%include "io.inc"
section .text
global main
main:
    ;write your code here
    
    mov eax, [number] ; Load the number

    ; Check if the number is odd or even
    and eax, 1 ; Bitwise AND with 1, result is in eax
    cmp eax, 0 ; Compare result with 0
    je EvenNumber ; Jump if Equal, means number is even


    PRINT_STRING oddNumMsg ; If odd, print The number is odd
    jmp done

EvenNumber:
    PRINT_STRING evenNumMsg ; If even, print The number is even

done:
    xor eax, eax
    ret
    
section .data
    number dd 15
    oddNumMsg db "The number is odd", 0
    evenNumMsg db "The number is even", 0