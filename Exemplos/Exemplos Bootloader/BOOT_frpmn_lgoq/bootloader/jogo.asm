org 0x8600
jmp 0x0000:start

facar db  '000000000000000000000000000000000000000000000044000000000000000000000004848484844447777777777777777777777484848484884488888888888888888888404848484848844777778888888888888840048484848488448888888888888888844000048484848444440404044488884444000000000000000044000000000444400000000000000000000000000000000000000000000', 0Ah
facab db  '000000000000000000000000000000000000000000000011000000000000000000000001818181811117777777777777777777777181818181881188888888888888888888401818181818811777778888888888888840018181818188118888888888888888844000018181818111140404044488884444000000000000000011000000000444400000000000000000000000000000000000000000000', 0Ah
facag db  '000000000000000000000000000000000000000000000022000000000000000000000002828282822227777777777777777777777282828282882288888888888888888888402828282828822777778888888888888840028282828288228888888888888888844000028282828222240404044488884444000000000000000022000000000444400000000000000000000000000000000000000000000', 0Ah
facay db  '0000000000000000000000000000000000000000000000ee00000000000000000000000e8e8e8e8eeee7777777777777777777777e8e8e8e8e88ee8888888888888888888840e8e8e8e8e88ee7777788888888888888400e8e8e8e8e88ee88888888888888888440000e8e8e8e8eeee404040444888844440000000000000000ee000000000444400000000000000000000000000000000000000000000', 0Ah
borracha db '            ',0
lv db ' LEVEL =>  ',0
r db 'vermelho = 1', 0 
b db 'azul = 2', 0
g db 'verde = 3', 0
y db 'amarelo = 4', 0
ganho db ' YOU GANHOU MEU CHAPA! ',0

cnt dw 0
level equ 49
move equ 0

putpixel:
    mov ah,0ch
    mov bh,0
    int 10h
    ;cx linha
    ;dx coluna
    ;al cor
    ret
init:
	
	mov al, 13h
	mov ah, 0
	int 10h
ret


printfacar:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacar
    .done:
        inc dx
        cmp dx,84  ;start
        je .finish
        mov cx, 27
        jmp printfacar
    .finish:
        ret
printfacab:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacab
    .done:
        inc dx
        cmp dx,114  ;start
        je .finish
        mov cx, 27
        jmp printfacab
    .finish:
        ret
printfacag:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacag
    .done:
        inc dx
        cmp dx,144  ;start
        je .finish
        mov cx, 27
        jmp printfacag
    .finish:
        ret
printfacay:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    ; mov al, 5
    cmp al, 'e'
    je .ama
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacay
    .ama:
        mov al, 14
        mov ah, 0Ch
        int 10h
        jmp printfacay
    .done:
        inc dx
        cmp dx,174  ;start
        je .finish
        mov cx, 27
        jmp printfacay
    .finish:
        ret

printfacar2:
    inc cx
    cmp cx, 113  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacar2
    .done:
        inc dx
        cmp dx,84  ;start
        je .finish
        mov cx, 77
        jmp printfacar2
    .finish:
        ret
printfacab2:
    inc cx
    cmp cx, 113  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacab2
    .done:
        inc dx
        cmp dx,114  ;start
        je .finish
        mov cx, 77
        jmp printfacab2
    .finish:
        ret
printfacag2:
    inc cx
    cmp cx, 113  
    je .done
   
    lodsb 
    ; mov al, 5
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacag2
    .done:
        inc dx
        cmp dx,144  ;start
        je .finish
        mov cx, 77
        jmp printfacag2
    .finish:
        ret
printfacay2:
    inc cx
    cmp cx, 113  
    je .done
   
    lodsb 
    ; mov al, 5
    cmp al, 'e'
    je .ama
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp printfacay2
    .ama:
        mov al, 14
        mov ah, 0Ch
        int 10h
        jmp printfacay2
    .done:
        inc dx
        cmp dx,174  ;start
        je .finish
        mov cx, 77
        jmp printfacay2
    .finish:
        ret
    
delay:
    push dx
	mov bp, 1500
	mov dx, 1500
	delay2:
		dec bp
		nop
		jnz delay2
	dec dx
	jnz delay2
    pop dx
ret

apagafacar:
    inc cx
    cmp cx, 63  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacar
    .done:
        inc dx
        cmp dx,84  ;start
        je .finish
        mov cx, 27
        jmp apagafacar
    .finish:
        ret
apagafacar2:
    inc cx
    cmp cx, 113  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacar2
    .done:
        inc dx
        cmp dx,84  ;start
        je .finish
        mov cx, 77
        jmp apagafacar2
    .finish:
        ret
facadar:
    mov cx, 27
    mov dx, 75
    call apagafacar
    mov cx, 77
    mov dx, 75
    mov si, facar
    call printfacar2
    call delay
    mov cx, 77
    mov dx, 75
    call apagafacar2
    ; call delay
    mov cx, 27
    mov dx, 75
    mov si, facar
    call printfacar
    call boxr
    call delay
    ret

apagafacab:
    inc cx
    cmp cx, 63  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacab
    .done:
        inc dx
        cmp dx,114  ;start
        je .finish
        mov cx, 27
        jmp apagafacab
    .finish:
        ret
apagafacab2:
    inc cx
    cmp cx, 113  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacab2
    .done:
        inc dx
        cmp dx,114  ;start
        je .finish
        mov cx, 77
        jmp apagafacab2
    .finish:
        ret

facadab:
    mov cx, 27
    mov dx, 105
    call apagafacab
    mov cx, 77
    mov dx, 105
    mov si, facab
    call printfacab2
    call delay
    mov cx, 77
    mov dx, 105
    call apagafacab2
    ; call delay
    mov cx, 27
    mov dx, 105
    mov si, facab
    call printfacab
    call boxb
    call delay
    ret

apagafacag:
    inc cx
    cmp cx, 63  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacag
    .done:
        inc dx
        cmp dx,144  ;start
        je .finish
        mov cx, 27
        jmp apagafacag
    .finish:
        ret
apagafacag2:
    inc cx
    cmp cx, 113  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacag2
    .done:
        inc dx
        cmp dx,144  ;start
        je .finish
        mov cx, 77
        jmp apagafacag2
    .finish:
        ret

facadag:
    mov cx, 27
    mov dx, 135
    call apagafacag
    mov cx, 77
    mov dx, 135
    mov si, facag
    call printfacag2
    call delay
    mov cx, 77
    mov dx, 135
    call apagafacag2
    ; call delay
    mov cx, 27
    mov dx, 135
    mov si, facag
    call printfacag
    call boxg
    call delay
ret

apagafacay:
    inc cx
    cmp cx, 63  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacay
    .done:
        inc dx
        cmp dx,174  ;start
        je .finish
        mov cx, 27
        jmp apagafacay
    .finish:
        ret
apagafacay2:
    inc cx
    cmp cx, 113  
    je .done
    mov al, 0
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    ; mov bh, 0
    int 10h     ;interrupção de vídeo.
    jmp apagafacay2
    .done:
        inc dx
        cmp dx,174  ;start
        je .finish
        mov cx, 77
        jmp apagafacay2
    .finish:
        ret

facaday:
    mov cx, 27
    mov dx, 165
    call apagafacay
    mov cx, 77
    mov dx, 165
    mov si, facay
    call printfacay2
    call delay
    mov cx, 77
    mov dx, 165
    call apagafacay2
    ; call delay
    mov cx, 27
    mov dx, 165
    mov si, facay
    call printfacay
    call boxy
    call delay
    ret


putchar:   
    ;dl coluna
    ;dh linha
    mov ah, 0eh
    int 10h
ret

prints:
	;dh linha
    ;dl coluna
    ;bl cor
    ;si string
    call setcur
    .lup:
	lodsb
	mov cl, 0
	cmp cl, al
	je .done	
    call putchar
	jmp .lup	
	.done:
ret

setcur:
;dl coluna
;dh linha
    mov ah,02h
    mov bh,0 ;cor de fundo
    int 10h
ret

boxr:
    mov cx, 104
    mov dx, 70
    printbr:
        inc cx
        cmp cx, 124   
        je .done
    
        mov al, 7
        mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
        ; mov bh, 0
        int 10h     ;interrupção de vídeo.
        jmp printbr
        .done:
            inc dx
            cmp dx,90  ;start
            je .finish
            mov cx, 104
            jmp printbr
        .finish:
            ret

boxb:
    mov cx, 104
    mov dx, 100
    .printbr:
        inc cx
        cmp cx, 124   
        je .done
    
        mov al, 7
        mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
        ; mov bh, 0
        int 10h     ;interrupção de vídeo.
        jmp .printbr
        .done:
            inc dx
            cmp dx,120  ;start
            je .finish
            mov cx, 104
            jmp .printbr
        .finish:
            ret

boxg:
    mov cx, 104
    mov dx, 130
    .printbr:
        inc cx
        cmp cx, 124   
        je .done
    
        mov al, 7
        mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
        ; mov bh, 0
        int 10h     ;interrupção de vídeo.
        jmp .printbr
        .done:
            inc dx
            cmp dx,150  ;start
            je .finish
            mov cx, 104
            jmp .printbr
        .finish:
            ret

boxy:
    mov cx, 104
    mov dx, 160
    .printbr:
        inc cx
        cmp cx, 124   
        je .done
    
        mov al, 7
        mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
        ; mov bh, 0
        int 10h     ;interrupção de vídeo.
        jmp .printbr
        .done:
            inc dx
            cmp dx,180  ;start
            je .finish
            mov cx, 104
            jmp .printbr
        .finish:
            ret

printlv:
    mov cx,0
    mov dx,0
    mov al,9
    .cont:
        call putpixel
        inc cx
        cmp cx,640
        jl .cont
        mov cx,0
        inc dx
        cmp dx,60
        jl .cont

        mov si,borracha
        mov bl,4
        mov dl,25
        mov dh,3
        call prints
        mov si,borracha
        mov bl,4
        mov dl,25
        mov dh,1
        call prints
        mov si,lv
        mov bl,4
        mov dl,25
        mov dh,2
        call prints

        mov dl,0
        mov dh,0
        mov bl,4
        mov al, level
        add al, [cnt]
        mov ah,0eh
        int 10h

        mov bl,4
        mov dl, 25
        mov dh, 9
        mov si, r
        call prints
        mov bl,1
        mov dl, 25
        mov dh, 13
        mov si, b
        call prints
        mov bl,2
        mov dl, 25
        mov dh, 17
        mov si, g
        call prints
        mov bl,14
        mov dl, 25
        mov dh, 21
        mov si, y
        call prints

    ret

yuin:
    mov cx,0
    mov dx,0
    mov al,2
    .cont:
        call putpixel
        inc cx
        cmp cx,640
        jl .cont
        mov cx,0
        inc dx
        cmp dx,200
        jl .cont

    mov si,ganho
    mov bl,15
    mov dl,8
    mov dh,10   
    call prints
    call delay
    call delay
    call delay
    call inicio
ret

letecla:
    mov ax, 0
    mov ah, 0
    int 16h
    cmp al, 49
    je .fr
    cmp al, 50
    je .fb
    cmp al, 51
    je .fg
    cmp al, 52
    je .fy
    .fr:
        push 49
        call facadar
        pop ax
        ret
    .fb:
        push 50
        call facadab
        pop ax
        ret
    .fg:
        push 51
        call facadag
        pop ax
        ret
    .fy:
        push 52
        call facaday
        pop ax
        ret
    ret
lvl1:
    ; 1 1 4 3 2 1 4
    call facadar
    call facadar
    call facaday
    call facadag
    call facadab
    call facadar
    call facaday
    ; espera teclado
   
    call letecla
    cmp al, 49
    je .p2
    jmp errou
    .p2:
        call letecla
        cmp al, 49
        je .p3
        jmp errou
    .p3:
        call letecla
        cmp ax, 52
        je .p4
        jmp errou
    .p4:
        call letecla
        cmp ax, 51
        je .p5
        jmp errou
    .p5:
        call letecla
        cmp ax, 50
        je .p6
        jmp errou
    .p6:
        call letecla
        cmp ax, 49
        je .p7
        jmp errou
    .p7:
        call letecla
        cmp ax, 52
        je .prox
        jmp errou
    .prox:
        ; parabens, prox level
        
        mov ax,[cnt]
        inc ax
        mov [cnt],ax
        call yuin
        jmp lvl2
        ret
 
lvl2:
    ; 4 4 3 1 3 2 1 4
    call facaday
    call facaday
    call facadag
    call facadar
    call facadag
    call facadab
    call facadar
    call facaday
    ; espera teclado
   
    call letecla
    cmp al, 52
    je .p2
    jmp errou
    .p2:
        call letecla
        cmp ax, 52
        je .p3
        jmp errou
    .p3:
        call letecla
        cmp ax, 51
        je .p4
        jmp errou
    .p4:
        call letecla
        cmp ax, 49
        je .p5
        jmp errou
    .p5:
        call letecla
        cmp ax, 51
        je .p6
        jmp errou
    .p6:
        call letecla
        cmp ax, 50
        je .p7
        jmp errou
    .p7:
        call letecla
        cmp ax, 49
        je .p8
        jmp errou
    .p8:
        call letecla
        cmp ax, 52
        je .prox
        jmp errou
    .prox:
        ; parabens, prox level
        mov ax,[cnt]
        inc ax
        mov [cnt],ax
        call yuin
        jmp lvl3
        ret
 
lvl3:
    ; 1 2 1 4 4 3 2 2 3
    call facadar
    call facadab
    call facadar
    call facaday
    call facaday
    call facadag
    call facadab
    call facadab
    call facadag
    ; espera teclado
   
    call letecla
    cmp al, 49
    je .p2
    jmp errou
    .p2:
        call letecla
        cmp ax, 50
        je .p3
        jmp errou
    .p3:
        call letecla
        cmp ax, 49
        je .p4
        jmp errou
    .p4:
        call letecla
        cmp ax, 52
        je .p5
        jmp errou
    .p5:
        call letecla
        cmp ax, 52
        je .p6
        jmp errou
    .p6:
        call letecla
        cmp ax, 51
        je .p7
        jmp errou
    .p7:
        call letecla
        cmp ax, 50
        je .p8
        jmp errou
    .p8:
        call letecla
        cmp ax, 50
        je .p9
        jmp errou
    .p9:
        call letecla
        cmp ax, 51
        je .prox
        jmp errou
    .prox:
        mov ax,[cnt]
        inc ax
        mov [cnt],ax
        call yuin 
        jmp lvl4
        ; parabens, prox level
        ret
 
lvl4:
    ; 2 3 4 1 2 3 3 1 4 2
    call facadab
    call facadag
    call facaday
    call facadar
    call facadab
    call facadag
    call facadag
    call facadar
    call facaday
    call facadab
    ; espera teclado
   
    call letecla
    cmp al, 50
    je .p2
    jmp errou
    .p2:
        call letecla
        cmp ax, 51
        je .p3
        jmp errou
    .p3:
        call letecla
        cmp ax, 52
        je .p4
        jmp errou
    .p4:
        call letecla
        cmp ax, 49
        je .p5
        jmp errou
    .p5:
        call letecla
        cmp ax, 50
        je .p6
        jmp errou
    .p6:
        call letecla
        cmp ax, 51
        je .p7
        jmp errou
    .p7:
        call letecla
        cmp ax, 51
        je .p8
        jmp errou
    .p8:
        call letecla
        cmp ax, 49
        je .p9
        jmp errou
    .p9:
        call letecla
        cmp ax, 52
        je .p10
        jmp errou
    .p10:
        call letecla
        cmp ax, 50
        je .prox
        jmp errou
    .prox:
        mov ax,[cnt]
        inc ax
        mov [cnt],ax
        call yuin
        jmp lvl5
        ; parabens, prox level
        ret
 
lvl5:
    ; 14231124231
    call facadar
    call facaday
    call facadab
    call facadag
    call facadar
    call facadar
    call facadab
    call facaday
    call facadab
    call facadag
    call facadar
    ; espera teclado
   
    call letecla
    cmp al, 49
    je .p2
    jmp errou
    .p2:
        call letecla
        cmp ax, 52
        je .p3
        jmp errou
    .p3:
        call letecla
        cmp al, 50
        je .p4
        jmp errou
    .p4:
        call letecla
        cmp al, 51
        je .p5
        jmp errou
    .p5:
        call letecla
        cmp al, 49
        je .p6
        jmp errou
    .p6:
        call letecla
        cmp al, 49
        je .p7
        jmp errou
    .p7:
        call letecla
        cmp al, 50
        je .p8
        jmp errou
    .p8:
        call letecla
        cmp al, 52
        je .p9
        jmp errou
    .p9:
        call letecla
        cmp al, 50
        je .p10
        jmp errou
    .p10:
        call letecla
        cmp al, 51
        je .p11
        jmp errou
    .p11:
        call letecla
        cmp al, 49
        je .prox
        jmp errou
    .prox:
        ; parabens, prox level
        call yuin
        jmp 0x7e00
        ret
 
 
errou:
    ; voce perdeu, jogar novamente? voltar p menu
    mov ax, 0
    mov [cnt],ax
    jmp start

inicio:
    call init
    call printlv
    call boxr
    call boxb
    call boxg
    call boxy
    mov cx, 27
    mov dx, 75
    mov si, facar
    call printfacar
    call delay
    mov cx, 27
    mov dx, 105
    mov si, facab
    call printfacab
    call delay
    mov cx, 27
    mov dx, 135
    mov si, facag
    call printfacag
    call delay
    mov cx, 27
    mov dx, 165
    mov si, facay
    call printfacay

    ret


start:
    call inicio    
    call lvl1