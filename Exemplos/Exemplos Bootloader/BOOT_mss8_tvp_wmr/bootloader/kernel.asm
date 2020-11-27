org 0x7e00
     
jmp 0x0:start


lineOP: times 1 db 0
lineSIZE: times 1 dw 0
linePOSX: times 1 dw 0
linePOSY: times 1 dw 0
lineCOLOR: times 1 db 0


rectangleCOLOR: times 1 db 0
rectangleSIZE_X: times 1 dw 0
rectangleSIZE_Y: times 1 dw 0
rectanglePOSX: times 1 dw 0
rectanglePOSY: times 1 dw 0


pictureX: times 1 dw 0
pictureY: times 1 dw 0

pictureL: times 1 dw 0
pictureC: times 1 dw 0
pictureEnd: times 1 dw 0


PRESENTX: times 1 dw 0
PRESENTY: times 1 dw 0
     
     
player_posx: times 1 dw 0
player_posy: times 1 dw 0
player_color: times 1 db 0

vidas: times 1 dw 0

;14 linhas e 140 colunas
msg_gameOver: db '000000000000000000000000000000000000000000000000000000000000000000000000000000000ppppppppp000000000000000000000000000000000000000000000000000000ppppppppppp000000000pppppp0000000pppppp00000pppppp0000ppppppppppp0000000000ppppppppppppppp0ppp00000000pppp00ppppppppppp0ppppppppppppp000000ppppppppppppp00000000ppppppp00000pppppppp000pppppppp00pppppppppppp000000000pppppppppppppppp0ppp0000000ppppp0pppppppppppp0pppppppppppppp00000ppppppppppppp0000000pppppppp00000ppppppppp00pppppppp0ppppppppppppp00000000ppppppppppppppppp0pppp000000ppppp0pppppppppppp0ppppppppppppppp0000ppppp000000000000000ppppppppp0000ppppppppp00pppppppp0ppppp0000000000000000ppppp0000000ppppp0pppp00000ppppp00pppp000000000ppppp00000ppppp0000ppppp00ppppppp00000ppppp0pppp0000ppppppppp00pppppppp0ppppp0000000000000000ppppp0000000ppppp0ppppp0000ppppp00pppppppppppp0ppppp000000pppp0000ppppp0ppppppppp0000pppp00ppppp000ppppppppp0ppppppppp0ppppppppppppp00000000ppppp0000000ppppp0ppppp000ppppp000pppppppppppp0ppppppppppppppp0000ppppp0ppppppppp000pppppppppppp000pppppppppppppp0pppp0ppppppppppppp00000000ppppp0000000ppppp00ppppp00ppppp000pppppppppppp0pppppppppppppp00000ppppp0ppppppppp000ppppppppppppp00pppppppppppppp0pppp0ppppppppppppp00000000ppppp0000000ppppp00ppppp0ppppp0000pppppppppppp0ppppppppppppp000000ppppp000000pppp00pppppppppppppp00ppppp0pppppppp0pppp0ppppp0000000000000000ppppp0000000ppppp00ppppppppppp0000pppp000000000ppppppppppppp000000pppppp0000ppppp00ppppppppppppppp0ppppp0pppppppp0pppp0ppppp0000000000000000pppppp000000ppppp000pppppppppp0000pppp000000000ppppp0000ppppp00000pppppppppppppp00ppppp000000ppppp0ppppp0ppppppp00pppp0ppppppppppppp000000000pppppppppppppppp0000ppppppppp0000pppppppppppppppppp0000ppppp00000pppppppppppp0000pppp00000000pppp0ppppp00pppppp00pppp0ppppppppppppp000000000ppppppppppppppp00000pppppppp00000pppppppppppp0pppp00000ppppp000000pppppppppp0000pppp000000000pppp0ppppp00ppppp000pppp00pppppppppppp00000000000pppppppppppp0000000ppppp00000000ppppppppppp0ppppp00000ppppp0'

;8 linhas e 11 colunas
coracao: db '00r00000r000rrr000rrr0rrrrr0rrrrr0rrrrrrrrr000rrrrrrr00000rrrrr0000000rrr000000000r00000'

;20 linhas e 40 colunas
bola: db '0000000000000000000yy000000000000000000000000000000000000yyyyy0000000000000000000000000000000000yyyyyyy000000000000000000000000000000bbbbbbbbbbbbbb00000000000000000000000bbbbbbbbbbbbbbbbbbbb000000000000000000bbbbbbbbbbbbbbbbbbbbbbbb00000000000000bbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb0000000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb000000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb000000000bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb000000000000bbbbbbbbbbbbbbbbbbbbbbbbbbb00000000000000bbbbbbbbbbbbbbbbbbbbbbbb000000000000000000bbbbbbbbbbbbbbbbbbbb0000000000000000000000bbbbbbbbbbbbbbbbb000000000000000000000000000000000000000000000000000'

;15 linhas e 20 colunas
player: db '000ww0wwwwwwww0www000www0wwwwwwwwww0www00ww00wwwwwwwwww00ww00ww00wwwwwwwwww00ww00ww00wwwwwwwww00www00wwww000wwww00wwwww000wwwwwwwwwwwwwwwww0000wwwwwwwwwwwwww000000000wwwwwwwww0000000000000wwwww000000000000000wwwww0000000000000wwwwwwwww000000000wwwwwwwwwwwww000000wwwww000000wwwww00wwwww000000000wwwww'

buffer: times 1 dw 0

score: times 1 dw 0

msg_score: db 'score', 0

aux: times 1 dw 0

presenteAtual: times 1 dw 0

p_key: db 'press any key', 0

rand: db '1023132230331330103212122320211321031102'

;posições jogadores
posX1: times 1 dw 0
posY1: times 1 dw 0

posX2: times 1 dw 0
posY2: times 1 dw 0

posX3: times 1 dw 0
posY3: times 1 dw 0

posX4: times 1 dw 0
posY4: times 1 dw 0

statusPresentes: db '0000'

countRand: times 1 dw 0

countPresentes: times 1 dw 0

alfabeto: db '0pp0p00pppppp00pp00p00000000000000000000ppppp000p000p000pppppp00p0p0p0p0p0p0pp00ppppp000ppppp000pppp0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000p00pp0p0pp00p0p0p00pp000p000p000p000ppppp00pppppppppp00pp00pp00ppp0pp0ppp00pp00pppppp00pp00pp00pppppppppp00pppppp000p00000000000000000000000ppp0p0p0ppp0p00pp00pppppp000pppp000ppppp00000000000000000000p00pp00pp00pp00ppppp000000000000000000000000000000000000000000000000000000000000p00pp00p0pp00p00p00000000000000000000000'

numeros: db 'ppppp00pp00pp00ppppp000p000p000p000p000ppppp000pppppp000pppppppp000ppppp000pppppp00pp00ppppp000p000pppppp000pppp000pppppppppp000ppppp00ppppppppp000p00p00p00p000ppppp00pppppp00pppppppppp00ppppp000ppppp'

;54 linhas e 98 colunas
papaiNoel: db '000000000000000000000000000000000000000000000pprrrrrrrrrrrpp00000000000000000000000000000000000000000000000000000000000000000000000000000000pprrrrrrrrrrrrrrrrpp0000000000000000000000000000000000000000000000000000000000000000000000000000pprrrrrrrrrrrrrrrrrrrrrpp000000000000000000000000000000000000000000000000000000000000000000000000prrrrrrrrrrrrrrrrrrrrrrrrrpp00000000000000000000000000000000000000000000000000000000000000000000ppwwwwwwwwwwwwwwwwwwwrrrrrrrrrpp00000000000000000000000000000000000000000000000000000000000000000pwwwwwwwwwwwwwwwwwwwwwwwwrrrrrrrp0000000000000000000000000000000000000000000000000000000000000000pwwwwwwwwwwwwwwwwwwwwwwwwwwwrrrrrp0000000000000000000000000000000000000000000000000000000000000000pwwwwwwwwwwwwwwwwwwwwwwwwwwwwrrrrrp000000000000000000ppp000000000000000000000000000000000000000000pwwwssssssssssssssssssssswwwwrrrrrp00000000000000000prrrrp000000pppppp0000000000000000000000000000pwsssssssssssssssssssssssswwwrrrrrp000000000000000pprrrrrrpppppprrrrrrrppppp0000000000000000000pppppwppppwpppppppppppwppppppppppppppp000000000000000prrrrrrrrrrrpprrrrrrrrrrrpp000000000000000000ppppppwwpppwwppsssspppppwwpppppprrrrp000000000000000prrrrrrrrrrrrpprrrrrrrrrrrrp00000000000000000000ppppppwppppwssssssppppppwppppwwwwwwp0000000000000prrrrrrrrrrrrrpprrrrrrrrrrrrwpp00000000000000000000pwwwwwwssssssssssswwwwwwwpwwwwwwwwp0000000000ppwwwwwrrrrrrrrp00pprrrrrrrrwwwwwpp00000000000000000pwwwwwwwssssssssssswwwwwwwpwwwwwwwwp00000000pwwwwwwwwwwrrrppp0000pprrrrrwwwwwwwwwwpp000000000000pwwwwwwwwwssssssssssswwwwwwwwpwwwwwwp0000000pwwwwwwwwwwwwwwp000000000pprwwwwwwwwwwwrrrpp000000000pwwwwwwwwwwssssssssswwwwwwwwwwwppppp000000ppprrrwwwwwwwwwwp0000000000000ppwwwwwwwwrrrrrrrrppp0000ppwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwppp00prrrrrrrrwwwwwwwwp000000000000000pwwwwwwrrrrrrrrrrrrppppwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwpprrrrrrrrrrrwwwppp000000000000000000pppwrrrrrrrrrrrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrrrrrrrpp000000000000000000000000pprrrrrrrrrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrrrrpp0000000000000000000000000000pprrrrrrrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrrpp000000000000000000000000000000000ppppprrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrpp0000000000000000000000000000000000000000prpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrpp000000000000000000000000000000000000000000prppwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrp000000000000000000000000000000000000000000prrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrp0000000000000000000000000000000000000000000prrrrrppwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrp00000000000000000000000000000000000000000prrrrrrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrrrp000000000000000000000000000000000000000prrrrrrrrrrppwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwprrrrrrrrrrp000000000000000000000000000000000000000prrrrrrrrrrrrrpwwwwwwwwwwwwwwwwwwwwwwwwwwwwwpprrrrrrrrrrrrp000000000000000000000000000000000000000prrrrrrrrrrrrrrrppwwwwwwwwwwwwwwwwwwwwwwwppprrrrrrrrrrrrrrr000000000000000000000000000000000000000pwrrrrrrrrrrrrrrrrppppppppppppppppppppppprrrrrrrrrrrrrrrrrp000000000000000000000000000000000000000pwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwp000000000000000000000000000000000000000pwwwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwp000000000000000000000000000000000000000pwwwwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwwwp000000000000000000000000000000000000000pwwwwwwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwwwwwp000000000000000000000000000000000000000pwwwwwwwwwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwwwwwwwp00000000000000000000000000000000000000000pwwwwwwwwwwwwwwrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwwwwwwwwwwp0000000000000000000000000000000000000000000prwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwp000000000000000000000000000000000000000000000prrwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwp000000000000000000000000000000000000000000000000prrrwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwp000000000000000000000000000000000000000000000000000prrrwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwrrrrrp00000000000000000000000000000000000000000000000000000prrrrrrwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwrrrrrrp00000000000000000000000000000000000000000000000000000000prrrrrrrrrwwwwwwwwwwwwwwwwrrrrrrrrrrrrrp00000000000000000000000000000000000000000000000000000000000prrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrp000000000000000000000000000000000000000000000000000000000000000prrrrrrrrrrrrrrppppprrrrrrrrrrrrrrp0000000000000000000000000000000000000000000000000000000000000000prrrrrrrrrrrp000000prrrrrrrrrrrrp000000000000000000000000000000000000000000000000000000000000000000ppppppppppp00000000ppppppppppp00000000000000000000000000000000000000000000000000000000000000000000ppppppppppp00000000ppppppppppp000000000000000000000000000000000000000000000000000000000000000000pppppppppppppp00000ppppppppppppppp000000000000000000000000000000000000000000000000000000000000000pppppppppppppppp000ppppppppppppppppp00000000000000000000000000000000000000000000000000000000000000pppppppppppppppp000ppppppppppppppppp00000000000000000000000000000000000000000000000000000000000000ppppppppppppppp00000ppppppppppppppp00000000000000000000000000000000000000000000000000000000000000000pppppppppppp0000000ppppppppppppp000000000000000000000000000000000'

;20 linhas e 157 colunas
titulo: db '000000000000000000000000000000000000000000000000rrrr000000000000000000000000000000000000000000000000000000rrrrr000000000000000000000000000000000000000000000000rrrrrrrrrrrr000rrrrrrrrrrrrr000rrrrrrrrrrrr000rrrrrrrrrrrrr00rrrrrrrrrrrrr000000000000000rrrrrrrrrrrr000rrrr000rrrrrrrrrrrrr000rrrr00000rrrr000rrrrrrrrrrrr00rrr00000rrrr00000000000rrrrr00rrrrr0000rrrrr00rrrr00000000000000000000rrrr00000000000000rrrrr000rrrrr00rrrrr00000000000rrrrr000rrrr0000rrrr0000rrrr000rrrrr0rrrr00000rrrr00rrrrrrr00rrrrr00rrrrr0000rrrrr00rrrr00000000000rrrrrrr0rrrrr00000000000000rrrr0000rrrrr00rrrrr000rrrrrrr0rrrrr00rrrr00000rrrr000rrrrr000rrrrr0rrrr00000000000rrrrr0000rrrr000rrrrr0000rrrrr0rrrr000000000000rrrr0000rrrr00000000000000rrrrr00000000000rrrrr00rrrrr0000rrrrr00rrrr00000rrrr000rrrrr000000000rrrrrrrrrrrr00rrrrr0000rrrrr000rrrr00000rrrr00rrrr00000000000rrrrr0000rrrr00000000000000rrrrr0000000000rrrrr000rrrr00000rrrr00rrrrr00000rrrr0000rrrrrrrrrrrr000000000rrrr00rrrrr0000rrrrr00rrrrr00000rrrr0rrrrr0000rrrr000rrrr00000rrrr00000000000000rrrrr000rrrrr00rrrrr000rrrr00000rrrr00rrrrr0000rrrr00000000000rrrrr0rrrr00000rrrr00rrrrr0000rrrr000rrrrr00000rrrr0rrrr00000rrrr000rrrr00000rrrr00000000000000rrrr0000rrrrr0rrrrrr000rrrr0000rrrr000rrrr00000rrrr000rrrrr000rrrrr0rrrrrrrrrrrr0000rrrrrrrrrrrr000rrrrr00000rrrr0rrrrrrrrrrrrr000rrrrrrrrrrrr00000000000000rrrrrrrrrrrrrr0rrrrrr00rrrrrrrrrrrrr000rrrrrrrrrrrrr000rrrrrrrrrrrrr000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000rrrr000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000rrrr00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000rrrrrrrrrrrrrrrrrrrrr0000rrrrrrrrrrrr000rrrrrr00rrrrr000rrrrrrrrrrrr0000rrrrrrrrrrrr0000rrrrrrrrrrr0000rrrrrrrrrrrr00000000000000000000000000000000000000000rrrrr0000rrrrr000rrrrrr0000000000rrrrr000rrrr0000rrrr0000rrrr000rrrrr000rrrrr000rrrrrr00rrrrr000rrrrr000rrrrr000rrrr00000000000000000000000000000000000000000rrrrr0000rrrr0000rrrrr00rrrrrrrr0rrrrr00rrrr00000rrrr000rrrr00000rrrr000rrrrr000rrrrrr0rrrrr0000rrrrr00rrrrr0000rrrr00000000000000000000000000000000000000000rrrr0000rrrrr0000rrrrr00rrrrr0000rrrrr00rrrr00000rrrr000rrrr00000rrrr00rrrrr0000rrrrr00rrrrr00000000000rrrrr000000000000000000000000000000000000000000000000rrrrr0000rrrrr0000rrrrr00rrrrr0000rrrr00rrrrr00000rrrr000rrrr00000rrrr00rrrrr0000rrrrr00rrrrrrrrrrrr0000rrrrrrrrrrrr00000000000000000000000000000000000000000rrrrr0000rrrrr0000rrrr000rrrrr000rrrrr00rrrr00000rrrr0000rrrr0000rrrr000rrrrrrrrrrrrr00000000000rrrrr00000000000rrrr00000000000000000000000000000000000000000rrrrr0000rrrr0000rrrrr00rrrrr0000rrrr000rrrr00000rrrr000rrrr00000rrrr000rrrr00000000000rrrrr0000rrrrr00rrrrr0000rrrr00000000000000000000000000000000000000000rrrr0000rrrrr0000rrrrr00rrrrrrrrrrrrr000rrrrrrrrrrrrr000rrrr00000rrrr00rrrrrrrrrrrrrr00rrrrrrrrrrrrrr00rrrrrrrrrrrrr0000000000000000000000000'

; Limpa a tela do jogo
; color -> cor da tela
%macro limpaTela 1
        pusha
        mov ax, %1
        call funcaoLimpaTela
        popa
%endmacro
funcaoLimpaTela:
	xor bx, bx
	mov es, word[buffer]
 
	loopLimpa:
		mov [es:bx], ax
		inc bx
		cmp bx, 64000
		jbe loopLimpa
ret

 
%macro delay 2
	pusha
	mov cx, %1
	mov dx, %2
	
	mov ah, 86h
	int 15h
	popa
%endmacro


;  %1->PRESENTX  %2->PRESENTY
%macro drawPresent 2
        pusha
        mov ax, %1
        mov dx, %2
        filled_Rectangle 9, 9, ax, dx, 'g'
        add ax, 3      
        filled_Rectangle 3, 9, ax, dx, 'r'
        sub ax, 3
        add dx, 2
        filled_Rectangle 9, 2, ax, dx, 'r'
        popa
%endmacro


; move um determinado presente na tela
; %1 - x
; %2 - y
%macro movePresente 1
        pusha
            mov bx, %1
                call funcMovePresente
        popa
%endmacro
 
 
funcMovePresente:
               
        add word[bx], 1
        cmp word[bx], 191
        jle .saida
 		
 		cmp word[countPresentes], 0
 		jle .pula
 		
 		dec word[countPresentes]
 		
 		.pula:
 		dec word[vidas]
		xor bx, bx	
		mov bx, word[presenteAtual]
		mov byte[statusPresentes+bx], '0'             
.saida:
ret


print_buffer:
        push ds
 
        xor ax, ax
        mov ds, ax
        mov ds, [buffer]
        mov ax, 0xa000
 
        mov es, ax
        xor di, di
        xor si, si
        mov cx, 32000
 
        cld
        rep movsw ;vai mover de word em word de ds:si para es:di
 
        pop ds
ret

 
%macro setColor 4
	pusha
    mov ah, 10h
    mov al, 10h
    mov bx, %1      ;index
    mov dh, %2      ;red
    mov ch, %3      ;green
    mov cl, %4      ;blue
    int 10h
    popa
%endmacro


%macro drawPixel 3
    pusha

    mov bx, %1 ; X
    mov ax, %2 ; Y
    mov cx,320
    mul cx

    add bx, ax
    mov al, %3      ; cor
    mov byte[es:bx], al
    popa
%endmacro

 
; --%1-> x OU y %2->TAM %3->POSX %4->POSY %5->COR--
%macro drawLine 5
	pusha
	mov al, %1
	mov bx, %2
	mov cx, %3
	mov dx, %4
	mov ah, %5

	mov byte[lineOP], al
	mov word[lineSIZE], bx
	mov word[linePOSX], cx
	mov word[linePOSY], dx
	mov byte[lineCOLOR], ah
	call LINE
	popa
%endmacro

LINE:
	cmp byte[lineOP], 'x'
	je .X
	jne .Y
 
.X:
	drawPixel word[linePOSX], word[linePOSY], byte[lineCOLOR]      
	inc word[linePOSX]
	dec word[lineSIZE]

	cmp word[lineSIZE], 0
	jne .X
	jmp .fim
 
.Y:      
	drawPixel word[linePOSX], word[linePOSY], byte[lineCOLOR]
	inc word[linePOSY]
	dec word[lineSIZE]

	cmp word[lineSIZE], 0
	jne .Y
	jmp .fim
.fim:
ret

;--%1-> TAMANHO EM X %2->TAMANHO EM Y %3->POSICAO EM X %4->POSICAO EM Y %5->COR--
%macro filled_Rectangle 5
    pusha
    mov si, %1
    mov bx, %2
    mov cx, %3
    mov dx, %4
    mov al, %5

    mov word[rectangleSIZE_X], si
    mov word[rectangleSIZE_Y], bx
    mov word[rectanglePOSX], cx
    mov word[rectanglePOSY], dx
    mov byte[rectangleCOLOR], al
    call F_RECTANGLE
    popa
%endmacro
F_RECTANGLE:
    drawLine 'x', word[rectangleSIZE_X], word[rectanglePOSX], word[rectanglePOSY], byte [rectangleCOLOR]
    dec word[rectangleSIZE_Y]
    inc word[rectanglePOSY]
    cmp word[rectangleSIZE_Y], 0
    jne F_RECTANGLE
ret

%macro drawNumber 1
	pusha
		mov bx, %1
		sub bx, 'a'
		imul bx, 20
	popa
%endmacro


scan_key:
        mov ah, 1h
        int 16h
        jnz .key_pressed
        jmp .saida
               
                .key_pressed:
                        mov ah, 0h
                        int 16h
               
        cmp al, 'd'
        je .right
 
        cmp al, 'a'
        je .left
        
        JMP .saida
 
.right:
            xor cx, cx ; registrador para verificar se o jogador continua dentro da tela
            mov cx, word[player_posx]
            add cx, 20 ; tamanho da caixa do boneco
            add cx, 10

            cmp cx, 320
            jge .noright
            add word[player_posx], 10

            .noright:
jmp .saida
 
.left:
            xor cx, cx ; leia comentario anterior
            mov cx, word[player_posx]
            sub cx, 10
           
            cmp cx, 0
            jl .noleft
            sub word[player_posx], 10

            .noleft:
jmp .saida
 
.saida:
ret


colisao:
        mov ax, word[PRESENTX]
        add ax, 9       ;9 = tamanho em x do presente
        cmp word[player_posx], ax
        jge .saida
       
        mov ax, word[player_posx]
        add ax, 20      ;20 = tamanho em x do jogador
        cmp ax, word[PRESENTX] 
        jle .saida
       
        mov ax, word[PRESENTY]
        add ax, 9       ;9 = altura do presente
        cmp word[player_posy], ax
        jge .saida
       
        mov ax, word[player_posy]
        add ax, 15      ;15 = altura do jogador
        cmp ax, word[PRESENTY]
        jle .saida
 
        ;EXISTE COLISAO;
        dec word[countPresentes]
        inc word[score]
		xor bx, bx
			
		mov bx, word[presenteAtual]
			
		mov byte[statusPresentes+bx], '0'

        
 
.saida:
ret


interface:
    filled_Rectangle 320, 50, 0, 0, 'b'
    filled_Rectangle 320, 25, 0, 50, 'r'
   
    filled_Rectangle 17, 35, 56, 30, 'm'
    filled_Rectangle 17, 3, 56, 30, 'w'
    filled_Rectangle 17, 20, 120, 30, 'm'
    filled_Rectangle 17, 2, 120, 30, 'w'
    filled_Rectangle 17, 35, 184, 30, 'm'
    filled_Rectangle 17, 3, 184, 30, 'w'
    filled_Rectangle 17, 20, 248, 30, 'm'
    filled_Rectangle 17, 2, 248, 30, 'w'
 
ret

;Imprime imagens
;Tem que colocar a posição em pictureX e pictureY
;Número de linhas em pictureL e número de colunas em pictureC
;Endereço na matriz da imagem em pictureEnd
;COMECE A ESCREVER EM POS Y>=5
drawPicture:
    xor dx, dx 
  	mov si, word[pictureEnd]
	mov dx, word[pictureL] 

    loopExt:
		xor ax, ax
		
        mov ax, word[pictureX]  
        xor cx, cx
        loopInt:
           	cmp cx, word[pictureC]
       		jge prox
       		
            cmp byte[si], '0'
            je .pula

            drawPixel ax, word[pictureY], byte[si]         

			.pula:
            inc ax

            inc si
            inc cx
            jmp loopInt
            
            prox:

		
		inc word[pictureY]
       	dec dx
       	cmp dx, 0
        jg loopExt
        
    ret
    
    
; %1/%2 -- posicão x e posição y
; %3 - letra
%macro drawLetter 3
    pusha
        mov ax, %1
        mov word[pictureX], ax
        mov ax, %2
        mov word[pictureY], ax
        mov ax, %3
        sub ax, 'a'
        mov cx, 20
        mul cx
        mov bx, ax            
        add bx, alfabeto
        mov word[pictureEnd], bx
        mov byte[pictureC], 4
        mov byte[pictureL], 5
        call drawPicture
    popa
%endmacro

; %1/%2 -- posicão x e posição y
; %3 - o caracter do número(0-9)
%macro drawNumber 3
    pusha
        mov ax, %1
        mov word[pictureX], ax
        mov ax, %2
        mov word[pictureY], ax
        mov ax, %3
        mov cx, 20
        mul cx
        mov bx, ax            
        add bx, numeros
        mov word[pictureEnd], bx
        mov byte[pictureC], 4
        mov byte[pictureL], 5
        call drawPicture
    popa
%endmacro


;printa um número que está em ax
;posição x e y estão em pictureX e pictureY
functPrintNum:
	mov ax, word[aux]
	mov bx, word[pictureY]
	mov word[aux], bx

	.loop:
		mov dx, 0
		mov bx, 10
		idiv bx
		
		drawNumber word[pictureX], word[pictureY], dx
		
		sub word[pictureX], 6
		mov bx, word[aux]
		mov word[pictureY], bx
		
		cmp ax, 0
		jg .loop

	ret

;printa qualquer número
; %1 - número
; %2/%3 -- posicão x e posição y
%macro printNum 3
	pusha
	mov word[aux], %1
	mov word[pictureX], %2
	mov word[pictureY], %3
	call functPrintNum
	popa
%endmacro

;Printa uma imagem qualquer
;%1 - endereço da matriz da imagem, %2 e %3 posições x e y, %4 e %5 número de colunas e linhas
%macro printaImagem 5
	mov word[pictureEnd], %1
	mov word[pictureX], %2
	mov word[pictureY], %3
	mov word[pictureC], %4
	mov word[pictureL], %5
	call drawPicture
%endmacro

printaFrase:
	mov si, word[pictureEnd]
	mov bx, word[pictureY]
	mov word[aux], bx
	
	.loop:
		xor bx, bx
		mov bl, byte[si] 
		
		cmp bl, ' '
		je .continue
		
		cmp bl, 'a'
		jl .fim
		
		cmp bl, 'z'
		jge .fim
		
		drawLetter word[pictureX], word[pictureY], bx
		
		.continue:
		add word[pictureX], 5
		mov bx, word[aux]
		mov word[pictureY], bx
	
		inc si
		cmp byte[si], '0'
		jne .loop
		
		.fim:

	ret

%macro printFrase 3
	pusha
		mov word[pictureEnd], 0
		mov word[pictureEnd], %1
		mov word[pictureX], %2
		mov word[pictureY], %3
		call printaFrase
	popa
%endmacro

addPresente:
	pusha
	mov bx, word[countRand]	
	movzx ax, byte[rand + bx]
	sub ax, '0'
	
	mov cx, 64
	xor dx, dx
	mul cx
	add ax, 63
	
	inc word[countRand]
	cmp word[countRand], 40
	jl .continue
	
	mov word[countRand], 0
	
	.continue:
	xor bx, bx
	.loop:
		cmp byte[statusPresentes + bx], '0'
		jne .pula
	
		mov byte[statusPresentes + bx], '1'
			
			cmp bx, 0
			jne .prox			
			
			mov word[posX1], ax
			mov word[posY1], 75
			jmp .fim
	
			.prox:
			cmp bx, 1
			jne .prox2
			
			mov word[posX2], ax
			mov word[posY2], 75
			jmp .fim
			
			.prox2:
			cmp bx, 2
			jne .prox3
			
			mov word[posX3], ax
			mov word[posY3], 75
			jmp .fim
			
			.prox3:
			mov word[posX4], ax
			mov word[posY4], 75
			jmp .fim
		
		.pula:
		inc bx
		cmp bx, 3
		jle .loop
		
	.fim:
		
	inc word[countPresentes]

	popa
	ret 
	
; funcao muda cor - mudar cor de uma imagem
; bx - endereco da memoria
; ax - nova cor
; dx - tamanho da imagem
funcaoMudaCor:
        xor cx, cx
 		mov si, bx
 
        loopMudaCor:
 
                cmp byte[si], '0'
                je finalizaLoopMudaCor
                
                cmp byte[si], 'y'
                je finalizaLoopMudaCor
                
                mov byte[si], al
 
                finalizaLoopMudaCor:
                        inc cx
                        inc si
                        cmp cx, dx
                        jl loopMudaCor
ret
 
; Muda cor de uma imagem
; %1 -> end da memoria
; %2 -> nova cor
; %3 -> tamanho da imagem
%macro changeColor 3
        pusha
                mov bx, %1
                mov ax, %2
                mov dx, %3
                call funcaoMudaCor
        popa
%endmacro
 
start:
 
	xor ax, ax
	mov ds,ax ; zerando o data segment


	mov ah,0h
	mov al,13h
	int 10h ; habilita modo de video
	
	mov ah, 48
	mov bx, 4000
	int 21h
	mov word[buffer], ax
	mov es, ax

	;Seta paleta de cores
	setColor 'r', 240, 4, 0			;vermelho
	setColor 'w', 255, 255, 255		;branco
	setColor 'p', 0, 0, 0			;preto
	setColor 'y', 240, 240, 5		;yellow
	setColor 'g', 0, 240, 5			;verde
	setColor 'b', 140, 220, 235		;azul
	setColor 'm', 120, 170, 200		;marrom
	setColor 'k', 255, 0, 255		;rosa
	setColor 's', 100, 150, 200		;cor de pele

	.telaInicial:

	limpaTela 'w'
	
	printaImagem papaiNoel, 100, 65, 98, 54
	
	printaImagem titulo, 70, 20, 157, 20
	
	printFrase p_key, 120, 150
	
	printaImagem bola, 15, 50, 40, 20
	changeColor bola, 'k', 800
	printaImagem bola, 20, 140, 40, 20
	changeColor bola, 'g', 800
	printaImagem bola, 240, 60, 40, 20
	changeColor bola, 'r', 800
	printaImagem bola, 250, 150, 40, 20
	
	call print_buffer
	
	mov ax, 0
	int 16h
		
    mov word[player_posx], 160
    mov word[player_posy], 184
    mov word[PRESENTX], 63
    mov word[PRESENTY], 75
    mov word[countPresentes], 0
    mov word[countRand], 0
    mov word[vidas], 10
    mov word[score], 0
    xor bx, bx
    mov byte[statusPresentes + bx], '0'
    inc bx
    mov byte[statusPresentes + bx], '0'
    inc bx
    mov byte[statusPresentes + bx], '0'
    inc bx
    mov byte[statusPresentes + bx], '0'


	.gameloop:
		limpaTela 's'
		call interface
		mov cx, word[score]
		printFrase msg_score, 7, 7
		printNum cx, 50, 7
		printaImagem coracao, 275, 5, 11, 8
		mov cx, word[vidas]
		printNum cx, 300, 7
		
		mov ax, word[player_posx]
		printaImagem player, ax, 185, 20, 15 ;player
		
		
		xor bx, bx
		
		.loop:
			cmp byte[statusPresentes + bx], '1'
			jne .fim
			
			mov word[presenteAtual], bx
			
			cmp bx, 0
			jne .prox			
			
			mov cx, word[posX1]
			mov word[PRESENTX], cx
			mov cx, word[posY1]
			mov word[PRESENTY], cx
			movePresente posY1
			
			jmp .print
	
			.prox:
			cmp bx, 1
			jne .prox2
			
			mov cx, word[posX2]
			mov word[PRESENTX], cx
			mov cx, word[posY2]
			mov word[PRESENTY], cx
			movePresente posY2
			
			jmp .print
	
			.prox2:
			cmp bx, 2
			jne .prox3
			
			mov cx, word[posX3]
			mov word[PRESENTX], cx
			mov cx, word[posY3]
			mov word[PRESENTY], cx
			movePresente posY3
			
			jmp .print
			
			.prox3:
			mov cx, word[posX4]
			mov word[PRESENTX], cx
			mov cx, word[posY4]
			mov word[PRESENTY], cx
			movePresente posY4
			
			.print:
			drawPresent word[PRESENTX], word[PRESENTY] 
		    call colisao
		    
		    .fim:
		   		inc bx
		    	cmp bx, 3
		    	jle .loop
		    
		cmp word[countPresentes], 4
		jge .pula
			
		call addPresente
		   
       	.pula:
       	pusha
        call scan_key
        popa
        call print_buffer
        limpaTela 'p'
        
        cmp word[vidas], 0
        jle .gameOver

		jmp .gameloop
		
		
		.gameOver:
			limpaTela 'w'
			printaImagem msg_gameOver, 80, 70, 140, 14
			printFrase p_key, 120, 150
			
			call print_buffer
			
			delay 000fh, 4240h
	
			mov ax, 0
			int 16h
			
			jmp .telaInicial


	cli
	hlt
	 
	end:
	
