org 0x500 			;aqui a gente mudou o org pra onde começa esse programa. no boot1 a gente da jump pra ca
jmp 0x0000:start


string1 db 'Loading structures for the kernel...',13,10,0
string2 db 'Setting up protected mode...',13,10,0
string3 db 'Loading kernel in memory...',13,10,0
string4 db 'Running kernel...',13,10,0
stringT db 'xD',13,10,0
line dw 0
max dw 0

start:
	xor ax,ax
	mov ds,ax

	Reset_Disk_Drive:
		mov ah,0		;INT 13h AH=00h: Reset Disk Drive
		mov dl,0		;floppydisk 
		int 13h			;interrupção de acesso ao disco
	jc Reset_Disk_Drive		;se der erro CF é setado, daí voltaria para o Reset_Disk_Drive

	mov ax,0x0012
	int 10h

	call loading_limit
	mov al,0x00
	call cursor_blink
	mov si,string1
	call print_string
	call loading
	call loading_off
	call loading_limit
	mov al,0x01
	mov si,string2
	call print_string
	call loading
	call loading_off
	call loading_limit
	mov al,0x02
	mov si,string3
	call print_string
	call loading
	call loading_off
	call loading_limit
	mov al,0x03
	mov si,string4
	call print_string
	call loading
	call loading_off

	mov ax,0x08e0;mov ax,0x07e0
	mov es,ax ; 
	mov bx,0x0000 ; 07e0:0000 -> 0x07e00
	Load_Kernel:
		mov ah, 0x02		;;INT 13h AH=02h: Read Sectors From Drive
		mov al, 30	;numero de setores ocupados pelo kernel
		mov ch,0		;trilha 0
		mov cl,3	;vai comecar a ler do setor 3
		mov dh,0		;cabeca 0
		mov dl,0		;drive 0
		int 13h			;interrupcao de disco
	jc Load_Kernel	;se der erro CF é setado, daí voltaria para o Load_Kernel	

jmp 0x8e00


cursor_blink:
	mov ah,0x00
	mov cl,0x10
	mul cl
	inc ax 
	mov di,line
	mov word [di],ax
	mov cx,0x02
	call cursor_on
	call delay
	call cursor_off
	call delay
	call cursor_on
	call delay
	call cursor_off
	ret 


cursor_on:
	mov di,line
	mov si,max
	xor ax,ax
	add ax,0x000b
	add ax,word [di]
	mov word[si],ax
	mov ax,0x0c02 ;ah=0x0c (pixel na cordenada dx,cx) e al é a cor 0x02(verde)
	mov bh,0x00
	xor cx,cx
	loop_cursor_on:
		mov dx,word [di]
		int 10h
		loop2_cursor_on:
			inc dx
			cmp dx,word[si]	
			int 10h
			jne loop2_cursor_on
		inc cx
		cmp cx,0x0008
		jne loop_cursor_on
	ret

cursor_off:
	mov di,line
	mov si,max
	xor ax,ax
	add ax,0x000b
	add ax,word [di]
	mov word[si],ax
	mov ax,0x0c00 ;ah=0x0c (pixel na cordenada dx,cx) e al é a cor 0x02(verde)
	mov bh,0x00
	xor cx,cx
	loop_cursor_off:
		mov dx,word [di]
		int 10h
		loop2_cursor_off:
			inc dx
			cmp dx,word[si]	
			int 10h
			jne loop2_cursor_off
		inc cx
		cmp cx,0x0008
		jne loop_cursor_off
	ret

loading:
	mov cx,0x0040
	loop_loading:
		call loading_unit
		inc cx
		push cx
		xor cx,cx
		call delay
		pop cx
		cmp cx,0x0240
		jne loop_loading
		mov ah, 86h
		mov cx, 10	
		xor dx, dx
		mov dx, 40	
		int 15h
	ret

loading_off:
	mov cx,0x0040
	loop_loading_off:
		call loading_unit_off
		inc cx
		cmp cx,0x0240
		jne loop_loading_off
	ret

loading_unit_off:
	mov ax,0x0c00
	mov bh,0x00
	mov dx,0x0100
	loop_loading_unit_off:
		int 10h
		inc dx
		cmp dx,0x0110
		jne loop_loading_unit_off
	ret 


loading_limit:
	mov ax,0x0c0f
	mov bh,0x00
	mov dx,0x0100
	loop_loading_limit:
		mov cx,0x0040
		int 10h
		mov cx,0x0239
		int 10h
		inc dx
		cmp dx,0x0110
		jne loop_loading_limit
	ret

loading_unit:
	mov ax,0x0c02
	mov bh,0x00
	mov dx,0x0100
	loop_loading_unit:
		int 10h	
		inc dx
		cmp dx,0x0110
		jne loop_loading_unit
	ret 
print_string:
	mov bl,02h
	loop_print_string:
		mov cx,1
		call delay
		lodsb
		cmp al,0
		je end_print_string
		mov ah,0eh
		int 10h
		jmp loop_print_string
	end_print_string:
		ret

delay:
	mov ah, 86h
	;mov cx, 0
	xor dx, dx
	mov dx, 40	
	int 15h
ret

jmp $