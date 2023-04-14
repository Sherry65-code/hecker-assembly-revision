; switch to safe mode
[org 0x7c00]

mov bx, var

; clear screen
mov ah, 0
mov al, 3
int 0x10

; create a loop to print hello world till the null terminator character

mov ah, 0x0e

print:
	mov al, byte [bx]	
	int 0x10
	inc bx
	cmp al, 0
	je exit
	jne print

; cpu halt program
exit:
	hlt

; hello world stored in memory
var db "Hello, World!", 0

; Boot loader sector identifier
times 510-($-$$) db 0
db 0x55, 0xaa
