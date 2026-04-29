%include "io.inc"
section .text
global main
main:
    ; Initialize registers
    mov eax, [num1] ; Load first number into eax
    mov ebx, [num2] ; Load second number into ebx
    mov ecx, [num3] ; Load third number into ecx

    
    cmp eax, ebx ; Compare num1 and num2
    jge compare_with_num3 ; Jump if num1 is greater or equal to num2
    mov eax, ebx ; Else, set num2 as the largest for now

    compare_with_num3:
    cmp eax, ecx ; Compare current largest with num3
    jge print_largest ; Jump if current largest is greater or equal to num3
    mov eax, ecx ; Else, set num3 as the largest

    print_largest: ; Print the largest number
    PRINT_STRING outputMessage ; Prints the message "The largest number is: "
    PRINT_DEC 4, eax ; Prints the largest number
    NEWLINE

    xor eax, eax
    ret

section .data
    outputMessage db "The largest number is: ", 0
    num1 dd 15 ; Define first number
    num2 dd 20 ; Define second number
    num3 dd 30 ; Define third number