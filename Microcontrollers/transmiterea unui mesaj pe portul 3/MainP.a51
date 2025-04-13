$title (ModularPrograming)
;Definitie segmente realocabile
MainP segment code
	
;modul extern
extrn code (softime)
extrn code (printPort)
;definitie segment absolut
cseg at 100h
	text: db 'Laborator uC',0
;start program
  cseg at 0
	  ljmp start
;selectarea segmentului MainP
  rseg MainP
	  start:
	  mov dptr,#text
	  again:
	  mov a,#00h
	  movc a,@a+dptr
	  jz here
	  
	  acall printPort
	  ;se asteapta o secunda
	  ;1s=1000ms=03E8h
	  mov a,#0E8h;lsb
	  mov b,#03h;msb
	  acall softime
	  jmp again
	  
	  here:sjmp start
	  end