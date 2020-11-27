org 0x7c00
jmp 0x0000:main

data:
    ultra db 'SALGADOS QUIZ', 13
    ultraLento db 'SALGADOS QUIZ', 0
    comessar db 'Clique em qualquer tecla para iniciar',13
printUltra:
	lodsb

	mov ah, 0xe
	mov bh, 0
	int 10h

	cmp al, 13
	jne printUltra
ret
delay:
	mov bp, 350
	mov dx, 350
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

PrintarString: 
	lodsb
	cmp al,0
	je fim

	mov ah, 0xe
	int 10h	

	mov dx, 500;tempo do delay
	call delay 
	
	jmp PrintarString
fim:
ret
main:
    xor ax, ax
    mov es, ax
    mov ds, ax
    mov ah, 0
	mov al, 12h
	int 10h
;Colorindo a tela de azul.
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 1   
	int 10h	

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

	mov bl, 13
	mov si, ultra
	call printUltra
	call delay

	;Colorindo a tela de amarelo.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 14  
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

	mov bl, 5
	mov si, ultra
	call printUltra
	call delay

	;Colorindo a tela de vermelho.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 4   
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

	mov bl, 14
	mov si, ultra
	call printUltra
	call delay

	;Colorindo a tela de verde.
	mov ah, 0xb  
	mov bh, 0     
	mov bl, 2   
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h

	mov bl, 15
	mov si, ultra
	call printUltra
    
    call delay
    call limpaTela
    
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 2   
	int 10h
    mov bl, 15
	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 24h
	int 10h
    mov si, ultraLento
    call PrintarString
    
    call delay

    mov  dl, 25
    mov  dh, 15
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, comessar
    call printUltra
times 510-($-$$) db 0
dw 0xaa55