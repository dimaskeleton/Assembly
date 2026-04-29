%include "io.inc"
section .text
global main
main:
    ;write your code here
    mov esi, password1 ; Initialization password1
    mov edi, password2 ; Initialization password2

    ; String comparison loop
    xor ecx, ecx ; Set counter to 0

comparePassword:
    mov al, [esi + ecx] ; Load byte from password1
    mov bl, [edi + ecx] ; Load byte from password2
    cmp al, bl ; Compare the bytes
    jne loginFailed ; If not equal, jump to loginFailed
    cmp al, 0 ; Check if end of the string
    je loginSuccess ; If end of string, jump to loginSuccess
    inc ecx ; Increment counter
    jmp comparePassword ; Repeat the loop

loginSuccess:
    PRINT_STRING matchMessage ; Prints success message if password matches
    jmp done ; Jumps to exit program

loginFailed:
    PRINT_STRING wrongMessage ; Prints wrong message if password is not matching
    
done: ; Exits program
    xor eax, eax
    ret
    
section .data
    password1 db 'passwordTest', 0     ; First password
    password2 db 'passwordExample', 0     ; Second password
    matchMessage db "Login successful", 0
    wrongMessage db "Login Failed", 0
    
    
    