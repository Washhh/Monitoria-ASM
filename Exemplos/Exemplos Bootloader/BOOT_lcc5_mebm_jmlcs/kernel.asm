org 0x7e00
jmp 0x0000:main

green:
	mov ah, 0ch
	mov bh, 0
	mov al, 2 ; cor
	int 10h
	ret

blue:
	mov ah, 0ch
	mov bh, 0
	mov al, 1 ; cor
	int 10h
	ret

yellow:
	mov ah, 0ch
	mov bh, 0
	mov al, 14 ; cor
	int 10h
	ret

white:
	mov ah, 0ch
	mov bh, 0
	mov al, 15 ; cor
	int 10h
	ret

red:
	mov ah, 0ch
	mov bh, 0
	mov al, 4 ; cor
	int 10h
	ret

brown:
	mov ah, 0ch
	mov bh, 0
	mov al, 6 ; cor
	int 10h
	ret

video:
	mov ah, 0
	mov al, 12h
	int 10h
	ret

main:
	mov ax, 0
 	mov ds, ax
 	mov es, ax
	mov bh, 0

	call start_screen
	;jmp .won
	

	.brasil:
		call video
		mov di, string

		call brasil
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_brasil
		call strcmp
		jnc lost
	.france:
		call video
		mov di, string

		call france
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_france
		call strcmp
		jnc lost

	.germany:
		call video
		mov di, string

		call germany
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_germany
		call strcmp
		jnc lost

	.italy:
		call video
		mov di, string

		call italy
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_italy
		call strcmp
		jnc lost

	.japan:
		call video
		mov di, string

		call japan
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_japan
		call strcmp
		jnc lost

	.russia:
		call video
		mov di, string

		call russia
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_russia
		call strcmp
		jnc lost

	.sweden:
		call video
		mov di, string

		call sweden
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_sweden
		call strcmp
		jnc lost

	.netherlands:
		call video
		mov di, string

		call netherlands
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_netherlands
		call strcmp
		jnc lost
	
	.england:
		call video
		mov di, string

		call england
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_england
		call strcmp
		jnc lost

	.colombia:
		call video
		mov di, string

		call colombia
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_colombia
		call strcmp
		jnc lost

	.denmark:
		call video
		mov di, string

		call denmark
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_denmark
		call strcmp
		jnc lost

	.finland:
		call video
		mov di, string

		call finland
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_finland
		call strcmp
		jnc lost

	.poland:
		call video
		mov di, string

		call poland
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_poland
		call strcmp
		jnc lost

	.nigeria:
		call video
		mov di, string

		call nigeria
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_nigeria
		call strcmp
		jnc lost

	.hungary:
		call video
		mov di, string

		call hungary
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_hungary
		call strcmp
		jnc lost

	.indonesia:
		call video
		mov di, string

		call indonesia
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_indonesia
		call strcmp
		jnc lost

	.romenia:
		call video
		mov di, string

		call romenia
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_romenia
		call strcmp
		jnc lost
	
	.guinea:
		call video
		mov di, string

		call guinea
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_guinea
		call strcmp
		jnc lost

	.mali:
		call video
		mov di, string

		call mali
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_mali
		call strcmp
		jnc lost

	.bangladesh:
		call video
		mov di, string

		call bangladesh
		call hold_till_space
		;call hold ;mantem bandeira na tela

		mov bl, 15 ; ler input do jogador
		call video
		call gets

		mov di, string ; compara input 
		mov si, str_bangladesh
		call strcmp
		jnc lost

	.won:
		jmp  won

japan:
	mov dx, 0

	.jp_white:
		cmp dx, 480
		jg .jp_red
		mov cx, 0
		.jp_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .jp_loop_white
			inc dx
			jmp .jp_white
	.jp_red:
		mov cx, 320
		mov dx, 240
		call red_filled_circle

	.jp_end:
		ret

france:
	call red_background

	mov dx, 0

	.fr_blue:
	cmp dx, 480
	jg .fr_next
	mov cx, 0 ; inicio da linha 
	.fr_loop_blue:
		call blue
		inc cx
		cmp cx, 214
		jl .fr_loop_blue
		inc dx
		jmp .fr_blue

	.fr_next:
		mov dx, 0

	.fr_white:
		cmp dx, 480
		jg .fr_end
		mov cx, 214
		.fr_loop_white:
			call white
			inc cx
			cmp cx, 427
			jl .fr_loop_white
			inc dx
			jmp .fr_white

	.fr_end:
		ret

italy:
	call red_background

	mov dx, 0

	.it_green:
	cmp dx, 480
	jg .it_next
	mov cx, 0 ; inicio da linha 
	.it_loop_green:
		call green
		inc cx
		cmp cx, 214
		jl .it_loop_green
		inc dx
		jmp .it_green

	.it_next:
		mov dx, 0

	.it_white:
		cmp dx, 480
		jg .it_end
		mov cx, 214
		.it_loop_white:
			call white
			inc cx
			cmp cx, 427
			jl .it_loop_white
			inc dx
			jmp .it_white

	.it_end:
		ret

hungary:
	call red_background

	mov dx, 0

	.hg_white:
		cmp dx, 160
		jg .hg_green
		mov cx, 0
		.hg_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .hg_loop_white
			inc dx
			jmp .hg_white

	.hg_green:
		cmp dx, 320
		jg .hg_end
		mov cx, 0
		.hg_loop_green:
			call green
			inc cx
			cmp cx, 640
			jl .hg_loop_green
			inc dx
			jmp .hg_green
	
	.hg_end:
		ret

germany:
	mov dx, 160

	.gr_red:
		cmp dx, 320
		jg .gr_yellow
		mov cx, 0
		.gr_loop_red:
			call red
			inc cx
			cmp cx, 640
			jl .gr_loop_red
			inc dx
			jmp .gr_red

	.gr_yellow:
		cmp dx, 480
		jg .gr_end
		mov cx, 0
		.gr_loop_yellow:
			call yellow
			inc cx
			cmp cx, 640
			jl .gr_loop_yellow
			inc dx
			jmp .gr_yellow
	
	.gr_end:
		ret

russia:
	call red_background

	mov dx, 0

	.rs_white:
		cmp dx, 160
		jg .rs_blue
		mov cx, 0
		.rs_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .rs_loop_white
			inc dx
			jmp .rs_white

	.rs_blue:
		cmp dx, 320
		jg .rs_end
		mov cx, 0
		.rs_loop_blue:
			call blue
			inc cx
			cmp cx, 640
			jl .rs_loop_blue
			inc dx
			jmp .rs_blue
	
	.rs_end:
		ret

netherlands:
	call red_background

	mov dx, 160

	.ne_white:
		cmp dx, 320
		jg .ne_blue
		mov cx, 0
		.ne_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .ne_loop_white
			inc dx
			jmp .ne_white

	.ne_blue:
		cmp dx, 480
		jg .ne_end
		mov cx, 0
		.ne_loop_blue:
			call blue
			inc cx
			cmp cx, 640
			jl .ne_loop_blue
			inc dx
			jmp .ne_blue
	
	.ne_end:
		ret

sweden:
	call blue_background

	mov dx, 0

	.sw_next:
		mov dx, 0

	.sw_yellow_vertical:
		cmp dx, 480
		jg .sw_next1
		mov cx, 205
		.sw_loop_yl1:
			call yellow
			inc cx
			cmp cx, 275
			jl .sw_loop_yl1
			inc dx
			jmp .sw_yellow_vertical

	.sw_next1:
		mov dx, 200

	.sw_yellow_horizontal:
		cmp dx, 280
		jg .sw_end
		mov cx, 0
		.sw_loop_yl2:
			call yellow
			inc cx
			cmp cx, 640
			jl .sw_loop_yl2
			inc dx
			jmp .sw_yellow_horizontal

	.sw_end:
		ret

colombia:
	call red_background

	mov dx, 0

	.cl_yellow:
		cmp dx, 240
		jg .cl_blue
		mov cx, 0
		.cl_loop_yellow:
			call yellow
			inc cx
			cmp cx, 640
			jl .cl_loop_yellow
			inc dx
			jmp .cl_yellow

	.cl_blue:
		cmp dx, 360
		jg .cl_end
		mov cx, 0
		.cl_loop_blue:
			call blue
			inc cx
			cmp cx, 640
			jl .cl_loop_blue
			inc dx
			jmp .cl_blue
	
	.cl_end:
		ret

england:
	mov dx, 0

	.en_white:
		cmp dx, 480
		jg .en_next
		mov cx, 0
		.en_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .en_loop_white
			inc dx
			jmp .en_white

	.en_next:
		mov dx, 0

	.en_red_vertical:
		cmp dx, 480
		jg .en_next1
		mov cx, 280
		.en_loop_red1:
			call red
			inc cx
			cmp cx, 360
			jl .en_loop_red1
			inc dx
			jmp .en_red_vertical

	.en_next1:
		mov dx, 200

	.en_red_horizontal:
		cmp dx, 280
		jg .en_end
		mov cx, 0
		.en_loop_red2:
			call red
			inc cx
			cmp cx, 640
			jl .en_loop_red2
			inc dx
			jmp .en_red_horizontal

	.en_end:
		ret

poland:
	call red_background

	mov dx, 0

	.pl_white:
		cmp dx, 240
		jg .pl_end
		mov cx, 0
		.pl_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .pl_loop_white
			inc dx
			jmp .pl_white
	
	.pl_end:
		ret

indonesia:
	call red_background

	mov dx, 240

	.id_white:
		cmp dx, 480
		jg .id_end
		mov cx, 0
		.id_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .id_loop_white
			inc dx
			jmp .id_white
	
	.id_end:
		ret

guinea:
	call green_background

	mov dx, 0

	.gn_red:
	cmp dx, 480
	jg .gn_next
	mov cx, 0 ; inicio da linha 
	.gn_loop_red:
		call red
		inc cx
		cmp cx, 214
		jl .gn_loop_red
		inc dx
		jmp .gn_red

	.gn_next:
		mov dx, 0

	.gn_yellow:
		cmp dx, 480
		jg .gn_end
		mov cx, 214
		.gn_loop_yellow:
			call yellow
			inc cx
			cmp cx, 427
			jl .gn_loop_yellow
			inc dx
			jmp .gn_yellow

	.gn_end:
		ret

romenia:
	call red_background

	mov dx, 0

	.rm_blue:
	cmp dx, 480
	jg .rm_next
	mov cx, 0 ; inicio da linha 
	.rm_loop_blue:
		call blue
		inc cx
		cmp cx, 214
		jl .rm_loop_blue
		inc dx
		jmp .rm_blue

	.rm_next:
		mov dx, 0

	.rm_yellow:
		cmp dx, 480
		jg .rm_end
		mov cx, 214
		.rm_loop_yellow:
			call yellow
			inc cx
			cmp cx, 427
			jl .rm_loop_yellow
			inc dx
			jmp .rm_yellow

	.rm_end:
		ret

nigeria:
	call green_background

	mov dx, 0

	.ng_white:
		cmp dx, 480
		jg .ng_end
		mov cx, 214
		.ng_loop_white:
			call white
			inc cx
			cmp cx, 427
			jl .ng_loop_white
			inc dx
			jmp .ng_white

	.ng_end:
		ret

mali:
	call green_background

	mov dx, 0

	.ml_yellow:
		cmp dx, 480
		jg .ml_next
		mov cx, 214
		.ml_loop_yellow:
			call yellow
			inc cx
			cmp cx, 427
			jl .ml_loop_yellow
			inc dx
			jmp .ml_yellow

	.ml_next:
		mov dx, 0
		
	.ml_red:
		cmp dx, 480
		jg .ml_end
		mov cx, 427
		.ml_loop_red:
			call red
			inc cx
			cmp cx, 640
			jl .ml_loop_red
			inc dx
			jmp .ml_red

	.ml_end:
		ret

denmark:
	call red_background

	mov dx, 0

	.dn_white_vertical:
		cmp dx, 480
		jg .dn_next
		mov cx, 205
		.dn_loop_wh1:
			call white
			inc cx
			cmp cx, 275
			jl .dn_loop_wh1
			inc dx
			jmp .dn_white_vertical

	.dn_next:
		mov dx, 200

	.dn_white_horizontal:
		cmp dx, 280
		jg .dn_end
		mov cx, 0
		.dn_loop_wh2:
			call white
			inc cx
			cmp cx, 640
			jl .dn_loop_wh2
			inc dx
			jmp .dn_white_horizontal

	.dn_end:
		ret

finland:
	mov dx, 0

	.fl_white:
		cmp dx, 480
		jg .fl_next
		mov cx, 0
		.fl_loop_white:
			call white
			inc cx
			cmp cx, 640
			jl .fl_loop_white
			inc dx
			jmp .fl_white

	.fl_next:
		mov dx, 0

	.fl_blue_vertical:
		cmp dx, 480
		jg .fl_next1
		mov cx, 205
		.fl_loop_bl1:
			call blue
			inc cx
			cmp cx, 275
			jl .fl_loop_bl1
			inc dx
			jmp .fl_blue_vertical

	.fl_next1:
		mov dx, 200

	.fl_blue_horizontal:
		cmp dx, 280
		jg .fl_end
		mov cx, 0
		.fl_loop_bl2:
			call blue
			inc cx
			cmp cx, 640
			jl .fl_loop_bl2
			inc dx
			jmp .fl_blue_horizontal

	.fl_end:
		ret

bangladesh:
	call green_background

	mov dx, 0

	.bg_red:
		mov cx, 170
		mov dx, 240
		call red_filled_circle

	.bg_end:
		ret

brasil:
	call green_background

	mov dx, 0

	push cx
	push ax

	mov dx, 80
	mov cx, 320 ; Salva o inicio da linha amarela
	mov ax, 322 ; Salva o final  da linha amarela 

	.br_yellow:
		cmp dx, 240
		jg .br_yellowBottom
		push cx
		.br_loopLine:
			push ax
			call yellow
			pop ax
			inc cx
			cmp cx, ax
			jl .br_loopLine
			inc dx
			add ax, 2
			pop cx
			sub cx, 2
			jmp .br_yellow

	.br_yellowBottom:
		cmp dx, 400
		jg .br_next
		push cx
		.br_loopLine1:
			push ax
			call yellow
			pop ax
			inc cx
			cmp cx, ax
			jl .br_loopLine1
			inc dx
			sub ax, 2
			pop cx
			add cx, 2
			jmp .br_yellowBottom

	.br_next:
		pop ax
		pop cx

	mov cx, 320
	mov dx, 240
	call blue_filled_circle

	mov dx, 235
	mov cx, 225

	.br_white:
		cmp dx, 245
		jg .br_end
		push cx
		.loopLine4:
			call white
			inc cx
			cmp cx, 420
			jl .loopLine4
			inc dx
			pop cx
			jmp .br_white

	.br_end:
		ret

won:
	call video

	call green_background

	mov dh, 8
	mov dl, 22
	call set_position

	mov bl, 15
	mov si, str_won
	call prints

	mov bl, 15
	mov dh, 13
	call set_position
	mov si, str_again
	call prints

	call hold_till_space
	
	jmp main

lost:
	call video

	call red_background

	mov dh, 10
	mov dl, 28
	call set_position

	mov bl, 15
	mov si, str_lost
	call prints

	mov bl, 15
	mov dh, 15
	mov dl, 22
	call set_position
	mov si, str_again
	call prints

	call hold_till_space

	jmp main

red_background:
	mov ah, 0xb
	mov bh, 0
	mov bl, 4
	int 10h

	ret

blue_background:
	mov ah, 0xb
	mov bh, 0
	mov bl, 1
	int 10h

	ret

green_background:
	mov ah, 0xb
	mov bh, 0
	mov bl, 2
	int 10h

	ret
red_filled_circle:  ; cx linha dx coluna (centro)
	push cx
	push dx

	mov ax, -125
	push ax

	.loop_circle:
		pop ax
		cmp ax, 125
		je .done
		inc ax
		push ax

		mov bx, -125
		push bx
		jmp .loop_circle2

	.loop_circle2:
		pop bx
		cmp bx, 125
		je .loop_circle
		inc bx
		push bx

		jmp .check

	.check:
		pop bx
		pop ax
		push ax
		push bx

		mov cx, ax
		mov dx, bx

		mul ax
		xchg ax, bx
		mul ax
		add ax, bx

		cmp ax, 15625
		jg .loop_circle2

		pop bx
		pop ax
		pop dx
		pop cx
		push cx
		push dx
		push ax
		push bx

		add cx, ax
		add dx, bx

		call red

		jmp .loop_circle2

	.done:
		pop dx
		pop cx
		ret

blue_filled_circle: ; cx linha dx coluna (centro)
	push cx
	push dx

	mov ax, -110
	push ax

	.loop_circle:
		pop ax
		cmp ax, 110
		je .done
		inc ax
		push ax

		mov bx, -110
		push bx
		jmp .loop_circle2

	.loop_circle2:
		pop bx
		cmp bx, 110
		je .loop_circle
		inc bx
		push bx

		jmp .check

	.check:
		pop bx
		pop ax
		push ax
		push bx

		mov cx, ax
		mov dx, bx

		mul ax
		xchg ax, bx
		mul ax
		add ax, bx

		cmp ax, 12100
		jg .loop_circle2

		pop bx
		pop ax
		pop dx
		pop cx
		push cx
		push dx
		push ax
		push bx

		add cx, ax
		add dx, bx

		call blue

		jmp .loop_circle2

	.done:
		pop dx
		pop cx
		ret

gets:               ; mov di, string
 	 xor cx, cx          ; zerar contador
 	.Loop1:
 		call getchar
 		cmp al, 0x08      ; backspace
 		je .backspace
 	cmp al, 0x0d      ; carriage return
 	je .Done
 	cmp cl, 10        ; string limit checker
 	je .Loop1
    
 	stosb
 	inc cl
 	call putchar
    
    jmp .Loop1
    .backspace:
      cmp cl, 0       ; is empty?
      je .Loop1
      dec di
      dec cl
      mov byte[di], 0
      call delchar
    jmp .Loop1
  .Done:
  mov al, 0
  stosb
  call endl
  ret

getchar:
 	mov ah, 0x00
 	int 16h
   	ret

putchar:
 	mov ah, 0x0e
 	int 10h
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

strcmp:             ; mov si, string1, mov di, string2
	.loop1:
		lodsb
		cmp al, byte[di]
		jne .notequal
		cmp al, 0
		je .equal
		inc di
		jmp .loop1
	.notequal:
		clc
		ret
	.equal:
		stc
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

hold_till_space:
	mov di, string
	call getchar
	cmp al, ' '
	jne hold_till_space

	ret

set_position:
	mov ah, 02h
	mov bh, 0
	int 10h
	ret

start_screen:

	call video

	mov dl, 35
	mov dh, 1
	call set_position

	mov bl, 2
	mov si, str_start0
	call prints

	mov dl, 0
	mov dh, 5
	call set_position

	mov bl, 15
	mov si, str_start1
	call prints

	mov dl, 0
	mov dh, 10
	call set_position

	mov bl, 15
	mov si, str_start2
	call prints

	mov dl, 0
	mov dh, 15
	call set_position

	mov bl, 15
	mov si, str_start3
	call prints

	call hold_till_space

	ret

data:
	string times 20 db                                                           0
	str_brasil      db 'brasil',                                                 0
	str_denmark     db 'dinamarca',                                              0
	str_finland     db 'finlandia',                                              0
	str_bangladesh  db 'bangladesh',                                             0
	str_japan       db 'japao',                                                  0
	str_france      db 'franca',                                                 0
	str_italy       db 'italia',                                                 0
	str_hungary     db 'hungria',                                                0
	str_germany     db 'alemanha',                                               0
	str_russia      db 'russia',                                                 0
	str_netherlands db 'holanda',                                                0
	str_sweden      db 'suecia',                                                 0
	str_colombia    db 'colombia',                                               0
	str_england     db 'inglaterra',                                             0
	str_poland      db 'polonia',                                                0
	str_indonesia   db 'indonesia',                                              0
	str_guinea      db 'guine',                                                  0
	str_romenia     db 'romenia',                                                0
	str_nigeria     db 'nigeria',                                                0
	str_mali        db 'mali',                                                   0
	str_lost        db 'Que pena. Voce perdeu!',                                 0
	str_won         db 'Parabens! Ja pode dominar o mundo!',                     0
	str_again       db 'Aperte espaco para jogar novamente',                     0
	str_start0      db '!BOT_ALLU!',                                             0 
	str_start1      db '> Cada bandeira ficara na tela ate voce apertar espaco', 0
	str_start2      db '> Escreva o nome do pais de acordo com a bandeira',      0
	str_start3      db '> Aperte espaco para continuar',                         0

end:
	jmp $