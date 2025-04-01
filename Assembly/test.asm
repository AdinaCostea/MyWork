bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

; declare external functions needed by our program
extern exit, scanf, printf               ; tell nasm that exit exists even if we won't be defining it
import exit msvcrt.dll    ; exit is a function that ends the calling process. It is defined in msvcrt.dll
import scanf msvcrt.dll 
import printf msvcrt.dll                           ; msvcrt.dll contains exit, printf and all the other important C-runtime specific functions

; our data is declared here (the variables needed by our program)
segment data use32 class=data
    a db 0
    b db 0
    c dw 0
    mes db "Rezultatul %d*%d+%d=%d", 0Dh, 0Ah, 0
    format db "%d", 0
    temp dd 0
    rez dd 0

; our code starts here
segment code use32 class=code
    start:
        push dword temp
        push dword format
        call [scanf]
        add ESP, 4*2
        xor EAX, EAX
        mov EAX, [temp]
        mov [a], AL
        
        push dword temp
        push dword format
        call [scanf]
        add ESP, 4*2
        xor EAX, EAX
        mov EAX, [temp]
        mov [b], AL
        
        push dword temp
        push dword format
        call [scanf]
        add ESP, 4*2
        xor EAX, EAX
        mov EAX, [temp]
        mov [c], AX
        
        xor EAX, EAX
        xor EBX, EBX
        mov AL, [a]
        mov BL, [b]
        mul BX
        add AX, [c]
        mov [rez], EAX
        
        push dword [rez]
        xor EAX, EAX
        mov AX, [c]
        cwde
        push EAX
        xor EAX, EAX
        mov AL, [b]
        cbw
        cwde
        push EAX
        xor EAX, EAX
        mov AL, [a]
        cbw
        cwde
        push EAX
        push dword mes
        call [printf]
        add ESP, 4*5
        
        
    
        ; exit(0)
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
