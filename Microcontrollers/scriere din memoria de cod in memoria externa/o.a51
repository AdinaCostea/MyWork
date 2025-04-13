PUBLIC write_pattern
WriteRoutine SEGMENT CODE
Rseg WriteRoutine
ram_start equ 0000h
ram_stphi equ 20h
pattern   equ 55h
write_pattern:
    mov p3, #0ffh
    mov dptr, #ram_start

write_loop:
    mov a, #pattern
    movx @dptr, a
    inc dptr
    mov a, #ram_stphi
    cjne a, dpl, write_loop
    ret

end