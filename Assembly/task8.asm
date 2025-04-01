bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

extern exit,printf,scanf
import exit msvcrt.dll 
import printf msvcrt.dll
import scanf msvcrt.dll

; our data is declared here (the variables needed by our program)
segment data use32 class=data
   fructe times 3 dw 0 
   mesaj db "Ana are % d mere,%d banane,%d portocale",0
   format db "%d",0
   aux dd 0
; our code starts here
segment code use32 class=code
    start:
        ;mere
     push dword aux 
     push dword format
     call[scanf]
     add esp,4*2
     xor eax,eax 
     mov EAX, [aux]
     mov [fructe+0], AL
     ;banane
     
     push dword aux 
     push dword format
     call[scanf]
     add esp,4*2
     xor eax,eax 
     mov EAX, [aux]
     mov [fructe+2], AL
       
     ;pere

     push dword aux 
     push dword format
     call[scanf]
     add esp,4*2
     xor eax,eax 
     mov EAX, [aux]
     mov [fructe+4], AL  

     ;citire
     xor EAX, EAX
     mov ax,[fructe+4]
     cwde
     push eax
     
     xor EAX, EAX
     mov ax,[fructe+2]
     cwde
     push eax
     
     xor EAX, EAX
     mov ax,[fructe+0]
     cwde
     push eax
     
     push dword mesaj
     call[printf]
     add esp, 4*5
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
