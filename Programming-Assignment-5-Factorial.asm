%include "io.inc"
section .text
global main
main:
    ;write your code here
    
    ; Prepare stack
    push ebp
    mov ebp, esp

    ; Calculate factorial
    mov eax, [number] ; Load the number
    push eax ; Push the number onto the stack
    call factorial ; Call the factorial function
    mov [result], eax ; Store the result

    ; Print the result
    PRINT_DEC 4, eax
    NEWLINE

; Factorial function
factorial:
    push ebp ; Function prologue
    mov ebp, esp

    mov eax, [ebp + 8] ; Get the argument (number)
    cmp eax, 1 ; Check if number <= 1
    jle evenFactorial ; If yes, return 1

    dec eax ; Decrease the number
    push eax ; Push the new number onto the stack
    call factorial ; Recursive call

    ; After returning from recursive call
    mov ebx, [ebp + 8] ; Get the original number again
    mul ebx ; eax = eax * ebx

evenFactorial:
    mov esp, ebp         
    pop ebp
    ret 

    xor eax, eax   
    ret
    
section .data
    number dd 5
    result dd 0