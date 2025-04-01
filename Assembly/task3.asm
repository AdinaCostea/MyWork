bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

extern exit,printf
import exit msvcrt.dll 
import printf msvcrt.dll

; our data is declared here (the variables needed by our program)
segment data use32 class=data
    m dw 3
    b dw 7
    p dw 20
    
    mesaj db "Ana are % d mere,%d banane,%d portocale",0

; our code starts here
segment code use32 class=code
    start:
        mov eax,0
        mov ax,word [p]
        push dword eax
        mov eax,0
        mov ax,word [b]
        push dword eax
        mov eax,0
        mov ax,word [m]
        push dword eax
        push dword mesaj
        call [printf]
        add esp,4*4
        ; exit(0)
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
