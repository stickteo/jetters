; BattleMenu.asm
; teod



; digits map
; ----------
.org 0x81B7D00
@@A equ 0x7033
.dh @@A  , @@A+0x10, @@A+1, @@A+0x11, @@A+2, @@A+0x12, @@A+3, @@A+0x13
.dh @@A+4, @@A+0x14, @@A+5, @@A+0x15, @@A+6, @@A+0x16, @@A+7, @@A+0x17
.dh @@A+8, @@A+0x18, @@A+9, @@A+0x19

; versus player
; -------------
; erase 3 rows instead of 2 rows
.org 0x800D78E
; cmp r4, 1
cmp r4, 2

; map array
; ---------
.org 0x81B77C0
; 0
.dw BM_Null
; 1
.dw BM_Normal, BM_Color, BM_Dodge, BM_Escape, BM_Barom
; 6
.dw BM_P1, BM_P2, BM_P3, BM_P4
; 10
.dw BM_Human, BM_Com, BM_Off
; 13
.dw BM_Team, BM_Points, BM_Time, BM_ComDif, BM_Sudden, BM_Skulls, BM_Bonus, BM_Revenge
; 21
.dw BM_Solo, BM_Team2
; 23
.dw BM_1, BM_2, BM_3, BM_4, BM_5
; 28
.dw BM_1m, BM_2m, BM_3m, BM_5m, BM_Inf
; 33
.dw BM_Weak, BM_Normal2, BM_Strong
; 36
.dw BM_On, BM_Off2, BM_Random
; 39
.dw BM_Burn, BM_Stay, BM_Super
; 42
.dw BM_VS, BM_VSP1, BM_VSP2, BM_VSP3, BM_VSP4
; 47
.dw BM_Null2
; 48
.dw BM_StanNorm, BM_StanWide, BM_Trolley, BM_SeeSaw, BM_SpotLight
; 53
.dw BM_ItemSet, BM_HandiSet, BM_LItem, BM_HandiR
; 57
.dw BM_Confirm, BM_Heart, BM_NoHeart
; 60
.dw BM_SetHandi
; 61
.dw BM_Prompt, BM_Prompt, BM_AStart, BM_BBack
; 65
.dw BM_SetItems, BM_Set, BM_Left, BM_ItemIcons
; 69
.dw BM_Off3, BM_IncDec, BM_Cancel

;#72, 0, 147, 16, 5
;#73, 0, 152, 10, 13
;#74, 0, 165, 30, 32
;#75, 0, 197, 5, 16
;#76, 0, 213, 5, 16
;#77, 0, 229, 5, 16
;#78, 0, 245, 5, 16
.skip 7*4

; 79
.dw BM_PointMatch, BM_M1, BM_M2, BM_M3, BM_M4, BM_M5

; 85
.dw BM_Win1, BM_Win2, BM_Win3

; 88
.dw BM_50, BM_100, BM_200, BM_300, BM_500, BM_VictoryPoint

;#94, 0, 289, 12, 7
;#95, 0, 296, 12, 7
;#96, 0, 303, 1, 2
;#97, 0, 305, 1, 2
;#98, 0, 307, 1, 2
.skip 5*4

; 99
.dw BM_InfoR
