
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 ;macro pt afisare
 afisMsg macro
 mov ah,09h
 int 21h
 endm

.data
 nr db 7
 msgI db 'Numarul intre 0 si 9 este:',10,13,'$'
 msgB db '(d)','$'
.code
 mov dx,offset msgI
 afisMsg ;apelam macroul
 ;formatam numarul
 mov al,nr
 add al,30h ;or al,30h
 mov ah,0Eh 
 int 10h
 mov dx,offset msgB
 afisMsg
 



ret




