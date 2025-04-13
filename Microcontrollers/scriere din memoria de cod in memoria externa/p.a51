

MainP SEGMENT CODE           
EXTRN CODE (write_pattern) ; noua rutina modulara

cseg at 100h                
	text: db 'Laborator uC',0   

cseg at 0                    
ljmp Start                   

Rseg MainP                   
ram_start equ 0000h
ram_stphi equ 20h
pattern   equ 55h
Start:
    ; initializare port si pointer
    mov p3, #0ffh
    mov dptr, #text          
    mov r1, #50h             

Again:
    mov a, #00h              
    movc a, @a+dptr          
    jz final                
    ;mov p2, #00h
    movx @r1, a             
    inc dptr                
    inc r1
    sjmp Again              

final:
    acall write_pattern
    sjmp $
		end