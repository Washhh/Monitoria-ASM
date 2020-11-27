org 0x7c00
jmp 0x0000:start

start:
	xor ax, ax
	mov ds, ax
	
resetDisk:
	mov ax, 00h ;resetar: coloca head no 0 e track no 0
	mov dl, 0 ;drive 0
	
	int 13h
	jc resetDisk ;Se falhar, tenta de novo
	
readDisk:
	mov ah, 02h ;Lê setores do HD
	mov al, 1 ;Vai ler um setor
	mov ch, 0 ;No cilindro 0
	mov cl, 0x02 ;a partir do setor 2
	mov dh, 0 ;Head 0
	mov dl, 0 ;drive 0
	
	mov bx, 0x50 ;Vai colocar arquivo carregado no endereço 0x500
	mov es, bx
	xor bx, bx
	
	int 13h
	jc readDisk ;Se falhar, tenta de novo
	
	
	jmp 0x50:0x0

	
times 510-($-$$) db 0
dw 0xaa55
