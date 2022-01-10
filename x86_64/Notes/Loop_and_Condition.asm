mov ah, 0x0e
mov al, 'A'
int 0x10; printf('A')

Loop:
    inc al; al++
    int 0x10; printf('B')

    cmp al, 70; comparation
    ; jump commands below following the lastest "cmp" result
    je End  ; if(al == 70) End
    jne Loop; if(al != 70) Loop
    jg End  ; if(al  > 70) End
    jl Loop ; if(al  < 70) Loop
    jge End ; if(al >= 70) End
    jle Loop; if(al <= 70) Loop


End:
    ; Here is $$
    jmp $; where $ is the current memory address
    ; Line-2 is $
    times 510 - ($ - $$) db 0 
    ; $$ = Beginning of current section
    ; ($ - $$) = length of previous code = current address - section start = 3
    ; n+510-n=510 bytes
    db 0x55, 0xaa ; 2 bytes