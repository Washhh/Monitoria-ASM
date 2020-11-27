org 0x7c00
jmp 0x0000:start

data:
palavra: times 100 db 0

;biblioteca principal

putchar:
    mov ah, 0x0e
    int 10h
    ret
   
   
getchar:
    mov ah, 0x00
    int 16h
    ret
   
   
delchar:
    mov al, 0x08                    
    call putchar
    mov al, ' '
    call putchar
    mov al, 0x08                   
    call putchar
    ret
   
endl:
    mov al, 0x0a                    
    call putchar
    mov al, 0x0d                    
    call putchar
    ret
   

prints:                            ; mov si, string
    .loop:
        lodsb                    ; bota character em al
        cmp al, 0
        je .endloop
        call totransform     
        jmp .loop          
    .endloop:
    ret


totransform:   
        ;bl ja começa com 0 pq a frase começa com letra maiuscula
        cmp bl, 0
        je .uppercase
        jmp .lowercase
  
    .lowercase:
        cmp al, 32              ;verificar se o caractere é espaço
        je .space       
        jmp .printlowercase
            
        .space:                 ;Se for espaço, printa o espaço
                call putchar 
                ret
            
        .printlowercase:    
                call putchar 
                mov bl, 0       ;muda bl pra 0 para na proxima letra imprimir maiusculo
                ret
    ret
   
    .uppercase:
        cmp al, 32              ;verificae se o caractere é espaço
        je .space2
        jmp .printuppercase
            
        .space2:
                call putchar
                ret
           
        .printuppercase:
                sub al, 32       ; -32=letra maiuscula tabela ascii
                call putchar
                mov bl, 1       ;muda bl pra 1 para na proxima letra imprimir minusculo
                ret
    ret
   
ret


gets:                            ; mov di, string
    xor cx, cx                    ; zerar contador
    .loop1:
        call getchar
        cmp al, 0x08            
        je .backspace
        cmp al, 0x0d            
        je .done
        cmp cl, 13               ; limite da string / 13 equivale ao enter 
        je .loop1
       
        stosb
        inc cl
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
   
;fim da biblioteca principal

start:
    
    ;bl sera usado como uma variavel auxiliar
    mov bl, 0
    
    ;ler a palavra
    mov di, palavra
    call gets
  
    ;printar a palavra
    mov si, palavra
    call prints
   
   
   

jmp $
times 510-($-$$) db 0       
dw 0xaa55           
                



