bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

extern exit,printf
import exit msvcrt.dll 
import printf msvcrt.dll

; our data is declared here (the variables needed by our program)
segment data use32 class=data
   fructe dw 3,7,20
   mesaj db "Ana are % d mere,%d banane,%d portocale",0
; our code starts here
segment code use32 class=code
    start:
        mov eax,0
        mov ax,word [fructe+4]
        push dword eax
        mov eax,0
        mov ax,word [fructe+2]
        push dword eax
        mov eax,0
        mov ax,word [fructe+0]
        push dword eax
        push dword mesaj
        call [printf]
        add esp,4*4
    
        ; exit(0)
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
