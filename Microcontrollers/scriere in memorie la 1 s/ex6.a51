delay equ 99h
delayAduc equ 0Ah
MSB equ 03h
LSB equ 0E8h
pattern equ 0AAh

ram_start equ 00h
ram_stphi equ 00h
ram_stoplo equ 10h
org 0000
	setb P3.4
	main:
	mov dptr,#ram_start
	write:
    mov A,#pattern
	movx @dptr,A
    ;se apeleaza softime pentru a intarzia 1s
	mov A,#LSB
	mov B,#MSB
	acall softime
	cpl P3.4
	inc dptr
	mov A,#ram_stphi
	cjne A,dph,write
	mov A,#ram_stoplo
	cjne A,dpl,write
	sjmp main;bucla infinita
	softime:
push 07
push acc

orl a,b
jnz ok

pop acc

pop 07
ret
ok:
pop acc

decLSB:
acall onemil
djnz acc,decLSB
cjne a,b,decMSB
pop 07
ret
decMSB:
dec b
sjmp decLSB

	onemil:
	;2)
	mov r5, #delayAduc ;1 ciclu
	delaymic:
	mov r7,#delay;1 ciclu
	timer:
	nop;1 ciclu
	nop;1 ciclu
	nop;1 ciclu
	nop;1 ciclu
	djnz r7,timer;2 cicluri
	nop;1 ciclu
	;3)
	djnz r5, delaymic ;2 cicluri
	ret ;1 ciclu
	end