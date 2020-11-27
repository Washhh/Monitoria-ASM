org 0x500        ;endereço de memória em que o programa será carregado
jmp 0x0000:start  ;far jump - seta cs para 0

string1 db 13,'Loading structures for the kernel...',10,13,0
string2 db 'Setting up protected mode...',10,13,0
string3 db 'Loading kernel in memory...',10,13,0
string4 db 'Running kernel...',13,10,0
cor dw 0x2
d_delay dw 600
c_delay dw 1

start:
    xor ax, ax  ;zera ax, xor é mais rápido que mov
    mov ds, ax  ;zera ds (não pode ser zerado diretamente)
    mov es, ax  ;zera es
    xor bx, bx
    xor cx, cx
    xor dx,dx

    call screen_clear
    
   mov si,string1
   call impressao
   mov si,string2
   call impressao
   mov si,string3
   call impressao
    mov si,string4
    call impressao  

;--------------Mudar cor e tempo de delay ----------------;
    call screen_clear
    mov ax,0xf
    mov [cor],ax
    
    mov ax,0
    mov [c_delay],ax
   
;--------------Mudar pra matrix mode ---------------------;	


    jmp acabou

delay:
	mov cx,10
	mov dx,300
	mov ah, 86h
    	int 15h
    	ret

screen_clear:
    mov ax,12h
    int 10h
    ret


impressao:
    lodsb

    cmp al , 0
    je .exit

        mov ah, 0eh
	mov bx,[cor]
        mov bh,0
        ;mov bl,0x2 cor
        int 10h

        xor ax,ax
        call teclado_delay

    jmp impressao

    .exit:
            ;call espacos
            ret
teclado_delay:
    mov ah, 86h
    mov dx, [d_delay]
    mov cx,[c_delay]
    int 15h
    ret


acabou:

    xor ax, ax
    mov ds, ax
    mov es, ax

    mov ax, 0x7e0 ;0x7e0<<1 = 0x7e00 (início de kernel.asm)
    mov es, ax
    xor bx, bx    ;posição es<<1+bx

    jmp reset

reset:
    mov ah, 00h ;reseta o controlador de disco
    mov dl, 0   ;floppy disk
    int 13h

    jc reset    ;se o acesso falhar, tenta novamente

    jmp load

load:
    mov ah, 02h ;lê um setor do disco
    mov al, 20  ;quantidade de setores ocupados pelo kernel
    mov ch, 0   ;track 0
    mov cl, 3   ;sector 3
    mov dh, 0   ;head 0
    mov dl, 0   ;drive 0
    int 13h

    jc load     ;se o acesso falhar, tenta novamente

    jmp 0x7e00  ;pula para o setor de endereco 0x7e00 (start do boot2)

