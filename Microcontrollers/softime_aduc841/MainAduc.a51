$title (ModularPrograming)
Main SEGMENT Code;definirea segmentului
	
EXTRN CODE (softime);declara ca exista o functie externa
	                ;care apartine segmentului de cod
 cseg at 0;defineste segmentul la adresa 0
jmp start

rseg Main ;segment realocabil
	start:
	mov a,#0E8h;LSB
	mov b,#03h;MSB
	acall softime
	cpl P3.4
	sjmp start
	
	end