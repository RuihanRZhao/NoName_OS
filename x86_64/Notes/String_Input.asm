[org 0x7c00]
mov ah, 0x0e
mov bx, Str

print:
    mov al, [bx]; [] means pointer

    cmp al, 0
    je End; if al==0, printing end
    int 0x10; print the char

    inc bx; printer++, move to the next char
    jmp print

Str:
    db "Hello World", 0



End:
    jmp $

times 510 - ($ - $$) db 0 
db 0x55, 0xaa