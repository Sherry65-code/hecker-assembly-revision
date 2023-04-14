[org 0x7c00]

mov sp, 0x7c00 ; initialize stack pointer to the end of the bootloader memory

push 0x1234 ; push value onto the stack
push 0x5678 ; push another value onto the stack

pop ax ; pop value into ax
mov bx, ax ; move value from ax to bx

pop ax ; pop next value from ax to bx
mov cx, ax ; move value from ax to cx

hlt

times 510-($-$$) db 0
db 0x55, 0xaa

; REMEMBER
; Value when pushed into a stack when poped, then the last value you pushed would
; come back to you like you pushed 1 then 2 then 3.
; now when you will pop it the values you will get will be 3 then 2 then 1.
