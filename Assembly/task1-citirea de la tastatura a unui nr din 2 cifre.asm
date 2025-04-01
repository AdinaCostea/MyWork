
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
nr db 0
.code
;nr de la 0...9
;int 21h cu serv o1h
mov ah,01h
int 21h;Al='8'=30h -> 8
sub al,30h  ;al=8
mov bl,al  
mov ah,01h
int 21h;Al='2'=30h -> 2
sub al,30h
xchg  bl,al
;2*10+8
mov bh,10
mul bh
add al,bl
mov nr,al

ret

;nr resp trebuie sa fie byte sau word? alegem byte pt ca nr este mic(<=99) 
;AL=8=08h


