org 0x7e00
jmp 0x0000:start

string db 'BOX KILLER',  0
startgame db 'START GAME', 0
creditos db 'CREDITOS', 0
cred1 db 'TODOS OS CREDITOS VAO PARA' ,0
cred2 db 'LGOQ & FRPMN' ,0
faca db  '000000000000000000000000000000000000000000000066000000000000000000000006868686866667777777777777777777777686868686886688888888888888888888406868686868866777778888888888888840068686868688668888888888888888844000068686868666640404044488884444000000000000000066000000000444400000000000000000000000000000000000000000000', 0Ah
borracha db '      ',0


;tela
;640 0-639
;200 0-199
;linha 0-24
;coluna 0-39

init:
	
	mov al, 13h
	mov ah, 0
	int 10h
ret

setcur:
;dl coluna
;dh linha
    mov ah,02h
    mov bh,0 ;cor de fundo
    int 10h
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

putpixel:
    mov ah,0ch
    mov bh,0    
    int 10h
    ;cx linha
    ;dx coluna
    ;al cor
ret


selemenu:
    mov ah,0
    int 16h
    
    cmp al,'s'
    je cima
    cmp al,'w'
    je cima
    cmp al,13
    je comeca
    
    

    jmp selemenu
    cima:
    cmp bx,1
    je poe0

    mov bx,1
    call printfacac
    call apagafacas
    jmp selemenu
ret

poe0:
    call printfacas
    call apagafacac
    mov bx,0
jmp selemenu

comeca:     ;bx = 0 pra start
            ;bx = 1 pra creditos
    cmp bx,0
    je jogo
    jmp telacred

ret

telacred:
    call init

    mov al,9
    mov cx,0
    mov dx,0
    .contt:
        call putpixel
        inc cx
        cmp cx,20
        jl .contt
    
    mov cx,0
    inc dx
    cmp dx,200
    jl .contt


    mov cx,619
    mov dx,0
    .contt2:
        call putpixel


        inc cx
        cmp cx,640
        jl .contt2
    
    mov cx,619
    inc dx
    cmp dx,200
    jl .contt2   

    mov cx,0
    mov dx,0
    .contt3:
        call putpixel
        inc cx
        cmp cx,640
        jl .contt3
    
    mov cx,0
    inc dx
    cmp dx,20
    jl .contt3   

    mov cx,0
    mov dx,179
    
    .contt4:
        call putpixel
        inc cx
        cmp cx,640
        jl .contt4
    
    mov cx,0
    inc dx
    cmp dx,200
    jl .contt4

    mov bl,4
    mov dh,5
    mov dl,7
    mov si,cred1
    call prints
    mov dh,15
    mov dl,10
    mov si,cred2
    call prints

    telacred2:
    mov ah,0
    int 16h
    cmp al,13
    jne telacred2
jmp start
    
jmp telacred

printafundo:
    mov al,9
    mov cx,0
    mov dx,0
    .cont:
        call putpixel
        inc cx
        cmp cx,20
        jl .cont
    
    mov cx,0
    inc dx
    cmp dx,200
    jl .cont


    mov cx,619
    mov dx,0
    .cont2:
        call putpixel
        inc cx
        cmp cx,640
        jl .cont2
    
    mov cx,619
    inc dx
    cmp dx,200
    jl .cont2   

    mov cx,0
    mov dx,0
    .cont3:
        call putpixel
        inc cx
        cmp cx,640
        jl .cont3
    
    mov cx,0
    inc dx
    cmp dx,20
    jl .cont3   

    mov cx,0
    mov dx,179
    
    .cont4:
        call putpixel
        inc cx
        cmp cx,640
        jl .cont4
    
    mov cx,0
    inc dx
    cmp dx,200
    jl .cont4

ret

print_img:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    int 10h     ;interrupção de vídeo.
    jmp print_img
    .done:
        inc dx
        cmp dx, 129 ;start
        je .finish
        mov cx, 27
        jmp print_img
    .finish:
ret

apagafacac:
    mov dl,3
    mov dh,17
    mov si,borracha
    call prints
ret
apagafacas:
    mov dl,3
    mov dh,15
    mov si,borracha
    call prints
ret

print_img2:
    inc cx
    cmp cx, 63  
    je .done
   
    lodsb 
    sub al, 48
    mov ah, 0Ch ;código da instrução para imprimir um caractere que está em al
    int 10h     ;interrupção de vídeo.
    jmp print_img2
    .done:
        inc dx
        cmp dx, 144 ;start
        je .finish
        mov cx, 27
        jmp print_img2
    .finish:
ret

jogo:
    mov ax,0x860    
    mov es,ax
    xor bx,bx
    mov ah,0x02
    mov al,8
    mov dl,0
    mov ch,0
    mov cl,7
    mov dh,0
    int 13h
    jc jogo
jmp 0x8600

printfacas
    mov cx, 27
    mov dx, 120
    mov si, faca
    call print_img
ret

printfacac
    mov cx, 27
    mov dx, 135
    mov si, faca
    call print_img2
ret

    start:
        xor ax,ax
        mov ds,ax
        mov es,ax



        call init
        call printafundo
        mov si,string
        mov dl,15
        mov dh,5
        mov bl,4
        call prints
                ;print start game 
        mov si,startgame
        mov dl,9
        mov dh,15
        mov bl,4
        call prints
                ;print creditos
        mov si,creditos
        mov dl,9
        mov dh,17
        mov bl,4
        call prints
        call printfacas



        


        mov bx,0            ;cursor esta em start
        call selemenu
