org 0x7c00
jmp 0x0000:main
titulo db 'SALGADOS QUIZ',13
string1 db 'Voce esta com fome?...',13
string2 db 'Nao aguenta mais?...', 13
string3 db 'Salgados de qualidade...',13
string4 db 'Apenas 2,50... ', 13


PrintarString: 
	lodsb
	cmp al, 0
	je fim

	mov ah, 0xe
	int 10h	

	mov dx, 100;tempo do delay
	call delay 
	
	jmp PrintarString
fim:
ret

delay:
	mov bp, 100
	mov dx, 100
	delay2:
		dec bp
		nop
		jnz delay2
	dec dx
	jnz delay2

ret

limpaTela:
;; Limpa a tela dos caracteres colocados pela BIOS
	; Set the cursor to top left-most corner of screen
	mov dx, 0 
    mov bh, 0      
    mov ah, 0x2
    int 0x10

    ; print 2000 blanck chars to clean  
    mov cx, 2000 
    mov bh, 0
    mov al, 0x20 ; blank char
    mov ah, 0x9
    int 0x10
    
    ;Reset cursor to ton left-most corner of screen
    mov dx, 0 
    mov bh, 0      
    mov ah, 0x2
    int 0x10
ret
printUltra:
	lodsb

	mov ah, 0xe
	mov bh, 0
	int 10h
	cmp al, '.'
	je delayPonto
	call delay
	fim1:
	cmp al, 13
	jne printUltra
ret
delayPonto:
	
	mov bp, 500
	mov dx, 500
	delay3:
		dec bp
		nop
		jnz delay3
	dec dx
	jnz delay3
jmp fim1
main:
	;modo video
	mov ah, 0
	mov al, 12h
	int 10h
	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 0
	mov dl, 0
	int 10h

	mov bl, 0xe
	
	mov si, string1
	call printUltra

	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 1
	mov dl, 0
	int 10h

	mov si, string2
	call printUltra

	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 2
	mov dl, 0
	int 10h

	mov si, string3
	call printUltra
	
	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 3
	mov dl, 0
	int 10h

	mov si, string4
	call printUltra
 
    call limpaTela

	mov ah, 0xb  
	mov bh, 0     
	mov bl, 7   
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 30
	int 10h
	mov bl,1

	mov si, titulo
	call printUltra
	ret
 

times 510-($-$$) db 0
dw 0xaa55


