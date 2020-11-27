org 0x7c00
jmp 0x0000: main

string times 51 db 0
number times 9 db 0

main:
	xor ax, ax
	mov ds, ax

	call clear 

	mov bl, 15

	mov di, number ;seta di para number
	call gets

	mov si, number
	call stoi

	mov bl, 15
	call test

	call getchar

	call main

	.done:
		jmp $
	
clear: ;modo video
	mov ah, 0
	mov al, 12h
	int 10h
	ret

getchar: ;recebe um char
	mov ah, 0
	int 16h
	ret

putchar: ;printa o caractere
	mov ah, 0xe
	int 10h
	ret

delchar: ;printa espaço
	mov al, 8
	call putchar
	mov al, ' '
	call putchar
	mov al, 8
	call putchar
	ret

endl: ;função para pular linha
	mov al, 0x0a
	call putchar
	mov al, 0x0d
	call putchar
	ret

gets: ;função para receber strings e ja printa na tela do usuario
  	xor cx, cx ;zera cx, xor é mais rapido que mov
	.loop1:
		call getchar 
		cmp al, 0x08 ;se al receber esse valor, significa que o backspace foi apertado
		je .backspace
		cmp al, 0x0d; se al receber esse valor, significa que o enter foi apertado
		je .done
		cmp cl, 50
		je .loop1

		stosb
		inc cl
		call putchar

		jmp .loop1
		.backspace: ;trata o backspace
			cmp cl, 0
			je .loop1
			dec di
			dec cl
			mov byte[di], 0
			call delchar
		jmp .loop1
	.done:
	mov al, 0
	stosb
	call endl
	ret

stoi:
	xor cx, cx
	xor ax, ax

	.loop1:
		push ax
		lodsb
		mov cl, al
		pop ax
		cmp cl, 0
		je .endloop1

		sub cl, 48
		mov bx, 10
		mul bx
		add ax, cx
		jmp .loop1

	.endloop1:
		ret

test: ;função para testar a string
	push ax
	.loop1:
		pop ax
		cmp al, 0
		je .done

		dec ax
		push ax
		xor ax, ax

		mov di, string
		call gets

		mov edx, 0
		mov si, string
		call check

		mov al, 'S'

		cmp edx, 0
		je .print

		mov al, 'N'

	.print: ;printa o resultado
		call putchar
		call endl
		jmp .loop1

	.done:
		ret

check: ;checa sea string é valida
	mov di, si
	xor cx, cx

	.loop1:
		lodsb
		cmp al, 0
		je .done

		cmp al, '{' ;se for caractere de abrir, adiciona na pilha
		je .to_pile
		cmp al, '['
		je .to_pile
		cmp al, '('
		je .to_pile

		cmp al, '}' ;se for caractere de fechar, compara com o caractere do topo da pilha, e checa se é seu par
		je .check_valid1
		cmp al, ']'
		je .check_valid2
		cmp al, ')'
		je .check_valid3

		jmp .failed

	.to_pile: ;adiciona na pilha
		inc cl
		push ax
		jmp .loop1

	.check_valid1:
		cmp cl, 0
		je .failed
		pop dx
		dec cl
		cmp dl, '{'
		je .remove
		jmp .failed

	.check_valid2:
		cmp cl, 0
		je .failed
		pop dx
		dec cl
		cmp dl, '['
		je .remove
		jmp .failed

	.check_valid3:
		cmp cl, 0
		je .failed
		pop dx
		dec cl
		cmp dl, '('
		je .remove
		jmp .failed

	.remove: ;se for valido remove o caractere da pilha
		mov edx, 0
		jmp .loop1

	.failed: ;se nao for o par, a string ja nao é mais valida
		mov edx, 1
		jmp .done

	.done:
		cmp cl, 0
		je .exit

		pop dx
		dec cl

		jmp .done

	.exit:
		ret

times 510-($-$$) db 0
dw 0xaa55