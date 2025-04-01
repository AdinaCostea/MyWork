
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;macro pt afisare mesaj
 afisMsg macro
    mov ah,09h
    int 21h
 endm 
 ;macro pt afisarea unui caracter
 afisCar macro
    mov ah,0Eh
    int 10h
 endm

 .data
 msg1 db 'Introduceti primul nr intre 0 si 9:','$'
 msg2 db 13,10,'Introduceti al doilea numar intre 0 si 9:','$'  
 msg3 db 13,10, 'Produsul este:','$'
 msg4 db 13,10, 'Introduceti un numar par de numere(minimum10,maximum 20)',13,10,'$'   
 sir db 20 dup(?) 
 elemente db 0  
 msg5 db 13,10,'Lungime incorecta! Mai incearca! ',13,10,'$'
 msg6 db 13,10, 'Lungime impara de elemente! Mai incearca!','$' 
 enter db 13,10,' ','$' 
 msg7 db 13,10,'Afisare colorata-c Afisare necolorata-n','$'
 msg8 db 13,10,'Mai incearca!',13,10,'$'
 linia db 0
 coloana db 0
 coloana2 db 0
 msg9 db 13,10,'Coloana:','$'
 msg10 db 13,10,'Linia:','$'
 
 .code

;citire de la tastatura a 2 numere intre (0si 9) +mesaj
;afisare produs+mesaj 

 mov dx,offset msg1
 afisMsg;apelam macro de afisare
 call iaNumar 
 mov ah,0
 sub al,30h
 push ax
 mov dx,offset msg2
 afisMsg;apelam macro de afisare
 call iaNumar 
 mov ah,0
 sub al,30h
 pop bx 
 mul bx 
 push ax
 mov dx,offset msg3
 afisMsg
 pop ax
 mov bl,10
 div bl
 ;formatare numar 
 add al,30h
 add ah,30h
 
 mov bl,ah
 afisCar
 mov al,bl
 afisCar 
 
 ;preluare de la tastatura panna la introducerea tastei ESC 
 ;sir de lungime para min 10 max 20 
 call  AlegePozitie
 mov dx,offset msg4
 afisMsg
 
 call citireSir
 
 
 call Produs 
 
 
ret

;subrutina pt preluarea de la tastatura
 iaNumar proc
    mov ah,01h
    int 21h
 iaNumar endp
 ret
 ;subrutina pt citirea unui sir de la tastatura
  citireSir proc
   mov si,0
   repeta: call iaNumar
   
   cmp al,1Bh;esc
   jz ies
   mov sir[si],al
   inc si
   
   jmp repeta 
   
   
   
   min:
   mov si,0
   mov dx,offset msg5
   afisMsg
   jmp repeta 
    
   impar:
   mov si,0
   mov dx,offset msg6
   afisMsg
   jmp repeta
    
   ies:
   
   mov ax,si
   mov elemente,al 
   ;verificare daca lungimea este minim 10
   cmp si,10
   jb min 
   ;verificare daca lungimea este para sau impara
   mov ax,si
   shr al,1
   jc impar
  citireSir endp
  ret
  ;subrutina pt calculul produsului+afisare
  Produs proc
  ;alegem afisarea
  mov dx,offset msg7
  afisMsg
  ;reluam caracterul
  call iaNumar ;al='c' sau al='n'
  
  cmp al,'c'
  jne nuC
  mov si,0
  bucla_c:
  
  mov al,sir[si]
  sub al,30h
  mov bl,sir[si+1] 
  sub bl,30h
  mul bl
  mov bh,0
 
  mov bl,10
    
  div bl
  add al,30h
  add ah,30h 
  
  mov bl,ah
 
  push bx;mutam restul 
  
  ;afisare colorata
  mov dl,coloana
  mov dh,linia
  mov ah,02h
  int 10h 
  mov ah,09h
  mov bl,11001010b
  mov cx, 1 
  int 10h
  
  
  
  pop bx
  
  mov al,bl
  mov dl,coloana2
  mov dh,linia
  mov ah,02h
  int 10h 
  mov ah,09h
  mov bl,11001010b
  mov cx ,1 
  int 10h 
   
  inc linia 
   
  inc si
  inc si
  
  sub elemente,2
  cmp elemente,0
   
  
  
  jnz bucla_c
  jmp gata
  
  
  nuC:
  mov si,0
  bucla:
  
  mov al,sir[si]
  sub al,30h
  mov bl,sir[si+1] 
  sub bl,30h
  mul bl
  mov bh,0
 
  mov bl,10
    
  div bl
  add al,30h
  add ah,30h 
   
  mov bl,ah
  afisCar
  mov al,bl
  afisCar 
  mov dx,offset enter
  afisMsg
  
  inc si
  inc si
  
  sub elemente,2
  cmp elemente,0
  jnz bucla 
  jmp gata
  gata:
  Produs endp
  ret 
  
  AlegePozitie Proc
     ;linie
     mov dx,offset msg10
     afisMsg
     call Citire2Cifre
     mov linia,al    
     ;coloana
     mov dx,offset msg9
     afisMsg
     call Citire2Cifre
     mov coloana,al 
     mov coloana2,al
     add coloana2,1
          
         
    
    ret 
    AlegePozitie endp   
  Citire2Cifre proc
     mov ah,01h
     int 21h
     sub al,30h
     mov bl,al
     
     mov ah,01h
     int 21h
     sub al,30h
     
     xchg bl,al
     mov bh,10
     mul bh
     add al,bl
        ret
     Citire2Cifre endp 