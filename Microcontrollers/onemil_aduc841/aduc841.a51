delay equ 99h
;1)
delayAduc equ 02h
org 0000
	setb P3.4 ;seteaza bitul 4 al portului P3 in 1
	main:
	acall onemil
	cpl P3.4;complementeaza bitul 4 al portului P3
	sjmp main;bucla infinita
	
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