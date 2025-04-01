
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 ;macro pt afisare
 afisMsg macro
 mov ah,09h
 int 21h
 endm

.data
 nr db 12 ; 'C'=43h
 msgI db 'Numarul intre 0 si Fh este:',10,13,'$'
 msgB db '(h)','$'
 tabela db '0123456789ABCDEF'
.code
 mov dx,offset msgI
 afisMsg ;apelam macroul
 ;formatam numarul
 mov al,nr
 mov bx,offset tabela
 xlat;[BX+AL]->AL
 mov ah,0Eh 
 int 10h
 mov dx,offset msgB
 afisMsg
 



ret



