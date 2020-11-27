org 0x7e00
jmp 0x0000:start
;matriz da imagem
img db 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 7, 8, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 1, 1, 1, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 8, 8, 8, 8, 1, 1, 1, 1, 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 8, 1, 1, 9, 9, 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 1, 1, 9, 15, 15, 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 9, 9, 1, 1, 9, 1, 1, 0, 0, 0, 0, 0, 0, 1, 9, 15, 15, 15, 9, 1, 1, 1, 1, 0, 0, 0, 0, 8, 0, 8, 1, 9, 9, 15, 15, 9, 9, 1, 8, 0, 0, 0, 0, 8, 8, 8, 8, 1, 9, 9, 9, 9, 8, 8, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 5, 1, 1, 9, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

start:
    call free_regs
    call init_video
    mov si, img
    call write_pixels
    jmp done

init_video:
    ;função que inicializa e seta o modo de video
    mov ah, 4FH
    mov al, 02H
    mov bx, 10H 
    int 10h 
    mov al, 13h
    mov ah, 0
    int 10h 
    
    ret
write_pixels:
    ;função que desenha os pixels
    mov dx, 0
    mov cx, 0
    .for_v:
    ;laço para variar verticalmente
        .for_h:
        ;laço para variar horizontal
            lodsb
            mov ah, 0ch
            int 10h
            inc cx
            cmp cx, 16
                jne .for_h
        mov cx, 0
        inc dx
        cmp dx,16
            jne .for_v
    
    .done:
        ret
free_regs:
    ;zera registradores
    mov ax, 0
    mov ds, ax 
    mov es,ax

    ret 
done:
    mov ah, 4Ch;função ede terminar o programa
    int 21h; interupção de finalizar o programa
    jmp $

