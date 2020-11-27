org 0x7e00
jmp 0x0000:main
 
data:
  string times 32 db 0
 
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
 
endl:                   ; pula linha
  mov al, 0x0a
  call putchar
  mov al, 0x0d
  call putchar
  ret
 
prints:             ; mov si, string
  xor cx, cx
    aloop:
        lodsb           ; bota character em al
        cmp al, 0
        je aendloop
        cmp al, ' '
        je cont
        cmp cl, 0
        je maiu
        jmp minu
   
    cont:
        mov ah, 0xe
        mov bh, 0
        mov bl, 15    
        call putchar
        jmp aloop
    maiu:
        inc cl
        cmp al, 'Z'
        jle cont
        sub al, 32
        jmp cont
    minu:
        dec cl
        cmp al, 'Z'
        jg cont
        adc al, 31
        jmp cont
    aendloop:
        ret
 
gets:                   ; Função que recebe string / mov di, string
  xor cx, cx        
  .loop1:
    call getchar
    cmp al, 0x08
    je .backspace
    cmp al, 0x0d
    je .done
    
    stosb
    inc cl
    mov ah, 0xe
    mov bh, 0
    mov bl, 15       
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
init_video:
    mov ah, 0
    mov al, 12h
    int 10h
    mov ah, 0xb
    mov al, 13h
    int 10h
    mov ah, 0xb
    mov bh, 0
    mov bl, 0
    int 10h
    ret
main:
  xor ax, ax
  mov ds, ax
  mov es, ax
  call init_video
  mov di, string
  call gets
  mov si, string
  call prints
jmp $
