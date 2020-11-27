org 0x7c00
jmp 0x0000:main

RANDGEN:         ; generate a rand no using the system time
    RANDSTART:
        mov AH, 00h  ; interrupts to get system time        
        int 1AH      ; CX:DX now hold number of clock ticks since midnight      

        mov  ax, dx
        xor  dx, dx
        mov  cx, 10    
        div  cx       ; here dx contains the remainder of the division - from 0 to 9

        add  dl, '0'  ; to ascii from '0' to '9'
        mov al,dl
        mov ah, 0xe
        int 10h   
    ret  
main:
    xor ax,ax
    mov ds,ax
    mov es,ax
    jmp RANDGEN

times 510-($-$$) db 0
dw 0xaa55