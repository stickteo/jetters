;.open "test.bin", 0
.gba

.create "extract\BattleMap.bin", 0
.org 0

; fixed tiles not referenced in map
; background
.dh 0x2000, 0x3001, 0x3002, 0x3003, 0x3004, 0x3005, 0x3006, 0x3007
.dh 0x2008, 0x2009, 0x200A, 0x200B, 0x200C, 0x200D, 0x200E, 0x200F, 0xFFFE
.dh 0x3010, 0x3011, 0x3012, 0x3013, 0x3014, 0x3015, 0x3016, 0x3017
.dh 0x2018, 0x2019, 0x201A, 0x201B, 0x201C, 0x201D, 0x201E, 0x201F, 0xFFFE

; windows
.dh 0x1020, 0x1021, 0x1022, 0x1023, 0x1024, 0x1025, 0x1026, 0x1027
.dh 0x1028, 0x4029, 0x402A, 0x402B, 0x402C, 0x402D, 0x402E, 0x402F, 0xFFFE

; numbers
.dh 0x4030, 0x4031, 0x4032, 0x7134, 0x7135, 0x7136, 0x7137, 0x7138
.dh 0x7139, 0x713A, 0x713B, 0x713C, 0x713D, 0x713F, 0x7150, 0x7151, 0xFFFE

.dh 0x4040, 0x4041, 0x4042, 0x7144, 0x7145, 0x7146, 0x7147, 0x7148
.dh 0x7149, 0x714A, 0x714B, 0x714C, 0x714D, 0x714F, 0x7160, 0x7161, 0xFFFF

.import "jetters.gba", 0x1B5D24, 0x1A9C

.close

.create "extract\BattleMenuPal.bin", 0
.org 0
.import "jetters.gba", 0x1B02D4, 0x1A0
; green = 11 1110 0000
; magenta = 111 1100 0001 1111
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.import "jetters.gba", 0x1B5258, 0x20
.close

;.create "extract\VictoryTileBG.bin", 0
;.org 0
;.import "extract\VictoryTileBG1.bin"
;.org 0x4000
;.import "extract\VictoryTileBG2.bin"
;.close

.create "extract\BattleVictoryPal.bin", 0
.org 0
.import "jetters.gba", 0x1B4F04, 0xE0

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.close

.create "extract\BattlePlayPal.bin", 0
.org 0
.dh 0x03E0
.import "jetters.gba", 0x1BA4AA, 0x7E

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.close

; import16
; --------------------
; fn = file name
; p = position
; n = number of halfs
; a = increment amount
.macro import16,fn,p,n,a
  .if n<=0
  .elseif n==1
    .dh readu16(fn,p)+a
  .elseif n==2
    .dh readu16(fn,p)+a,readu16(fn,p+2)+a
  .elseif n==3
    .dh readu16(fn,p)+a,readu16(fn,p+2)+a,readu16(fn,p+4)+a
  .elseif n==4
    .dh readu16(fn,p)+a,readu16(fn,p+2)+a,readu16(fn,p+4)+a,readu16(fn,p+6)+a
  .elseif n==5
    .dh readu16(fn,p  )+a,readu16(fn,p+ 2)+a,readu16(fn,p+ 4)+a,readu16(fn,p+ 6)+a
    .dh readu16(fn,p+8)+a
  .elseif n==6
    .dh readu16(fn,p  )+a,readu16(fn,p+ 2)+a,readu16(fn,p+ 4)+a,readu16(fn,p+ 6)+a
    .dh readu16(fn,p+8)+a,readu16(fn,p+10)+a
  .elseif n==7
    .dh readu16(fn,p  )+a,readu16(fn,p+ 2)+a,readu16(fn,p+ 4)+a,readu16(fn,p+ 6)+a
    .dh readu16(fn,p+8)+a,readu16(fn,p+10)+a,readu16(fn,p+12)+a
  .elseif n==8
    .dh readu16(fn,p  )+a,readu16(fn,p+ 2)+a,readu16(fn,p+ 4)+a,readu16(fn,p+ 6)+a
    .dh readu16(fn,p+8)+a,readu16(fn,p+10)+a,readu16(fn,p+12)+a,readu16(fn,p+14)+a
  .elseif (n&1)==0
    ;.notice "p:"+(p)+" n:"+(n)
    import16 fn,(p),(n/2),a
	import16 fn,(p+n),(n/2),a
  .else
    ;.notice "p:"+(p)+" n:"+(n)
	.dh readu16(fn,p)+a
    import16 fn,(p+2),(n-1),a
  .endif
.endmacro

; HUD
.create "extract\HUD_p.bin", 0 :: .org 0
.import "jetters.gba", 0x261144, 2*32
.import "jetters.gba", 0x262514, 2*4*16
.import "jetters.gba", 0x262494, 2*4*16
.close

.create "extract\HUD_Pause_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x262594, 2*8*3 :: .close
.create "extract\HUD_Flames_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x26B498, 2*36*4 :: .close
.create "extract\HUD_Flames2_m.bin", 0 :: .org 0 :: import16 "jetters.gba", 0x26B498, (36*4), 64  :: .close
.create "extract\HUD_Main_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x261F18, 2*64 :: .close
.create "extract\HUD_Stars_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2632A0, 2*10 :: .close
.create "extract\HUD_Bombs_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x263278, 2*20 :: .close
.create "extract\HUD_Boss_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x304720, 2*4 :: .close

.create "extract\HUD_Misc_m.bin", 0 :: .org 0
; numbers
.dh 0x1094, 0x1095, 0x1096, 0x1097, 0x1098
.dh 0x1099, 0x109A, 0x109B, 0x109C, 0x109D
; time ticks
.dh 0x1067, 0x1068
; hearts
.dh 0x102B, 0x100B
.dh 0
.close



; Fusion
.create "extract\Fusion_p.bin", 0 :: .org 0
.import "jetters.gba", 0x261144, 2*32

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F

.import "jetters.gba", 0x1D7584, 2*192
.close

.create "extract\Fusion_Main_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1D7A38, 2*30*20 :: .close
.create "extract\Fusion_Numbers_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E07B8, 2*10 :: .close
.create "extract\Fusion_TextBox_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E07E0, 2*15 :: .close
.create "extract\Fusion_Gradient_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1D8A44, 2*30*20 :: .close


; Scenes
.create "extract\1E555C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E555C, 2*32*20 :: .close; m000
.create "extract\1E5A5C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E5A5C, 2*28*20 :: .close; m001
.create "extract\1E8764_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E8764, 2*30*32 :: .close; m002
.create "extract\1E8EE4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E8EE4, 2*30*8 :: .close; m003
.create "extract\1EB064_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EB064, 2*30*12 :: .close; m004
.create "extract\1EB334_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EB334, 2*30*8 :: .close; m005
.create "extract\1ED66C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1ED66C, 2*30*12 :: .close; m006
.create "extract\1ED93C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1ED93C, 2*30*8 :: .close; m007
.create "extract\1EE2F0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EE2F0, 2*30*20 :: .close; m008
.create "extract\1F011C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F011C, 2*30*20 :: .close; m009
.create "extract\1F19E0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F19E0, 2*30*20 :: .close; m010
.create "extract\1F24B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F24B4, 2*30*20 :: .close; m011
.create "extract\1F39E8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F39E8, 2*30*20 :: .close; m012
.create "extract\1F5030_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F5030, 2*30*20 :: .close; m013
.create "extract\1F54E0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F54E0, 2*11*9 :: .close; m014
.create "extract\1F55A6_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F55A6, 2*11*9 :: .close; m015
.create "extract\1F5FB8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F5FB8, 2*30*20 :: .close; m016
.create "extract\1F7438_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F7438, 2*30*20 :: .close; m017
.create "extract\1E2F58_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E2F58, 2*30*5 :: .close; m018
.create "extract\1F8BD8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F8BD8, 2*32*20 :: .close; m019
.create "extract\1F90D8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F90D8, 2*2*20 :: .close; m020
.create "extract\21ED4C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21ED4C, 2*32*20 :: .close; m021
.create "extract\2203C8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2203C8, 2*30*20 :: .close; m022
.create "extract\222F80_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x222F80, 2*30*20 :: .close; m023
.create "extract\224D48_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x224D48, 2*30*20 :: .close; m024
.create "extract\226BF8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x226BF8, 2*30*20 :: .close; m025
.create "extract\2275BC_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2275BC, 2*30*20 :: .close; m026
.create "extract\228064_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x228064, 2*30*20 :: .close; m027
.create "extract\228D8C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x228D8C, 2*30*20 :: .close; m028
.create "extract\229C20_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x229C20, 2*30*20 :: .close; m029
.create "extract\22B148_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22B148, 2*30*20 :: .close; m030
.create "extract\22CB68_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22CB68, 2*30*20 :: .close; m031
.create "extract\22D568_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22D568, 2*32*25 :: .close; m032
.create "extract\22DBA8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22DBA8, 2*11*25 :: .close; m033
.create "extract\1F90D8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F90D8, 2*2*20 :: .close; m034
;.create "extract\F8000000_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0xF8000000, 2*32*3 :: .close; m035
.create "extract\22FA78_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22FA78, 2*32*25 :: .close; m036
.create "extract\2300B8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2300B8, 2*11*25 :: .close; m037
.create "extract\2302DE_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2302DE, 2*4*4 :: .close; m038
.create "extract\2302FE_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2302FE, 2*4*4 :: .close; m039
.create "extract\23065C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23065C, 2*32*20 :: .close; m040
.create "extract\230B5C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x230B5C, 2*32*20 :: .close; m041
.create "extract\232BF8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x232BF8, 2*32*20 :: .close; m042
.create "extract\2344B8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2344B8, 2*32*20 :: .close; m043
.create "extract\235B84_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x235B84, 2*30*15 :: .close; m044
.create "extract\235F08_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x235F08, 2*14*9 :: .close; m045
.create "extract\236004_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x236004, 2*14*9 :: .close; m046
.create "extract\236CA0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x236CA0, 2*30*20 :: .close; m047
.create "extract\237DEC_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x237DEC, 2*30*20 :: .close; m048
.create "extract\238FE8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x238FE8, 2*30*20 :: .close; m049
;.create "extract\F8000000_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0xF8000000, 2*32*20 :: .close; m050
;.create "extract\F8000000_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0xF8000000, 2*32*20 :: .close; m051
.create "extract\1E2F58_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E2F58, 2*30*5 :: .close; m052
.create "extract\23D1D8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23D1D8, 2*30*32 :: .close; m053
.create "extract\23D958_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23D958, 2*30*3 :: .close; m054
.create "extract\240034_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x240034, 2*30*20 :: .close; m055
.create "extract\1FC7D8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1FC7D8, 2*30*32 :: .close; m056
.create "extract\1FCF58_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1FCF58, 2*30*8 :: .close; m057
.create "extract\200260_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x200260, 2*32*20 :: .close; m058
.create "extract\200760_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x200760, 2*28*20 :: .close; m059
.create "extract\201BB0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x201BB0, 2*32*20 :: .close; m060
.create "extract\207974_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x207974, 2*32*20 :: .close; m061
.create "extract\202AAC_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x202AAC, 2*30*20 :: .close; m062
.create "extract\20387C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20387C, 2*30*20 :: .close; m063
.create "extract\2059B0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2059B0, 2*30*20 :: .close; m064
.create "extract\205E60_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x205E60, 2*30*20 :: .close; m065
.create "extract\206310_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x206310, 2*30*20 :: .close; m066
.create "extract\20A060_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20A060, 2*30*20 :: .close; m067
.create "extract\20D084_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20D084, 2*30*20 :: .close; m068
.create "extract\20D534_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20D534, 2*30*20 :: .close; m069
.create "extract\20D9E4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20D9E4, 2*30*20 :: .close; m070
.create "extract\20F158_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20F158, 2*30*32 :: .close; m071
.create "extract\20F8D8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20F8D8, 2*30*1 :: .close; m072
.create "extract\211EF4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x211EF4, 2*30*32 :: .close; m073
.create "extract\212674_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x212674, 2*30*1 :: .close; m074
.create "extract\2126B0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2126B0, 2*30*20 :: .close; m075
.create "extract\208CC8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x208CC8, 2*32*20 :: .close; m076
.create "extract\212C1C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x212C1C, 2*32*20 :: .close; m077
.create "extract\21311C_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21311C, 2*32*20 :: .close; m078
.create "extract\215948_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x215948, 2*32*22 :: .close; m079
.create "extract\215EC8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x215EC8, 2*19*22 :: .close; m080
.create "extract\217BB8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x217BB8, 2*30*20 :: .close; m081
.create "extract\218970_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x218970, 2*30*20 :: .close; m082
.create "extract\218E20_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x218E20, 2*30*20 :: .close; m083
.create "extract\21CA38_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21CA38, 2*30*20 :: .close; m084
.create "extract\21CEE8_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21CEE8, 2*30*20 :: .close; m085
.create "extract\21D398_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21D398, 2*30*20 :: .close; m086
.create "extract\2447C4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2447C4, 2*30*20 :: .close; m087
.create "extract\244C74_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x244C74, 2*30*20 :: .close; m088
.create "extract\245254_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x245254, 2*30*20 :: .close; m089
.create "extract\249918_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x249918, 2*30*20 :: .close; m090
.create "extract\24BF60_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24BF60, 2*30*20 :: .close; m091
.create "extract\24C410_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24C410, 2*30*20 :: .close; m092
.create "extract\24C8C0_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24C8C0, 2*30*20 :: .close; m093
.create "extract\24CD70_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24CD70, 2*30*20 :: .close; m094
.create "extract\24D220_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24D220, 2*30*20 :: .close; m095
.create "extract\24DB78_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24DB78, 2*32*20 :: .close; m096
.create "extract\24E078_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24E078, 2*32*20 :: .close; m097
.create "extract\251870_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x251870, 2*32*20 :: .close; m098
.create "extract\251D70_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x251D70, 2*32*20 :: .close; m099
.create "extract\252270_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x252270, 2*32*20 :: .close; m100
.create "extract\252770_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x252770, 2*32*20 :: .close; m101
.create "extract\257AB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x257AB4, 2*32*20 :: .close; m102
.create "extract\257FB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x257FB4, 2*32*20 :: .close; m103
.create "extract\2584B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2584B4, 2*32*20 :: .close; m104
.create "extract\2589B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2589B4, 2*32*20 :: .close; m105
.create "extract\258EB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x258EB4, 2*32*20 :: .close; m106
.create "extract\2593B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2593B4, 2*32*20 :: .close; m107
.create "extract\2598B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2598B4, 2*32*20 :: .close; m108
.create "extract\259DB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x259DB4, 2*32*20 :: .close; m109
.create "extract\25A2B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25A2B4, 2*32*20 :: .close; m110
.create "extract\25A7B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25A7B4, 2*32*20 :: .close; m111
.create "extract\25ACB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25ACB4, 2*32*10 :: .close; m112
.create "extract\25AF34_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25AF34, 2*32*10 :: .close; m113
.create "extract\25B1B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25B1B4, 2*32*10 :: .close; m114
.create "extract\25B434_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25B434, 2*32*10 :: .close; m115
.create "extract\25B6B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25B6B4, 2*32*10 :: .close; m116
.create "extract\25B934_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25B934, 2*32*10 :: .close; m117
.create "extract\25BBB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25BBB4, 2*32*20 :: .close; m118
.create "extract\25C0B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25C0B4, 2*32*20 :: .close; m119
.create "extract\25C5B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25C5B4, 2*32*20 :: .close; m120
.create "extract\25CAB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25CAB4, 2*32*20 :: .close; m121
.create "extract\25CFB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25CFB4, 2*32*20 :: .close; m122
.create "extract\25D4B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25D4B4, 2*32*20 :: .close; m123
.create "extract\25D9B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25D9B4, 2*32*20 :: .close; m124
.create "extract\25DEB4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25DEB4, 2*32*20 :: .close; m125
.create "extract\25E3B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25E3B4, 2*32*20 :: .close; m126
.create "extract\25E8B4_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25E8B4, 2*32*20 :: .close; m127
.create "extract\1E3084_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E3084, 0xA0 :: .close; p00
.create "extract\1E5EBC_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E5EBC, 0xA0 :: .close; p01
.create "extract\1E90C4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E90C4, 0xC0 :: .close; p02
.create "extract\1EB514_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EB514, 0xC0 :: .close; p03
.create "extract\1EDB1C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EDB1C, 0x20 :: .close; p04
.create "extract\1EE7A0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1EE7A0, 0x100 :: .close; p05
.create "extract\1F05CC_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F05CC, 0x60 :: .close; p06
.create "extract\1F0978_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F0978, 0x20 :: .close; p07
.create "extract\1F1E90_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F1E90, 0x20 :: .close; p08
.create "extract\1F2964_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F2964, 0x80 :: .close; p09
.create "extract\1F3E98_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F3E98, 0x80 :: .close; p10
.create "extract\1F566C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F566C, 0x20 :: .close; p11
.create "extract\1F5924_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F5924, 0x20 :: .close; p12
.create "extract\1F6468_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F6468, 0xE0 :: .close; p13
.create "extract\1F78E8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F78E8, 0x80 :: .close; p14
.create "extract\1E2EB4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1E2EB4, 0x20 :: .close; p15
.create "extract\1F7DE0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F7DE0, 0x60 :: .close; p16
.create "extract\1F9128_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F9128, 0x20 :: .close; p17
.create "extract\21D848_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21D848, 0x20 :: .close; p18
.create "extract\21F24C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21F24C, 0x60 :: .close; p19
.create "extract\21FB88_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21FB88, 0x20 :: .close; p20
.create "extract\220878_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x220878, 0x20 :: .close; p21
.create "extract\223430_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x223430, 0x60 :: .close; p22
.create "extract\223FD4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x223FD4, 0x20 :: .close; p23
.create "extract\2251F8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2251F8, 0x20 :: .close; p24
.create "extract\225E04_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x225E04, 0x80 :: .close; p25
.create "extract\2270A8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2270A8, 0x20 :: .close; p26
.create "extract\227A6C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x227A6C, 0x20 :: .close; p27
.create "extract\228514_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x228514, 0x20 :: .close; p28
.create "extract\22923C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22923C, 0x20 :: .close; p29
.create "extract\22A0D0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22A0D0, 0x80 :: .close; p30
.create "extract\22B5F8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22B5F8, 0x140 :: .close; p31
.create "extract\22D018_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22D018, 0x20 :: .close; p32
.create "extract\22D248_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22D248, 0x20 :: .close; p33
.create "extract\22DDCE_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x22DDCE, 0x80 :: .close; p34
.create "extract\23031E_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23031E, 0x40 :: .close; p35
.create "extract\23105C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23105C, 0xC0 :: .close; p36
.create "extract\2330F8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2330F8, 0xE0 :: .close; p37
.create "extract\2349B8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2349B8, 0x80 :: .close; p38
.create "extract\236100_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x236100, 0x40 :: .close; p39
.create "extract\237150_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x237150, 0x40 :: .close; p40
.create "extract\23829C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23829C, 0x40 :: .close; p41
.create "extract\239498_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x239498, 0x20 :: .close; p42
.create "extract\23952C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23952C, 0x140 :: .close; p43
.create "extract\23DA0C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23DA0C, 0x40 :: .close; p44
.create "extract\23EBC8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x23EBC8, 0x40 :: .close; p45
.create "extract\2404E4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2404E4, 0x20 :: .close; p46
.create "extract\240EAC_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x240EAC, 0x20 :: .close; p47
.create "extract\1F9284_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1F9284, 0x20 :: .close; p48
.create "extract\1FD138_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1FD138, 0x80 :: .close; p49
.create "extract\1FD854_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1FD854, 0x80 :: .close; p50
.create "extract\1FDE58_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x1FDE58, 0xC0 :: .close; p51
.create "extract\200BC0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x200BC0, 0xA0 :: .close; p52
.create "extract\206C64_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x206C64, 0x80 :: .close; p53
.create "extract\2082D4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2082D4, 0x20 :: .close; p54
.create "extract\2020B0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2020B0, 0xC0 :: .close; p55
.create "extract\202F5C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x202F5C, 0x60 :: .close; p56
.create "extract\203D2C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x203D2C, 0xA0 :: .close; p57
.create "extract\2067C0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2067C0, 0x40 :: .close; p58
.create "extract\2091C8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2091C8, 0x80 :: .close; p59
.create "extract\20A510_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20A510, 0x80 :: .close; p60
.create "extract\20DE94_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20DE94, 0x20 :: .close; p61
.create "extract\20F914_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x20F914, 0xA0 :: .close; p62
.create "extract\2087CC_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2087CC, 0x80 :: .close; p63
.create "extract\212B60_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x212B60, 0x40 :: .close; p64
.create "extract\21361C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21361C, 0xA0 :: .close; p65
.create "extract\21620C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21620C, 0x20 :: .close; p66
.create "extract\218068_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x218068, 0x20 :: .close; p67
.create "extract\2192D0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2192D0, 0xA0 :: .close; p68
.create "extract\21A9F4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x21A9F4, 0x100 :: .close; p69
.create "extract\2411A4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2411A4, 0x1E0 :: .close; p70
.create "extract\245124_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x245124, 0x20 :: .close; p71
.create "extract\245704_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x245704, 0x80 :: .close; p72
.create "extract\247380_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x247380, 0x100 :: .close; p73
.create "extract\2491D4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2491D4, 0x40 :: .close; p74
.create "extract\249DC8_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x249DC8, 0xE0 :: .close; p75
.create "extract\24D6D0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24D6D0, 0x20 :: .close; p76
.create "extract\24D858_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24D858, 0x20 :: .close; p77
.create "extract\25118C_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25118C, 0x20 :: .close; p78
.create "extract\252C70_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x252C70, 0x40 :: .close; p79
.create "extract\24E578_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24E578, 0x40 :: .close; p80
.create "extract\24EF68_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x24EF68, 0x40 :: .close; p81
.create "extract\250EF0_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x250EF0, 0x60 :: .close; p82
.create "extract\25EDB4_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x25EDB4, 0x20 :: .close; p83


; HUD2
.create "extract\HUD2_p.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2625C4, 32*2 :: .close

.create "extract\HUD2_Main_m.bin", 0
.org 0
.dh  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15

.dh 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31

.dh 32, 33, 34, 35, 36, 37, 38, 39, 40
.dh 0x1029, 0x002A, 0x002B, 0x002C, 0x002D, 0x102E, 0x002F

.dh 0x1030, 0x1031, 0x1032, 0x1033, 0x1034, 0x1035, 0x1036, 0x1037
.dh 0x1038, 0x1039, 0x103A, 0x103B, 0x103C, 0x103D, 0x103E, 0x103F

.dh 0x1040, 0x1041,      0,      0,      0,      0,      0,      0
.dh      0,      0,      0,      0,      0,      0,      0,      0
.close

.create "extract\HUD2_Pause_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x262D90, 8*3*2 :: .close

; BomberHall
.create "extract\BomberHall_p.bin", 0 :: .org 0
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 0
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 1
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 2
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 3
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.import "jetters.gba", 0x182E2C, 6*32
.close

.create "extract\BomberHall_Main_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x264200, 32*20*2 :: .close
.create "extract\BomberHall_Text_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x26A4D0, 16*16*2 :: .close
.create "extract\BomberHall_Numbers_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x26A6D0, 1*2*11*2 :: .close
.create "extract\BomberHall_Numbers2_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x26A6FC, 2*2*7*2 :: .close

; BHallCert
.create "extract\BHallCert_p.bin", 0 :: .org 0
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 0
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 1
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 2
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F; 3
.dh 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F, 0x03E0, 0x7C1F
.import "jetters.gba", 0x264700, 6*32
.close

.create "extract\BHallCert_Main_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x267B24, 32*20*2 :: .close
.create "extract\BHallCert_Numbers_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2684D4, 1*2*11*2 :: .close
.create "extract\BHallCert_Portrait_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x268254, 8*10*4*2 :: .close
.create "extract\BHallCert_Rank_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x268024, 5*4*14*2 :: .close

; BHallBoard
.create "extract\BHallBoard_p.bin", 0 :: .org 0
.import "jetters.gba", 0x268500, 3*32
.close

.create "extract\BHallBoard_Red_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2693D0, 32*20*2 :: .close
.create "extract\BHallBoard_Blue_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x269978, 32*20*2 :: .close
.create "extract\BHallBoard_Ranks_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x269908, 2*2*14*2 :: .close
.create "extract\BHallBoard_Numbers_m.bin", 0 :: .org 0 :: .import "jetters.gba", 0x2698D0, 1*2*14*2 :: .close

