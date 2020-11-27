org 0x8600
jmp 0x0000:main
  tem1 db '0' ,0
  tem2 db '0' ,0
  tem3 db '0' ,0
  tem4 db '0' ,0
  tem5 db '0' ,0
  tem6 db '0' ,0
  tem7 db '0' ,0
  tem8 db '0' ,0
  tem9 db '0' ,0
  pergunta1 db 'COM QUANTOS PERIODOS UM ENGENHEIRO DA COMPUTACAO SE FORMA?',0
  a db 'A) 11',0
  b db 'B) 12',0
  c db 'C) 13',0
  d db 'D) Nao se forma',0
  string times 1 db 0
  Errada db 'YOU FAIL!',0

  pergunta2 db 'QUAL O MELHOR SABOR DE PALHA DE ENERI',0
  a2 db 'A) Leite ninho',0
  b2 db 'B) Oreo',0
  c2 db 'C) Chocolate',0
  d2 db 'D) Brigadeiro',0

  
  pergunta3 db 'QUAL A PIOR CADEIRA DO PRIMEIRO PERIODO?',0
  a3 db 'P) IP',0
  b3 db 'Q) CALCULO',0
  c3 db 'T) MD',0
  d3 db 'F) AVLC',0

  pergunta4 db 'QUAL O VALOR DA INTEGRAL DA TAN(X)?',0
  a4 db 'A) ln[cos(x)] + C',0
  b4 db 'B) Sen(x)Cos(x) + C',0
  c4 db 'C) ln[sec(x)] + C',0
  d4 db 'D) ln[cossec(x)] + C',0

  pergunta5 db 'QUEM FOI O LIDER DA REVOLUCAO IRANIANA DE 1979',0
  a5 db 'A) Saddam Hussein',0
  c5 db 'C) Osama bin laden',0
  b5 db 'B) Aiatola khomeini',0
  d5 db 'D) Mohammad reza pahlevi',0
  
  pergunta6 db 'QUAL O DIA QUE RETIRARAM A MAQUINA DE CAFE E DOCES DO CIN?',0
  a6 db 'A) 25/06/2018',0
  b6 db 'B) 25/05/2018',0
  c6 db 'C) 20/06/2018',0
  d6 db 'D) 20/05/2018',0
  
  pergunta7 db 'NA CALAOURADA DA AREA 2, ONDE RELAMPAGO MARQUINHOS FOI PARAR?',0
  a7 db 'A) Olindando por ai',0
  b7 db 'B) Ele nem foi',0
  c7 db 'C) Boa viagem, BURGUES SAFADO',0
  d7 db 'D) Recife Antigo',0

  pergunta8 db 'QUEM ROUBOU O QUEIJO?',0
  a8 db 'A) Um rato',0
  b8 db 'B) The cheese is a lie',0
  c8 db 'C) A tia que ninguem conhece',0
  d8 db 'D) Ela comeu e esqueceu',0
  DEUS db 'SO DEUS SABE',0

  pergunta9 db 'Qual o CR de Lucas Santana?',0
  a9 db 'A) 9,20',0
  b9 db 'B) 9,13',0
  c9 db 'C) 9,02',0
  d9 db 'D) 8,98',0
  perguntaFinal db 'Se voce tem 5 reais, o que eh o certo a fazer?',0
  af db 'A) VAI NA AREA 2 SER OTARIO',0
  bf db 'B) COMPRAR DOIS DELICIOSOS SALGADOS DO WASH',0

  ErradoSec db 'Pressione enter para continuar',0
  msgFinal db 'DEU CLOSE NA INTELIGENCIA',0
  Erradaf db 'TU VAI QUEIMAR NO INFERNO!!!',0
  Certof1 db 'TEM PAO DE QUEIJO, FRANGO COM CHEDDAR, MISTO E SALSICHA',0
  Certof2 db 'TEM PASTEL DE FRANGO COM CATUPIRY, CARNE E QUEIJO',0
  Certof3 db 'TEM COXINHA DE FRANGO, RISOLE E EMPADA DE FRANGO',0
  Certof4 db 'PEDE O TEU BB',0
verificar1:
        xor ax,ax
        mov si, tem1
        lodsb
        cmp al ,'0'
        je .colocar1
        
        jmp RANDGEN
    .colocar1:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem1
        stosb
        jmp p1
verificar2:
        xor ax,ax
        mov si, tem2
        lodsb
        cmp al , '0'
        je .colocar2
        
        jmp RANDGEN
    .colocar2:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem2
        stosb
        jmp p2
verificar3:
        xor ax,ax
        mov si, tem3
        lodsb
        cmp al , '0'
        je .colocar3
        
        jmp RANDGEN
    .colocar3:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem3
        stosb
        jmp p3
verificar4:
        xor ax,ax
        mov si, tem4
        lodsb
        cmp al , '0'
        je .colocar4
        
        jmp RANDGEN
    .colocar4:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem4
        stosb
        jmp p4
verificar5:
        xor ax,ax
        mov si, tem5
        lodsb
        cmp al , '0'
        je .colocar5
        
        jmp RANDGEN
    .colocar5:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem5
        stosb
        jmp p5
verificar6:
        xor ax,ax
        mov si, tem6
        lodsb
        cmp al , '0'
        je .colocar6
        
        jmp RANDGEN
    .colocar6:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem6
        stosb
        jmp p6
verificar7:
        xor ax,ax
        mov si, tem7
        lodsb
        cmp al , '0'
        je .colocar7
        
        jmp RANDGEN
    .colocar7:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem7
        stosb
        jmp p7
verificar8:
        xor ax,ax
        mov si, tem8
        lodsb
        cmp al , '0'
        je .colocar8
        
        jmp RANDGEN
    .colocar8:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem8
        stosb
        jmp p8
verificar9:
        xor ax,ax
        mov si, tem9
        lodsb
        cmp al , '0'
        je .colocar9
        jmp RANDGEN
    .colocar9:
        pop bx
        add bx,1
        push bx
        mov al, 'A'
        mov di, tem9
        stosb
        jmp p9


delayDeTela:
	mov bp, 1000
	mov dx, 1000
	delayTela:
		dec bp
		nop
		jnz delayTela
	dec dx
	jnz delayTela
ret
; calls

getchar:
  mov ah, 0x00
  int 16h
  ret
  

PrintarF: 
	lodsb
	cmp al,0
	je fim

	mov ah, 0xe
	int 10h	
    mov dx, 500
	call delay 
	
	jmp PrintarF
fim:
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

certo1:
    call delayDeTela
    jmp RANDGEN
certo2:
    call delayDeTela
    jmp RANDGEN
certo3:
    
    call delayDeTela
    jmp RANDGEN
certo4:
    call delayDeTela
    jmp RANDGEN
certo5:
    call delayDeTela
    jmp RANDGEN
certo6:
    call delayDeTela
    jmp RANDGEN
certo7:
    call delayDeTela
    jmp RANDGEN
certo8:
    call limpaTela
    mov ah, 02h
	mov bh, 00h
	mov dh, 10
	mov dl, 35
	int 10h
	mov si, DEUS
    call printString
    mov dx, 5000
    call delay
    jmp RANDGEN
certo9:
    call delayDeTela
    jmp RANDGEN

errado:
    call limpaTela
    mov  dl, 35
	mov  dh, 10
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, Errada
    call printString
    mov  dl, 25
	mov  dh, 15
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, ErradoSec
    call printString
    call getchar
    jmp 0x7E00
erradof:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 4
	int 10h	
    mov bl, 14
    call limpaTela
    mov  dl, 25
	mov  dh, 10
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, Erradaf
    call PrintarF
    mov dx, 10000
    call delay
    jmp 0x7E00
certof:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 1
	int 10h	
    mov bl, 13
    call limpaTela
    mov  dl, 35
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, Certof4
    call printString
    mov  dl, 10
	mov  dh, 10
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, Certof1
    call printString
    mov  dl, 10
	mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, Certof2
    call printString
    mov  dl, 10
	mov  dh, 14
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, Certof3
    call printString
    
    mov dx, 10000
    call delay
    jmp 0x7E00
pf:
    mov ah, 0
	mov al, 12h
	int 10h
    mov bl, 15
    call limpaTela
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, perguntaFinal
    call printString       
    
    mov  dl, 5
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, af
    call printString
    
    mov  dl, 5
    mov  dh, 16
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, bf
    call printString
    
    lerf:
    call getchar
    cmp al, 'A'
    je erradof
    cmp al, 'B'
    je certof
  
    cmp al, 'a'
    je erradof
    cmp al, 'b'
    je certof
   
    jmp lerf
p1:
    ;colocar a tela ROXO
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 1
	int 10h	
    mov bl, 15
    call limpaTela
    xor ax, ax
    mov ds, ax
    mov es, ax
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
    

    ler1:
    call getchar
    cmp al, 'a'
    je errado
    cmp al, 'b'
    je errado
    cmp al, 'c'
    je errado
    cmp al, 'd'
    je certo1
     cmp al, 'A'
    je errado
    cmp al, 'B'
    je errado
    cmp al, 'C'
    je errado
    cmp al, 'D'
    je certo1
    jmp ler1

p2:
    mov ah, 0
	mov al, 12h
	int 10h
    mov bl, 15
    call limpaTela
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta2
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a2
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b2
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c2
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d2
    call printString
    xor ax, ax
    

    ler2:
    call getchar
    cmp al, 'a'
    je errado
    cmp al, 'd'
    je errado
    cmp al, 'c'
    je errado
    cmp al, 'b'
    je certo2
     cmp al, 'A'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'C'
    je errado
    cmp al, 'B'
    je certo2
    jmp ler2
p3:
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
	mov si, pergunta3
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a3
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b3
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c3
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d3
    call printString
    xor ax, ax
    

    ler3:
    call getchar
    cmp al, 'P'
    je errado
    cmp al, 'Q'
    je errado
    cmp al, 'F'
    je errado
    cmp al, 'T'
    je certo3
     cmp al, 'p'
    je errado
    cmp al, 'q'
    je errado
    cmp al, 'f'
    je errado
    cmp al, 't'
    je certo3
    jmp ler3
p4:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 14
	int 10h	
    mov bl, 13
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta4
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a4
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b4
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c4
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d4
    call printString
    xor ax, ax
    

    ler4:
    call getchar
    cmp al, 'A'
    je errado
    cmp al, 'B'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'C'
    je certo4
     cmp al, 'd'
    je errado
    cmp al, 'a'
    je errado
    cmp al, 'b'
    je errado
    cmp al, 'c'
    je certo4
    jmp ler4
p5:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 1
	int 10h	
    mov bl, 15
    call limpaTela
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov  dl, 16
	mov  dh, 2
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta5
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a5
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b5
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c5
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d5
    call printString
    xor ax, ax
    

    ler5:
    call getchar
    cmp al, 'a'
    je errado
    cmp al, 'c'
    je errado
    cmp al, 'd'
    je errado
    cmp al, 'b'
    je certo5
     cmp al, 'A'
    je errado
    cmp al, 'C'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'B'
    je certo5
    jmp ler5
p6:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 7
	int 10h	
    mov bl, 2
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta6
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a6
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b6
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c6
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d6
    call printString
    xor ax, ax
    

    ler6:
    call getchar
    cmp al, 'C'
    je errado
    cmp al, 'B'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'A'
    je certo6
     cmp al, 'd'
    je errado
    cmp al, 'c'
    je errado
    cmp al, 'b'
    je errado
    cmp al, 'a'
    je certo6
    jmp ler6
p7:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 15
	int 10h	
    mov bl, 5
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta7
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a7
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b7
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c7
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d7
    call printString
    xor ax, ax
    

    ler7:
    call getchar
    cmp al, 'A'
    je errado
    cmp al, 'B'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'C'
    je certo7
     cmp al, 'd'
    je errado
    cmp al, 'a'
    je errado
    cmp al, 'b'
    je errado
    cmp al, 'c'
    je certo7
    jmp ler7
p8:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 5
	int 10h	
    mov bl, 14
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta8
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a8
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b8
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c8
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d8
    call printString
    xor ax, ax
    

    ler8:
    call getchar
    cmp al, 'A'
    je certo8
    cmp al, 'B'
    je certo8
    cmp al, 'D'
    je certo8
    cmp al, 'C'
    je certo8
     cmp al, 'd'
    je certo8
    cmp al, 'a'
    je certo8
    cmp al, 'b'
    je certo8
    cmp al, 'c'
    je certo8
    jmp ler8
p9:
    mov ah, 0xb  
	mov bh, 0     
	mov bl, 3
	int 10h	
    mov bl, 15
    call limpaTela
 
    mov  dl, 15
	mov  dh, 5
	mov  bh, 0
	mov  ah, 02h
	int  10h
	mov si, pergunta9
    call printString       
    
    mov  dl, 15
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, a9
    call printString
    
    mov  dl, 50
    mov  dh, 12
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, b9
    call printString
   
    mov  dl, 15
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, c9
    call printString
   
    mov  dl, 50
    mov  dh, 18
	mov  bh, 0
	mov  ah, 02h
	int  10h
    mov si, d9
    call printString
    xor ax, ax
    

    ler9:
    call getchar
    cmp al, 'C'
    je errado
    cmp al, 'A'
    je errado
    cmp al, 'D'
    je errado
    cmp al, 'B'
    je certo9
     cmp al, 'd'
    je errado
    cmp al, 'a'
    je errado
    cmp al, 'c'
    je errado
    cmp al, 'b'
    je certo9
    jmp ler9
cheguei9:
    mov ah, 0
	mov al, 12h
	int 10h
    jmp pf
    
RANDGEN:     ; generate a rand no using the system time
    pop bx
    xor bh,bh
    cmp bl, 9
    je cheguei9
    push bx
    RANDSTART:
        mov AH, 00h  ; interrupts to get system time        
        int 1AH      ; CX:DX now hold number of clock ticks since midnight      

        mov  ax, dx
        xor  dx, dx
        mov  cx, 10    
        div  cx       ; here dx contains the remainder of the division - from 0 to 9

        add  dl, '0'  ; to ascii from '0' to '9'
        mov al,dl
        cmp  al, '1'
        je verificar1
        cmp al, '2'
        je verificar2
        cmp  al, '3'
        je verificar3
        cmp al, '4'
        je verificar4 
        cmp  al, '5'
        je verificar5
        cmp al, '6'
        je verificar6
        cmp  al, '7'
        je verificar7
        cmp al, '8'
        je verificar8 
        cmp  al, '9'
        je verificar9
        jmp RANDGEN
main:
    xor ax,ax
    mov ds,ax
    mov es,ax
    xor bx,bx
    push bx
    jmp RANDGEN


         
jmp 0x7E00