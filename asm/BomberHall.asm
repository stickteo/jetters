; BomberHall.asm
; teod 22-12-29

; notes
; - tileset
;   82632B4
; - palette
;   8182E2C, offset 0x80, 6*16*2
; - map main, 32*20*2
;   8264200
; - map text, 16*16*2
;   826A4D0
; - map numbers, 1*2*11*2
;   826A6D0
; - map numbers2, 2*2*7*2
;   826A6FC

; - text
;   - フロアー X クリア
;     - Floor X Cleared
;   - のこり タイム
;     - nokori taimu
;     - Remaining Time
;     - Leftover Time
;   - パワーアップ とらない
;     - Power-Ups Not Taken
;   - ミスをした
;     - Mistakes
;   - アイテム をこわした
;     - Items Destroyed
;   - ボムをからうち
;     - bomu wo karauchi
;     - Missed Hits
;     - Bombs Wasted
;   - ハート X こ
;     - Have X Hearts
;   - ごうけい
;     - Total

; tileset
.org 0x82632B4
.area 3910, 0
.import "build\BomberHall_t.bin"
.endarea

; maps
.org 0x8264200
.import "build\BomberHall_Main_m.bin"

.org 0x826A4D0
.import "build\BomberHall_Text_m.bin"

.org 0x826A6D0
.import "build\BomberHall_Numbers_m.bin"

.org 0x826A6FC
.import "build\BomberHall_Numbers2_m.bin"

; number placement
; - Floor X Cleared
.org 0x802F806
;add r2, 7*2
add r2, 6*2

; - Have X Hearts
.org 0x802F8A6
;add r2, 5*2
add r2, 8*2
