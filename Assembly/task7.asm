bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

extern exit,printf,scanf
import exit msvcrt.dll 
import printf msvcrt.dll
import scanf msvcrt.dll

; our data is declared here (the variables needed by our program)
segment data use32 class=data
   
   mesaj db "Ana are % d mere,%d banane,%d portocale",0
   format db "%d",0
   m dw 0
   b dw 0
   p dw 0
   aux dw 0
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
     mov [m], AL
     ;banane
     
     push dword aux 
     push dword format
     call[scanf]
     add esp,4*2
     xor eax,eax 
     mov EAX, [aux]
     mov [b], AL
       
     ;pere

     push dword aux 
     push dword format
     call[scanf]
     add esp,4*2
     xor eax,eax 
     mov EAX, [aux]
     mov [p], AL  

     ;citire
     xor EAX, EAX
     mov ax,[p]
     cwde
     push eax
     
     xor EAX, EAX
     mov ax,[b]
     cwde
     push eax
     
     xor EAX, EAX
     mov ax,[m]
     cwde
     push eax
     
     push dword mesaj
     call[printf]
     add esp, 4*5

     
        
        ; exit(0)
        push    dword 0      ; push the parameter for exit onto the stack
        call    [exit]       ; call exit to terminate the program
