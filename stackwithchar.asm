[org 0x7c00]

mov sp, 0x7c00 ; intialize stack pointer to the end of the bootloader

push '>' ; push the ASCII Value of 'A' onto the stack

pop ax ; pop character into ax

mov ah, 0x0e ; set BIOS Interrupt function to print character
mov al, al ; move character to al
int 0x10 ; call BIOS Interrupt to print character

hlt

times 510-($-$$) db 0
db 0x55, 0xaa
