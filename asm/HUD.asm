; HUD.asm
; teod 2022-11-12

; ----
; info
; ----
; tileset: 0x8261184
; tileset alt?:
; palette: 0x8261144, 32 colors

; alt pal 0: 0x8262514, 4*16 colors
; alt pal 1: 0x8262494, 4*16 colors

; pause: 0x8262594, X8 Y3
; pause alt: 0x8262D90, X8 Y3

; flames: 0x826B498, 2*36*4, X2 Y72
; flames alt: 0x826B5B8, 2*36*4, X2 Y72
; flames alt: 0x826AC84, 2*164*6+8, X2 Y494


; hud main: 0x8261F18, 2*64, X32 Y2

; numbers:
; .dh 0x1094, 0x1095, 0x1096, 0x1097, 0x1098
; .dh 0x1099, 0x109A, 0x109B, 0x109C, 0x109D
; hearts:
; .dh 0x102B, 0x100B

; stars: 0x82632A0, 2*2*5, X1 Y10

; bombs: 0x8263278, 2*4*5, X2 Y10

; boss hp: 0x8304720, 2*4, X2 Y2

; dword_802B224   DCD 0x1094 ; zero
; dword_802B22C   DCD 0x1095 ; one
; dword_802B238   DCD 0x102B ; empty heart
; dword_802B23C   DCD 0x100B ; full heart

; dword_804E370   DCD 0x1094 ; zero (boss run)
; dword_804E374   DCD 0x1067 ; :
; dword_804E384   DCD 0x1068 ; .

; karabon map: 0x826244C
; karabon palette: 0x8261F98

; tileset
.org 0x8261184
.area 3471, 0
.import "build\HUD_t.bin"
.endarea

; maps
.org 0x8261F18
.import "build\HUD_Main_m.bin"

.org 0x8263278
.import "build\HUD_Bombs_m.bin"

.org 0x82632A0
.import "build\HUD_Stars_m.bin"

;  numbers
.org 0x802B224
.dw readu16("build\HUD_Misc_m.bin",0)
.org 0x802B22C
.dw readu16("build\HUD_Misc_m.bin",2*1)
;  hearts
.org 0x802B238
.dw readu16("build\HUD_Misc_m.bin",2*12)
.org 0x802B23C
.dw readu16("build\HUD_Misc_m.bin",2*13)

.org 0x8304720
.import "build\HUD_Boss_m.bin"

;  numbers
.org 0x804E370
.dw readu16("build\HUD_Misc_m.bin",0)
;  boss hp
.org 0x804E374
.dw readu16("build\HUD_Misc_m.bin",2*10)
.org 0x804E380
.dw readu16("build\HUD_Misc_m.bin",2*11)

.org 0x826B498
.import "build\HUD_Flames_m.bin"

; fixing offset the "easy way"
; instead of having separate maps for the flames
; the devs decided to use an offset...
.org 0x803323A
; MOVS    R0, #64
mov r0, (readu16("build\HUD_Flames2_m.bin",0)-readu16("build\HUD_Flames_m.bin",0))

; all of this patching just for this...
.org 0x8262594
.import "build\HUD_Pause_m.bin"
