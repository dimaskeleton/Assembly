%include "io.inc"
section .text
global main
main:
    PRINT_STRING "Enter three integers: " ; Print prompt message
    NEWLINE
    
    GET_DEC 4, [num1]; Get first integer
    GET_DEC 4, [num2]; Get second integer
    GET_DEC 4, [num3]; Get third integer

    ; Push arguments onto the stack in reverse order
    push dword [num3]
    push dword [num2]
    push dword [num1]
    
    call findLargest ; Call findLargest function
    
    PRINT_STRING "The largest number is: " ; Prints result string
    PRINT_DEC 4, eax ; Largest num result is stored in eax
    NEWLINE

; Function findLargest
; Receives three integers from the stack and returns the largest
findLargest:
    push ebp
    mov ebp, esp

    ; Load parameters from stack into registers
    mov eax, [ebp + 8]   ; Load first number into eax
    mov ebx, [ebp + 12]  ; Load second number into ebx
    mov ecx, [ebp + 16]  ; Load third number into ecx

    cmp eax, ebx ; Compare eax and ebx
    jge compareThird ; jump to compareThird with ecx if eax > ebx 
    mov eax, ebx

    compareThird:
    cmp eax, ecx ; Compare eax with ecx
    jge done ; Jumps to done if eax > ecx
    mov eax, ecx ;ecx = eax if eax < ecx

    done: ; Restores base pointer 
    pop ebp
    ret
    
    xor eax, eax
    ret

section .data
num1 dd 0
num2 dd 0
num3 dd 0