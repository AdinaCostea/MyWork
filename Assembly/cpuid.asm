bits 32 ; assembling for the 32 bits architecture

; declare the EntryPoint (a label defining the very first instruction of the program)
global start        

extern exit,printf,scanf
import exit msvcrt.dll 
import printf msvcrt.dll
import scanf msvcrt.dll

; our data is declared here (the variables needed by our program)
segment data use32 class=data
  m dd 0
  valmax dd 0
  format db "%d",0
  mesaj db "Valoarea maxima a functiei standard este: %d",10,13
  rez dw 0
  mesaj1 db 10,13,"EAX in :%02d  EAX:%08x  EBX:%08x  ECX:%08x  EDX:%08x ",0
  mesaj2 db 10,13, "Semnatura procesorului este:%x",0
  mesaj3 db 10,13,"Versiunea procesorului este:%x",0
  mesaj4 db 10,13,"Modelul procesorului este:%x",0
  mesaj5 db 10,13,"Familia procesorului este:%x",0
  mesaj6 db 10,13,"Familia extinsa a procesorului este:%02x",0
  mesaj7 db 10,13,"Modelul extins al procesorului este:%02x",0
  mesaj8 db 10,13,"Sirul ASCII al producatorului este:%s",0
  sir times 13 db 0

; our code starts here
segment code use32 class=code
    start:
    ;task 2
      mov eax,dword [m]
      cpuid
      push dword eax
      push dword mesaj
      call[printf]
      add ESP, 4 * 2
      ;task 3
       mov eax,0
       cpuid
       mov [valmax],eax
       push dword edx
       push dword ecx
       push dword ebx
       push dword eax
       push dword [m]
       push dword mesaj1
       call[printf]
       add esp,4*6
       inc dword [m]
       mov ecx,[valmax]
       bucla:
       pusha
        mov eax,[m]
        cpuid
        push dword edx
       push dword ecx
       push dword ebx
       push dword eax
       push dword [m]
       push dword mesaj1
       call[printf]
       add esp,4*6
       inc dword [m]
       popa
       loop bucla
       ;task 4
       mov eax,1
       cpuid
       
       push dword eax
       push dword mesaj2
       call[printf]
       add esp,4*2
        ;task 5
         mov eax,1
       cpuid
       and eax,0fh
       push dword eax
       push dword mesaj3
       call[printf]
       add esp,4*2   
    ;task 6
       mov eax,1
       cpuid
       shr eax,4
       and eax,0fh
      
       push dword eax
       push dword mesaj4
       call[printf]
       add esp,4*2    
      ;task 7 
       mov eax,1
       cpuid
       shr eax,8
       and eax,0fh
      
       push dword eax
       push dword mesaj5
       call[printf]
       add esp,4*2 
      ;task 8
        mov eax,1
        cpuid
       mov ebx, eax 
       shr eax,8
       and eax,0fh
       shr ebx,19;pentru a avea pe ultima pozitie bitii corespunzatori extensiei familiei care se afla intre bitii 20...27
       and ebx,0fh
      shl ebx, 4        
      or eax, ebx 
       push dword eax
       push dword mesaj6
       call[printf]
       add esp,4*2
      ;task 9
      mov eax,1
      cpuid 
      mov ebx,eax
      shr eax,4
      and eax,0fh
      shr ebx,16
      and ebx,0fh
      shl ebx, 4        ; Mutăm „model extension” la stânga pentru concatenare
      or eax, ebx 
      push dword eax
      push dword mesaj7
       call[printf]
       add esp,4*2  
      ;task 10
        mov eax, 0          
        cpuid                      
        mov [sir], ebx      
        mov [sir + 4], edx  
        mov [sir + 8], ecx  
        mov byte [sir + 12], 0  
        push dword sir               
        push dword mesaj8
        call[printf]
        add esp,4*2
       
        push    dword 0      
        call    [exit]       
