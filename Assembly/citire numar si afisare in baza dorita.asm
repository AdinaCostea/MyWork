
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 ;macro pt afisare mesaj
 
 afisMsg macro
 mov ah,09h
 int 21h
 endm  
 
 ;macro pt afisare caracter 
 
 afisCar macro
 mov ah,0Eh
 int 10h
 endm 
 ;macro pt citire de la tastatura
 citire macro
  mov ah,01h
  int 21h   
 endm  

.data
 tabela db '0123456789ABCDEF'
 B dw 10;constanta pt baza
 nr dw 0
 msgstart db 'Introduceti un numar',10,13,'$'
 msg db  10,13, 'Introdu baza(B/D/H)',10,13,'$'
 msgErr db 10,13,'Mai incearca?',10,13,'$'  
.code
 mov dx,offset msgstart
 afisMsg 
 call CitireVal
 call Baza
 mov ax,nr
 mov cx,0
 repeta:
   mov bx,B
   mov dx,0
   div bx
   
   push dx
   inc cx
   cmp ax,0
   jnz repeta
   
  iauCifre: pop bx
            mov al,bl
            ;formatare ASCII
            mov bx,offset tabela
            xlat
            ;afisare caracter
            afisCar
            loop iauCifre  
 

ret
 
 CitireVal proc
 mov ax,0
 mov bx,10
 push ax 
  bucla:
  
  citire 
  cmp al,'#'
  je ies
  pop dx
  mov ah,0
  sub ax,30h 
  add ax,dx
 
 
  mul bx
  push ax
  
  
     
  
  loop bucla
    
   
     
 ies:
 pop ax
 mov bx,10
 div bx
 mov [nr],ax
 ret
 CitireVal endp   
 







 Baza proc
    
  et0:
 ;citim baza de la tastatura 
 mov dx,offset msg
 afisMsg
 citire 
 
 cmp al,'B'
 jnz nuB
 
 ;B
 mov B,2
 jmp gata
 
 nuB: cmp al,'D'
      jnz nuD
 ;D
 mov B,10
 jmp gata
 
 nuD: cmp al,'H'
      jnz nuH
 
 ;H
 mov B,16
 jmp gata
 
 nuH: mov dx,offset msgErr
      afisMsg
      jmp et0
      
 gata:          
   
 ret
 Baza endp



