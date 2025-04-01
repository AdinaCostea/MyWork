
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

.data
 nr db 86
 msgI db 'Numarul intre 0 si 99 este:',10,13,'$'
 msgB db '(d)','$'
.code
 mov dx,offset msgI
 afisMsg ;apelam macroul
 ;formatam numarul 
 mov ah,0
 mov al,nr ;AH=0..AL=86 
 mov bl,10;BL=0
 div bl ;imparte AX la BL=10....AH=6-REST...AL=8-CAT
 
 add al,30h ;8h+30h->AL=38h='8'
 add ah,30h  ;6h+30h->AH=36h='6'
 ;sau or ax,3030h 
 
 mov bl,ah ;bl='6'
 afisCar
 mov al,bl
 afisCar
 
 
 mov dx,offset msgB
 afisMsg
 



ret

