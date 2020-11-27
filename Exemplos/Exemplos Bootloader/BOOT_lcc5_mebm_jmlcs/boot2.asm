org 0x500
jmp 0x0000:start

start:
    call initVideo    

    mov si, loading1 ; Init print loading
    mov  dl, 13        
    mov  dh, 7       
    mov  bh, 0
    mov  bl, 15
    mov  ah, 02h
    int  10h
    call printString ; End print loading

    push bx          ; Delay
    mov bx,0

     .loop_wait:
        call delay
        inc bx
        cmp bx, 10
        jl .loop_wait

    pop bx


    xor ax, ax
    mov ds, ax
    mov es, ax

    mov ax, 0x7e0 ;0x7e0<<1 = 0x7e00 (início de kernel.asm)
    mov es, ax
    xor bx, bx    ;Posição es<<1+bx

    jmp reset

initVideo: ; modo de video
  mov al, 13h
  mov ah, 0
  int 10h
  ret

delay:        
  mov cx, 01h
  mov dx, 86a0h
  mov ah, 86h
  int 15h
  ret

printString:       
  lodsb
  cmp al, 0
  je .done

  mov ah, 0xe
  int 0x10
  jmp printString
  
  .done:
        ret

reset:
    mov ah, 00h   ;Reseta o controlador de disco
    mov dl, 0     ;Floppy disk
    int 13h

    jc reset      ;Se o acesso falhar, tenta novamente

    jmp load

load:
    mov ah, 02h   ;Lê um setor do disco
    mov al, 20    ;Quantidade de setores ocupados pelo kernel
    mov ch, 0     ;Track 0
    mov cl, 3     ;Sector 3
    mov dh, 0     ;Head 0
    mov dl, 0     ;Drive 0
    int 13h

    jc load       ;Se o acesso falhar, tenta novamente

    jmp 0x7e00    ;Pula para o setor de endereco 0x7e00 (inicio do kernel)

data: 
    loading1 db 'LOADING FLAGS', 0
    cont dw 0