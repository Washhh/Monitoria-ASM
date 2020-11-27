org 0x7c00
jmp 0x0000:main

data:
  pergunta1 db 'QUAL A PIOR CADEIRA DO PRIMEIRO PERIODO?',0
  a db 'P) IP',0
  b db 'Q) CALCULO',0
  c db 'T) MD',0
  d db 'F) AVLC',0
  string times 1 db 0
  Certa db 'KABUM',0
  Errada db 'VOCE ERROU',0
  
; calls
putchar:
  mov ah, 0x0e
  int 10h
  ret
  
getchar:
  mov ah, 0x00
  int 16h
  ret
  
delchar:
  mov al, 0x08          ; backspace
  call putchar
  mov al, ' '
  call putchar
  mov al, 0x08          ; backspace
  call putchar
  ret
  
endl:
  mov al, 0x0a          ; line feed
  call putchar
  mov al, 0x0d          ; carriage return
  call putchar
  ret
prints:             ; mov si, string
  .loop:
    lodsb           ; bota character em al 
    cmp al, 0
    je .endloop
    call putchar
    jmp .loop
  .endloop:
  ret

gets:                 ; mov di, string
  xor cx, cx          ; zerar contador
  .loop1:
    call getchar
    cmp al, 0x08      ; backspace
    je .backspace
    cmp al, 0x0d      ; carriage return
    je .done
    cmp cl, 10        ; string limit checker
    je .loop1
    
    stosb
    inc cl
    call putchar
    
    jmp .loop1
    .backspace:
      cmp cl, 0       ; is empty?
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
     
delay: 
;; Função que aplica um delay(improvisado) baseado no valor de dx
	mov bp, dx
	back:
	dec bp
	nop
	jnz back
	dec dx
	cmp dx,0    
	jnz back
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
 printString:
	
	lodsb
	mov cl, 0
	cmp cl, al
	je .done
	
	mov ah, 0xe
	int 0x10

	jmp printString
	
	.done:
    ret
certo:
    call limpaTela
    mov  dl, 30
	mov  dh, 2
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, Certa
    call printString 
    ret 
errado:
    call limpaTela
    mov  dl, 30
	mov  dh, 2
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, Errada
    call printString
    ret  
main:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 9
	int 10h	
    mov bl, 12
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta1
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d
    call printString
    xor ax, ax
    call endl

    ler1:
    call getchar
    cmp al, 'P'
    je errado
    cmp al, 'Q'
    je errado
    cmp al, 'F'
    je errado
    cmp al, 'T'
    je certo
     cmp al, 'p'
    je errado
    cmp al, 'q'
    je errado
    cmp al, 'f'
    je errado
    cmp al, 't'
    je certo
    jmp ler1
    
end:
times 510-($-$$) db 0
dw 0xaa55