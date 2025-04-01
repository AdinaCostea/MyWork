bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

; extern exit,printf,scanf
; import exit msvcrt.dll 
; import printf msvcrt.dll
; import scanf msvcrt.dll
extern scanf,prinf

import scanf, printf msvcrt.dll


; our data is declared here (the variables needed by our program)
segment data use32 class=data
   m dd 0
   b dd 0
   p dd 0
   mesaj db "Ana are % d mere,%d banane,%d portocale",0
   format db "%d",0
; our code starts here
segment code use32 class=code
    start:
       push dword m 
       push dword format
       call [scanf] 
        add ESP, 4 * 2
       push dword b 
       push dword format
       call [scanf] 
        add ESP, 4 * 2
        push dword p 
       push dword format
       call [scanf] 
        add ESP, 4 * 2
        push dword [p]
        push dword [b]
        push dword [m]
        push dword mesaj
        call[printf]
        add ESP, 4 * 4
        ; exit(0)
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
