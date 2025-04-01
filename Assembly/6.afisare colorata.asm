
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;afisare colorata

.code
mov BL,10011100b 
mov AL,'a'
mov DL,40
mov DH,12
mov CX,10
et:
mov AH,02h
int 10h
inc dh
inc dl
mov ah,09h
push cx 
mov CX,1 
int 10h
pop CX
add bl,11h ; BL=BL+11h pt modificare fond ?i culoare de scris
loop et
ret




