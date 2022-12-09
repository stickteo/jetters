; GameOver.asm
; Teod 2022-11-19

; Info

; debug:
; b 0x8021780 : r0 = index
; b 0x80217A6 : r0 = map addr
; indeces: 5A 5B 5C 5D 5E 5F
; maps: 0x8249918, 0x824BF60

; tileset
; .org 0x8249214
; .area 1790, 0
; .import "build\GameOver_t.bin"
; .endarea

; relocate tileset
.autoregion
@tileset:
.import "build\GameOver_t.bin"
.endautoregion

.org 0x825FB90
.dw @tileset

; map
.org 0x8249918
.import "build\GameOver_m.bin"
