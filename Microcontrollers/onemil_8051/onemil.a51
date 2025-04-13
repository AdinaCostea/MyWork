org 0000h 
	setb  P3.4 ;seteaza bitul 4 al portului P3 la 1
   main:
	acall onemil ;apeleaza subrutina onemil
	cpl P3.4 ;complemeteaza bitul 4 al portului P3 
	         ; trece din 1 in 0
   sjmp main ;sare inapoi la main => bucla infinita
   
   delay equ 99h ; constanta cu valoarea 99h
	   onemil:
	   mov r7,#delay ;punem in r7 valoarea din constanta delay
	   timer:
	   nop
	   nop
	   nop
	   nop
	   djnz r7,timer;decrementeaza r7 compara cu 0 si daca 
	                ;rezultatul este diferit de 0 sare la eticheta timer
		
       nop;nu face nimic timp de un ciclu masina
       ret;reprezinta sfarsitul rutinei onemil=> sare inapoi in
	      ;programul principal unde se va complementa iar bitul 4 al
		  ;portului P3 si se va executa iar bucla infinita
       end	   
	   
