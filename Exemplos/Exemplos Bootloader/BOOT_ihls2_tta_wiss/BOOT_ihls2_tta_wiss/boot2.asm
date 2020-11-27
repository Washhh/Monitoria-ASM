org 0x500;
jmp 0x000:main
titulo db 'SALGADOS QUIZ',13
string1 db 'Voce esta com fome?...',13
string2 db 'Nao aguenta mais?...', 13
string3 db 'Salgados de qualidade...',13
string4 db 'Apenas 2,50... ', 13



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
printT:
	lodsb

	mov ah, 0xe
	mov bh, 0
	int 10h
	cmp al, '.'
	je delayPonto
	call delay
	fim1:
	cmp al, 13
	jne printT
ret
delayPonto:
	
	mov bp, 1000
	mov dx, 1000
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
	call printT

	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 1
	mov dl, 0
	int 10h

	mov si, string2
	call printT

	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 2
	mov dl, 0
	int 10h

	mov si, string3
	call printT
	
	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 3
	mov dl, 0
	int 10h

	mov si, string4
	call printT
 
    call limpaTela

	mov ah, 0xb  
	mov bh, 0     
	mov bl, 7   
	int 10h

	mov ah, 02h
	mov bh, 00h
	mov dh, 08h
	mov dl, 34
	int 10h
	mov bl,1

	mov si, titulo
	call printT
	
	;Carrega na memoria o kernel
	xor ax, ax
	mov ds, ax

;Resetando o disco floppy, forçando também a setar todas as trilhas para 0
reset:
	mov ah,0		
	mov dl,0		
	int 13h			
	jc reset		;em caso de erro, tenta de novo, 

load_menu:
;Setando a posição do disco onde kernel.asm foi armazenado(ES:BX = [0x7E00:0x0])
	mov ax,0x7E0	;0x7E0<<1 + 0 = 0x7E00
	mov es,ax
	xor bx,bx		;Zerando o offset

;Setando a posição da Ram onde o menu será lido
	mov ah, 0x02	;comando de ler setor do disco
	mov al,4		;quantidade de blocos ocupados pelo menu
	mov dl,0		;drive floppy

;Usaremos as seguintes posições na memoria:
	mov ch,0		;trilha 0
	mov cl,3		;setor 3
	mov dh,0		;cabeca 0
	int 13h
	jc load_menu	;em caso de erro, tenta de novo

break:	
	jmp 0x7e00	
 

times 510-($-$$) db 0
dw 0xaa55


