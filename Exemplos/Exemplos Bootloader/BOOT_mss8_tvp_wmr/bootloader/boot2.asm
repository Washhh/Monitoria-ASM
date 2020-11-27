org 0x500
bits 16

jmp start

%macro delay 2
	mov cx, %1
	mov dx, %2
	
	mov ah, 86h
	int 15h
%endmacro

print:
	
	lodsb

	cmp al, 0
	je fim

	mov ah, 0xe
	mov bh, 0
	int 0x10

	jmp print
	
	fim:
		
ret

start:
	xor ax, ax
	mov ds, ax
	
	mov si, msg1
	call print
	
	delay 000fh, 4240h
	
	mov si, msg2
	call print
	
	delay 001eh, 8480h
	
	mov si, msg3
	call print
	
	delay 000fh, 4240h
	
	mov si, msg4
	call print
	
	delay 000fh, 4240h
	
resetDisk:
	mov ax, 0 ;resetar: coloca head no 0 e track no 0
	mov dl, 0 ;drive 0
	
	int 13h
	jc resetDisk ;Se falhar, tenta de novo
	
readDisk:
	mov ah, 02h ;Lê setores do HD
	mov al, 50 ;Vai ler 15 setores
	mov ch, 0 ;No cilindro 0
	mov cl, 0x03 ;a partir do setor 3
	mov dh, 0 ;Head 0
	mov dl, 0 ;drive 0
	
	mov bx, 0x7e0 ;Vai colocar arquivo carregado no endereço 0x7e00
	mov es, bx
	xor bx, bx
	
	int 13h
	jc readDisk ;Se falhar, tenta de novo
	
	mov si, msg5
	call print
	
	mov ax, 0
	int 16h
	
	jmp 0x7e0:0x0000
	

msg1: db 'Matando os processos comunistas...', 13, 10, 0
msg2: db 'Ostentando os bits mais significativos...', 13, 10, 0
msg3: db 'Carregando os sistemas opressores...', 13, 10, 0
msg4: db 'Fritando coxinhas reacionarias...', 13, 10, 0
msg5: db 'Digite enter pra continuar...', 13, 10, 0
