; Fusion.asm
; Teod 22-11-16

; ----
; Info
; ----

; tileset: 0x81D8140
; gradient tileset: 0x81D8EF4

; uses hud palette:
; 0x8261144, 32 colors, 0 offset
; 0x8262514, 16 colors, 0 offset

; palette2: 0x81D7584, 192 colors, 64 offset



; main map: 0x81D7A38, 2*30*20, X30 Y20
; numbers: 0x81E07B8, 2*10
; textbox: 0x81E07E0, 2*15

; tileset
;.org 0x81D8140
;.area 2301, 0
;.import "build\Fusion_t.bin"
;.endarea

; relocate tileset
.autoregion
@tileset:
.import "build\Fusion_t.bin"
.endautoregion

.org 0x801DE28
.dw @tileset


; maps
.org 0x81D7A38
.import "build\Fusion_Main_m.bin"

.org 0x81E07B8
.import "build\Fusion_Numbers_m.bin"

.org 0x81E07E0
.import "build\Fusion_TextBox_m.bin"

