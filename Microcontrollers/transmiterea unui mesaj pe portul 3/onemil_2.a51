NAME Rutina_onemil
	Public onemil;face subrutina sa fie publica
		Rutina segment code;se defineste segmentul de cod
			Rseg Rutina
				delay equ 99h
					onemil:
					mov r7,#delay
					timer:
					nop
					nop
					nop
					nop
					djnz r7,timer
				nop
				ret
		end