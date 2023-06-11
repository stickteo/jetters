; HUD2.asm
; teod 22-12-29

; notes
; - hud2 tileset
;   8262604
; - hud2 palette, 32 colors
;   82625C4
; - hud2 map, 32*1*2
;   8262D50
; - pause map, 8*3*2
;   8262D90

; tileset
; .org 0x8262604
; .area 1862, 0
; .import "build\HUD2_t.bin"
; .endarea

; relocate for more space
.autoregion
@tileset:
.import "build\HUD2_t.bin"
.endautoregion

.org 0x802B654
.dw @tileset

; map
.org 0x8262D90
.import "build\HUD2_Pause_m.bin"


