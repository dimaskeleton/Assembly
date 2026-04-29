section .text
global main
    ;write your code here
    
add_number: 
    push ebp ; prolog : Stores the old base pointer
    mov ebp, esp ; Setup a new base pointer
    
    add eax, ebx ; Add the parameters
    pop ebp ; Epilog: restore the old base pointer
    ret; return to the called function
    
main:
    ;Function call:add_number
    
        push ebp ;prolog : Stores the old base pointer 
        mov ebp, esp ; setup a new base pointer
        
        mov eax 5;
        mov ebx, 7
        call add_number ; Call the m=function
        PRINT_DEC 4, eax
        NEWLINE
    
    xor eax, eax
    ret