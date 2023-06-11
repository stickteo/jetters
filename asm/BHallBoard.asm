; BHallBoard.asm
; teod 23-01-01

; notes
; - tileset, 3691 bytes
;   8268560
; - palette, 3*16*2
;   8268500
; - main 1 (red), 32*20*2
;   82693D0
; - main 2 (blue), 32*20*2
;   8269978
; - ranks, 2*2 * 16 *2
;   8269908
; - numbers, 1*2 * 14 * 2
;   82698D0

; tileset
.org 0x8268560
.area 3691, 0
.import "build\BHallBoard_t.bin"
.endarea

; maps
.org 0x82693D0
.import "build\BHallBoard_Red_m.bin"

.org 0x8269978
.import "build\BHallBoard_Blue_m.bin"

.org 0x8269908
.import "build\BHallBoard_Ranks_m.bin"

.org 0x82698D0
.import "build\BHallBoard_Numbers_m.bin"

