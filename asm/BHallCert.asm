; BHallCert.asm
; teod 22-12-30

; notes
; - tileset, 12959 bytes
;   8264880
; - palette, offset 0x80, 6*16*2
;   8264700
; - main map, 32*20*2
;   8267B24
; - numbers, 1*2 * 11 * 2
;   82684D4
; - portrait, 8*10 * 4 * 2
;   8268254
; - rank, 5*4 * 14 * 2
;   8268024

; - scoring
;   - score_20362D4
;   - scoreRank_8269EB8
;     - an array of score cutoffs

; - on ranks
;   https://en.wikipedia.org/wiki/Dan_(rank)#Ranks_in_Japanese
;   https://en.wikipedia.org/wiki/Ky%C5%AB
;   https://en.wikipedia.org/wiki/Japanese_numerals
;   https://tvtropes.org/pmwiki/pmwiki.php/Main/KyuAndDanRanks

; - 修行結果
;   training results
; - とくてん
;   points
; - 

; - fonts
;   DM Serif Display

; tileset
.org 0x8264880
.area 12959, 0
.import "build\BHallCert_t.bin"
.endarea

; maps
.org 0x8267B24
.import "build\BHallCert_Main_m.bin"

.org 0x8268024
.import "build\BHallCert_Rank_m.bin"

.org 0x8268254
.import "build\BHallCert_Portrait_m.bin"

.org 0x82684D4
.import "build\BHallCert_Numbers_m.bin"

; ; sprite params
; buffer
; 03005130, 0x400 bytes

; final buffer
; 03004530, 0x400 bytes

; todo:
; - LoadSprite_8044A34
;   - relates palettes to sprite sets
;   - struct: tileset, #tiles, palette, #palettes

; - Get Set, Ready!
;   - 0x80B543C