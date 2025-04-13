NAME PUT_C
	Public printPort
	Rutina Segment code 
		Rseg Rutina
			printPort:
			mov P3,a
			inc dptr
			ret
		end