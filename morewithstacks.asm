[org 0x7c00]

; intiialize stack
mov sp, 0x7c00

push 0
mov ah, 0
mov al, 3
int 0x10

mov al, 50
loop:
	inc al
	push ax
	cmp al, 100
	je next
	jne loop

next:
	pop ax
	mov ah, 0x0e
	mov al, al
	int 0x10
	cmp al, 0
	je halt
	jne next

halt:
	hlt

times 510-($-$$) db 0
db 0x55, 0xaa
