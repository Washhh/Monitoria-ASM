;esse programa desenha na tela do usuario uma bandeira do brasil

org 0x7c00
jmp 0x0000:main

main:
	xor ax, ax
	mov ds, ax

	call clear; limpa a tela
	call background ;colore o fundo

	mov dx, 40 ;seta as coordenadas para o proximo print
	mov cx, 320

	call section1
	call section2

	mov dx, 40
	mov cx, 320

	call section3
	call section4

	call filled_circle ;chamada da função que printa o circulo

	call rectangle

	jmp $
	
clear:
	mov ah, 0
	mov al, 10h
	int 10h
	ret

background: ;chama a interrupção de video definindo a tela para verde
	mov ah, 0xb
	mov bh, 0
	mov bl, 2; 2 é verde
	int 10h
	ret

print_pixel_yellow: ;pinta o pixel determinado pelas coordenadas cx, dx de amarelo
	mov ah, 0ch
	mov bh, 0
	mov al, 14
	int 10h
	ret

print_pixel_blue: ;printa o pixel determinado pelas coodrnadas cx, dx de azul
	mov ah, 0ch
	mov bh, 0
	mov al, 1
	int 10h
	ret

print_pixel_white: ;printa o pixel determinado pelas coodernadas cx, dx de branco
	mov ah, 0ch
	mov bh, 0
	mov al, 15
	int 10h
	ret

print_line_left:
	cmp cx, 320 ;compara o valor de cx
	jge .done

	call print_pixel_yellow ;chamada da função que printa o pixel amarelo
	inc cx ;incrementa cx

	jmp print_line_left

	.done:
		ret

section1:
	cmp dx, 170 ;compara se a coordenada y chegou no limite
	jge .done
	push cx ;coloca o valor de cx na pilha

	call print_line_left
	
	pop cx ;desenpilha o valor de cx
	dec cx ;decremente 2 vezes
	dec cx

	inc dx ;incrementa o valor de dx
	jmp section1
done
	.done:
		ret

section2:
	cmp dx, 310 ;compara se a coordenada y chegou no limite
	jge .done
	push cx ;coloca o valor de cx na piha
 
	call print_line_left
	
	pop cx
	inc cx
	inc cx

	inc dx
	jmp section2

	.done:
		ret

print_line_right:
	cmp cx, 320
	jl .done

	call print_pixel_yellow
	dec cx

	jmp print_line_right

	.done:
		ret

section3: ;mesmo que section 1 mudando apenas os limites de dx
	cmp dx, 170
	jge .done
	push cx

	call print_line_right
	
	pop cx
	inc cx
	inc cx

	inc dx
	jmp section3

	.done:
		ret

section4: ;mesmo que section 1, mudando apenas os limites de dx
	cmp dx, 310
	jge .done
	push cx

	call print_line_right
	
	pop cx
	dec cx
	dec cx

	inc dx
	jmp section4

	.done:
		ret

filled_circle:
	mov cx, 320 ;seta as coordenadas iniciais do circulo
	mov dx, 170
	push cx ;salva os valores na pilha
	push dx

	mov ax, -80 ;seta o valor de ax e salva na pilha
	push ax

	.loop1:
		pop ax ;retira o valor salvo da pilha
		cmp ax, 80 ;compara o valor limite
		je .done
		inc ax ;incrementa o valor e salva na pilha
		push ax

		mov bx, -80 ;seta o valor de bx
		push bx ;salva na pilha
		jmp .loop2

	.loop2:
		pop bx ;salva o valor do topo da pilha em bx
		cmp bx, 80 ;compara com o valor limite
		je .loop1
		inc bx ;incrementa e salva o valor atualizad na pilha
		push bx

		jmp .check

	.check:
		pop bx ;alterna os valores da pilha
		pop ax
		push ax
		push bx

		mov cx, ax
		mov dx, bx

		mul ax ;ax = ax*al if(ah==0)
		xchg ax, bx ;troca o valor de ax com bx
		mul ax
		add ax, bx

		cmp ax, 6400
		jg .loop2

		pop bx ;alterna os valores da pilha
		pop ax
		pop dx
		pop cx
		push cx
		push dx
		push ax
		push bx

		add cx, ax
		add dx, bx

		call print_pixel_blue

		jmp .loop2

	.done:
		pop dx
		pop cx
		ret
	
rectangle:
	mov cx, 240; seta os valores das coordenadas iniciais
	mov dx, 161
	push cx
	push dx

	mov ax, 0
	push ax

	.loop1:
		pop ax
		cmp ax, 160
		jge .done
		inc ax
		push ax

		mov bx, 0
		push bx
		jmp .loop2

	.loop2:
		pop bx
		cmp bx, 15
		je .loop1
		inc bx
		
		pop ax
		pop dx
		pop cx
		push cx
		push dx
		push ax
		push bx

		add cx, ax
		add dx, bx

		call print_pixel_white

		jmp .loop2

	.done: ;limpa os registradores e retorna
		pop dx
		pop cx
		ret

times 510-($-$$) db 0
dw 0xaa55