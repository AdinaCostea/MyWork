NAME Rutina_onemil
	Public onemil;face subrutina sa fie publica
		Rutina segment code;se defineste segmentul de cod
			Rseg Rutina
				delayAduc equ 0Ah
				delay equ 99h
					onemil:
					mov r5,#delayAduc
					delaymic:
					mov r7,#delay
					
					timer:
					nop
					nop
					nop
					nop
					djnz r7,timer
					nop
					djnz r5,delaymic
					ret
					end