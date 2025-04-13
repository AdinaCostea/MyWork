NAME Rutina_Softime
EXTRN CODE (onemil);declara ca exista o functie externa
	                ;care apartine segmentului de cod
	Public softime;face subrutina sa fie publica
		Rutina segment code;se defineste segmentul de cod
			Rseg Rutina    ;in care este implementata softime
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
				
				end