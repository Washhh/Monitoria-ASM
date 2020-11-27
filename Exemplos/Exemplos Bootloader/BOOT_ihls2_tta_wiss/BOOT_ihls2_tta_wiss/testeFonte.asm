org 0x7c00
jmp 0x0000:main

main:
    mov ah, 0
	mov al, 12h
	int 10h
    mov bl, 15
    xor ax,ax
    mov ds, ax
    mov es, ax
    mov ah, 60h
    mov al, 05h
    int 10h

    mov ah, 0xe
    mov al, 'A'
    int 10h
    
end:
times 510-($-$$) db 0
dw 0xaa55