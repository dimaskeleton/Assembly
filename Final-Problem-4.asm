%include "io.inc"
section .text
global main
main:
    ; Initialize counters
    xor ebx, ebx ; Initialize negative count (ebx) to 0
    xor ecx, ecx ; Initialize zero count (ecx) to 0
    xor edx, edx ; Initialize positive count (edx) to 0
    xor esi, esi ; Initialize array index (esi) to 0

    ; Initialize pointer to the array
    mov edi, arr ; Load the address of the array into edi

    ; Loop through the array
    looAarr:
        mov eax, [edi] ; Load the current element into eax

        ; Check if the element is negative
        cmp eax, 0
        jl isNegative ; Jump to isNegative label if it's negative
        jz isZero ; Jump to isZero label if it's zero

        ; Element is positive
        inc edx ; Increment positive count
        jmp nextNum ; Jump to nextNum label

    isNegative:
        inc ebx ; Increment negative count
        jmp nextNum ; Jump to nextNum label

    isZero:
        inc ecx ; Increment zero count

    nextNum:
        add edi, 4 ; Move to the next element in the array (4 bytes per element)
        inc esi ; Increment the array index

        ; Compare the array index with the length of the array
        cmp esi, [arrLength]
        jl looAarr ; If index is less than length, continue loop

    ; Print the counts
    PRINT_STRING "Positive Count: "
    PRINT_DEC 4, edx ; Print the positive count (edx)
    NEWLINE

    PRINT_STRING "Negative Count: "
    PRINT_DEC 4, ebx ; Print the negative count (ebx)
    NEWLINE

    PRINT_STRING "Zero Count: "
    PRINT_DEC 4, ecx ; Print the zero count (ecx)
    NEWLINE
    
    xor eax, eax
    ret

section .data
    arr dd 1, -2, -3, 10, -5, 0, 7, -8, 9, 10, 0 ; Array 
    arrLength dd 11 ; Length of the array
