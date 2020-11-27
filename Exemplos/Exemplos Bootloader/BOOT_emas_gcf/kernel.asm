org 0x7e00
jmp 0x0000:start

d_delay dw 600
c_delay dw 1
escolha dw 0

imgH dw 30   ; altura e largura da imagem
imgW dw 10
posX dw 15   ; posição do inicio do desenho
posY dw 15  ; posição
cor db 15
img_address dw 0

imgH2 dw 30   ; altura e largura da imagem
imgW2 dw 10
posX2 dw 15   ; posição do inicio do desenho
posY2 dw 15  ; posição
cor2 db 15
img_address2 dw 0

chao dw 175

dinoX dw 15
dinoY dw 0
dinoW dw 35
dinoH dw 35
dino_speedY dw 0
dino_acelY dw 0
walkdino db 0 ;seleciona sprite a ser exibido

cactoW dw 15
cactoH dw 30
cacto1X dw 300
cacto_vel dw 5

gravity dw 2
forcadopulo dw -20
startaddr dw  0a000h  ;start of video memory

gameover_string db "Game Over",0
Matrix0 db "Wake up, Neo...",13,0
Matrix2 db "The Matrix has you",0
Matrix21 db "What do you want to do?",10,13,0
Matrix3 db "1. Watch funny animals on youtube",10,13,0
Matrix4 db "2. Play Crazy Dinosaur",10,13,0
Matrix5 db "3. Follow the White Rabbit",0

Matrix6 db "Knock, Knock, Neo",0

offline db "You are offline :("

pulademora db 0

cacto1 db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0,15,15, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0,15, 0, 0
db  0,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15, 0, 0,15,15,15,15, 0, 0,15,15,15, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0
db  0,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0
db  0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0

;setar pos
dino1 db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15, 0, 0, 0, 0,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

dino2 db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,0,0,0,0,0,0,0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15,15,15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0




start:
    xor ax, ax
    mov ds, ax
    mov es, ax


    mov si, Matrix0
    call impressao
    times 3 call delay


    call screen_clear

    mov ax,3
    mov [c_delay],ax

    mov ax,02
    int 10h

    mov si,Matrix2
    call impressao
    call delay
    call screen_clear


start_2:

    mov ax,02
    int 10h


    call choices
    mov ax,[escolha]

    cmp ax,'1'
    je .first

    cmp ax,'2'
    je .second

    cmp ax, '3'
    je .third

    jmp done

    .first:
      jmp game_loop

    .second:
      jmp game_loop

    .third:

      jmp Matrix

choices:
      
    mov ax,1
    mov [c_delay],ax

    mov si,Matrix21
    call impressao
    
    mov si,Matrix3
    call impressao

    mov si,Matrix4
    call impressao

    mov si,Matrix5
    call impressao

    mov ah, 00h
    int 16h
    mov ah,0
    mov [escolha],ax

    call screen_clear

    mov ax,0
    mov [c_delay],ax
    mov si,Matrix6
    call impressao
    call delay

    ret


delay:
  mov cx,10
  mov dx,300
  mov ah, 86h
      int 15h
      ret

screen_clear:
    mov ax,12h
    int 10h
    ret


impressao:
    lodsb

    cmp al, 0
    je .exit

        mov ah, 0eh
  mov bl,[cor]
        mov bh,0
        ;mov bl,0x2 cor
        int 10h

        
     

          call teclado_delay

    jmp impressao

    .exit:
            ;call espacos
            ret

teclado_delay:
    mov ah, 86h
    mov dx, [d_delay]
    mov cx,[c_delay]
    int 15h
    ret


game_loop:
    call clear

    mov ah,86h  ;(interrupção de wait cx:dx contem o tempo)
    mov dx, 15000
    int 15h ;realiza o loop a cada 1/30 segundos


    call update
    call game_draw
    call collision_watcher

jmp game_loop

update:
    call dino_update
    call cacto_update
ret

game_draw:
    call clear

    mov ax,13h
    int 10h ; limpa a tela

    mov ax,'1'
    cmp [escolha],ax
    jne nao_printa
      mov ah,2
      mov dh, 3
      mov dl, 15
      int 10h

      mov si,offline
      call print_offline
    nao_printa:

    call chao_draw
    call dino_draw
    call cacto_draw
ret


print_offline:
    

    lodsb
    cmp al,0
    je exit_off

    
    mov ah, 0eh           ;0eh = 14
    xor bx, bx            ;Page number zero
    mov bl, 15           ;Color is red
    int 10h

    jmp print_offline
    exit_off:

ret

collision_watcher:
  call clear
  mov cx, 0

  mov ax, [dinoX]
  add ax, [dinoW]
  sub ax, 5
  cmp ax,[cacto1X]
  jl volta


  mov ax, [dinoY]
  add ax, [dinoH]
  mov bx,[chao]
  sub bx,[cactoH]
  cmp ax,bx

  jg gameover

volta:
ret




cacto_draw:

  call clear
  mov ax,[cacto1X]
  mov [posX],ax

  mov ax,[chao]
  sub ax,[cactoH]
  mov [posY],ax

  mov ax,cacto1
  mov [img_address],ax

  mov ax,[cactoH]
  mov [imgH],ax

  mov ax,[cactoW]
  mov [imgW],ax

  call p_draw



call clear
ret

cacto_update:
call clear
  mov ax,[cacto1X]
  sub ax,[cacto_vel]

  cmp ax,0
  jne continua
  mov ax,300
  continua:
  mov [cacto1X],ax
call clear
ret

chao_draw:
  call clear


   mov es, [startaddr]        ;put segment address in es
   mov ax,[chao]
   mov bx,320
   mul bx ; 315*posY ~ linha da tela


   mov cx,319

   mov di,ax

   xor ax,ax
   mov al,[cor]
   mov ah,[escolha]
   cmp ah,'2'
   jne .preto

   inc al
   mov [cor],al   ;apagar essa e a de cima


   .preto:

   imprime2:
     mov [es:di], al
     inc di

   loop imprime2
call clear
ret

dino_draw:
call clear

    mov al,[walkdino]
    inc al
    cmp al,7
    jg sprite2

    sprite1:
      mov bx,dino2
      mov [img_address],bx
      jmp cont_dino_draw

    sprite2:
      mov bx,dino1
      mov [img_address],bx


    cont_dino_draw:


    cmp al,14       ; aqui tem um bug que nao faz sentido
    jl nao_zera       ; aqui tem um bug que nao faz sentido
    mov al,0       ; aqui tem um bug que nao faz sentido
    nao_zera:       ; aqui tem um bug que nao faz sentido
    mov [walkdino],al


    mov ax,[dinoW]
    mov bx,[dinoH]

    mov [imgW],ax
    mov [imgH],ax

    mov ax,[dinoX]
    mov bx,[dinoY]

    mov [posX],ax
    mov [posY],bx


    call p_draw

call clear
ret

dino_update:
    call clear

    mov ax,[dinoY]
    add ax,[dino_speedY]

    cmp ax,0 ;esta na tela? ( passou do teto?)
    jg tanochao? ; blz, se nao passou do teto ele está no chao?
    mov ax,0 ; ahh passou? entao seta pra 0
    mov [dino_speedY],ax ; bateu no teto a velocidade vai pra 0

    tanochao?:
    mov dx,[chao]
    sub dx,[dinoH]

    cmp ax,dx
    jl set_pos ; se nao ta blz, segue o fluxo
    mov ax,0
    mov [dino_speedY],ax ; bateu no chao vel =0
    mov ax,dx
    mov [dinoY],ax ;  ta no chao entao fica no chaos




    set_pos:
    mov [dinoY],ax

    mov ax,[gravity]
    add [dino_speedY],ax

    wait_key:
        mov ah,01H
        int 16h ; get a key
        jnz gotkey
        ret

    gotkey:
        mov ah,00h
        int 16h

        mov dx,[forcadopulo]
        mov [dino_speedY],dx
ret



p_draw:
   call clear

   mov es, [startaddr]        ;put segment address in es
   mov ax,[posY]
   mov bx,320
   mul bx ; 315*posY ~ linha da tela
   add ax,[posX]

   mov cx,[posX]
   inc cx
   mov [posX],cx
   mov [posY],cx

   mov di,ax

   xor cx,cx
   xor ax,ax
   xor bx,bx

   mov si,[img_address]


   imprime:
       lodsb
       mov dx,[escolha]
       cmp dx,'2'
       jne .outro

        cmp al,0;
        je .nmuda;
        mov al,[cor]  ;comentar isso
        add al, 100;
        .nmuda:;


       .outro:
       mov [es:di], al
       inc di
       inc cx
       cmp cx,[imgW] ;tam horizontal
       jl imprime

       pulalinha:
        xor cx,cx
        sub di,[imgW]  ; retorna pro começo
        add di,320 ;linha de baixo
        inc bx
        cmp bx,[imgH] ;tam vertical
        jl imprime
p_drawEnd:
    call clear
    ret

clear:
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
ret

gameover:
  mov ax,300
  mov [cacto1X],ax
  mov al,0xf
  mov [cor],al
  jmp start_2

Matrix:   

    call clear
    mov ax,02
    int 10h


    MOV AX,0700H    ;Clear screen
    MOV BX,0200H
    SUB CX,CX
    MOV DX,184FH
    INT 10H 

MAINLP: NOP         ;Main program starts here

RANDG:  POP AX      ;Get prev random number
    POP BX      ;Get pre-prev random number
    PUSH    AX      ;Set prev random number to the new pre-prev random number
    INC AX      ;Add 1 to prev random number
    MOV CL,07H      ;Set shift controller
    ROR AX,CL       ;Rotate 'prev random number'+1 right by 7
    ROL BX,CL       ;Rotate 'pre-prev random number' left by 7
    MUL BX      ;Multiplicate AX by BX
    DEC AX      ;Subtract 1 from AX
    MOV CL,04H      ;Set shift controller
    ROL AX,CL       ;Rotate AX left by 4
    ROR DX,CL       ;Rotate DX right by 4
    MOV CL,01H      ;Set shift controller
    SHR DH,CL       ;Shift DH right by 1 to higher possibility to get it into the right range.
    MOV CH,AL       ;Store random variable 1
    MOV CL,DH       ;Store random variable 2
    MOV AL,BL       ;Combine the rest of the random numbers
    PUSH    AX      ;Save the random number on stack
    CMP CL,4FH      ;Check if 'Coloumns' is in range
    JA  RANDG       ;Get new random numbers if not
    PUSH    CX      ;Save random variables on stack

    MOV AX,0701H    ;Seting up the registers
    MOV BX,0200H
    SUB CX,CX
    MOV DX,184FH
    INT 10H     ;Scroll everything down by one row

    MOV AX,0200H    ;Seting up the registers
    SUB BX,BX
    MOV CX,BX
    POP DX      ;Get the random number from the stack
    PUSH    DX      ;Restore the random number to stack
    MOV DH,BH
    INT 10H     ;Set cursor

    POP AX      ;Get the random number from the stack
    XCHG    AH,AL       ;Get the right part of the random number
    MOV AH,0AH      ;Seting up the registers
    SUB BX,BX
    MOV CX,0001H
    MOV DX,BX
    INT 10H     ;Write caracter
    ; ----------------- Delay letras ---------;
    mov cx,0
    mov dx,10000
    mov ah, 86h
    int 15h
    ;------------------------------------

    MOV CX,0002H    ;Number of speed reducing loops
TMR:    PUSH    CX      ;Savd CX from subLoop
    MOV CX,500H    ;Number of loops per speed reducing loop
TMR1:   NOP         ;Time waster
    LOOP    TMR1        ;Loop if not done
    POP CX      ;Restore CX from subLoop
    LOOP    TMR     ;Loop if not done

    MOV AH,01H      ;Check for a key being pressed
    INT 16H
    JZ  MAINLP      ;If no, repeat main program

    POP AX      ;Pop random numbers of the stack
    POP AX
    SUB AH,AH       ;Throw away the key being pressed
    INT 16H

    MOV AX,0700H    ;Clear screen
    MOV BX,AX
    SUB CX,CX
    MOV DX,184FH
    INT 10H

    call clear

    jmp start_2


done:
    call screen_clear
    jmp $