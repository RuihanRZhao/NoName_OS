; Here is $$
jmp $; where $ is the current memory address
; Line-2 is $
times 510 - ($ - $$) db 0 
; $$ = Beginning of current section
; ($ - $$) = length of previous code = current address - section start = 3
; n+510-n=510 bytes
db 0x55, 0xaa ; 2 bytes