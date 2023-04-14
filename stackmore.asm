[org 0x7c00]

mov sp, 0x7c00 ; initialize stack pointer to BIOS bootloader end

push 0
push 'A'
push 'B'
push 'C'
push 'D'
push 'E'
push 'F'
push 'G'
push 'H'
push 'I'
push 'J'
push 'K'

mov ah, 0x0e

printer:
	pop ax
	mov ah, 0x0e
	mov al, al
	int 0x10
	cmp al, 0
	je halt
	jne printer

halt:
	hlt

times 510-($-$$) db 0
db 0x55, 0xaa
