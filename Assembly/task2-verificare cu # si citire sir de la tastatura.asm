
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
nr db 28  
sir db 50 dup (?);sir de 50 de locatii neinitializate
lungSir db ?
.code
   ;citim de la tastatura(folosim o bucla)  
;mov CX, word ptr nr fortam tipul(nerecomandat pt ca ia reziduri din memorie) 
mov SI,0;incarcam in SI 0
mov ch,0
mov cl,nr ;metoda recomandata
 bucla:
   
    mov ah,01h
    int 21h;AL=caracter          
    
 ;verificare
   
    cmp AL,'#' ;compar caracterul de la tastatura cu #(care nu se stocheaza in memorie)
    je ies  ;daca sunt egale sarim la eticheta ies
    
   
 
 
    mov sir[SI],al ;si-index ,punem valoarea din al in sir[si]
    inc SI
            
            
 loop bucla 
  mov lungSir,SI
 ies:
 
ret




