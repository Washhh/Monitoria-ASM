org 0x7c00
jmp 0x0000:start

data:
n: times 100 db 0

;biblioteca principal

putchar:
    mov ah, 0x0e
    int 10h
    ret
   
   
getchar:
    mov ah, 0x00
    int 16h
    ret
   
   
delchar:
    mov al, 0x08                    
    call putchar
    mov al, ' '
    call putchar
    mov al, 0x08                   
    call putchar
    ret
   
endl:
    mov al, 0x0a                    
    call putchar
    mov al, 0x0d                    
    call putchar
    ret
   


totransform:   
     ;trasnformar para numeros
     mov si, n
     call stoi
     
     ;auxiliar
     mov bx, ax 		;move o que ta em ax para bx, no caso o valor de n
     mov ax, 0			;ax passa a ter o valor 0
    
    .loops: 
    cmp bx, 0			;compara se bx é 0
    je .end
    add ax, bx			;ax+=bx
    sub bx, 1			;bx--
    jmp .loops			
    
    
   .end:
        mov di, n     
        call tostring
                        
        mov si, n
        call prints
        ret
 
     
ret

prints:							; mov si, string
	.loop:
		lodsb					; bota character em al 
		cmp al, 0
		je .endloop
		call putchar
		jmp .loop
	.endloop:
	ret
	
	
prints1:							; mov si, string
		lodsb					; bota character em al 
		add al, 48
		
	
	ret
	
		
tostring:						; mov ax, int / mov di, string
	push di
	.loop1:
		cmp ax, 0
		je .endloop1
		xor dx, dx
		mov bx, 10
		div bx					; ax = 9999 -> ax = 999, dx = 9
		xchg ax, dx				; swap ax, dx
		add ax, 48				; 9 + '0' = '9'
		stosb
		xchg ax, dx
		jmp .loop1
	.endloop1:
	pop si
	cmp si, di
	jne .done
	mov al, 48
	stosb
	.done:
		mov al, 0
		stosb
		call reverse
		ret

stoi:							; mov si, string
	xor cx, cx
	xor ax, ax
	.loop1:
		push ax
		lodsb
		mov cl, al
		pop ax
		cmp cl, 0				; check EOF(NULL)
		je .endloop1
		sub cl, 48				; '9'-'0' = 9
		mov bx, 10
		mul bx					; 999*10 = 9990
		add ax, cx				; 9990+9 = 9999
		jmp .loop1
	.endloop1:
	ret
	
reverse:						; mov si, string
	mov di, si
	xor cx, cx					; zerar contador
	.loop1:						; botar string na stack
		lodsb
		cmp al, 0
		je .endloop1
		inc cl
		push ax
		jmp .loop1
	.endloop1:
	.loop2: 					; remover string da stack				
		pop ax
		stosb
		loop .loop2
	ret	

gets:                            ; mov di, string
    xor cx, cx                    ; zerar contador
    .loop1:
        call getchar
        cmp al, 0x08            
        je .backspace
        cmp al, 0x0d            
        je .done
        cmp cl, 13               ; limite da string / 13 equivale ao enter 
        je .loop1
       
        stosb
        inc cl
        call putchar
       
        jmp .loop1
        .backspace:
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
    

   
;fim da biblioteca principal

start:
    
    
    ;ler a palavra
    mov di, n
    call gets
    
    
    call totransform
  
   
   
   

jmp $
times 510-($-$$) db 0       
dw 0xaa55           
                



