; Enc.asm
; Teod 2022-11-03

; tileset
.org 0x8283CCC
.area 5603, 0
.import "build\Enc_t.bin"
.endarea

; maps
.org 0x82852B4
.import "build\Enc_Main_m.bin"

.org 0x8285764
.import "build\Enc_Index_m.bin"

.org 0x8285BC4
.import "build\Enc_Blank_m.bin"

.org 0x8285782 :: .import "build\Enc_01_m.bin"
.org 0x828579E :: .import "build\Enc_02_m.bin"
.org 0x82857BA :: .import "build\Enc_03_m.bin"
.org 0x82857D6 :: .import "build\Enc_04_m.bin"
.org 0x828580E :: .import "build\Enc_05_m.bin"
.org 0x828582A :: .import "build\Enc_06_m.bin"
.org 0x8285846 :: .import "build\Enc_07_m.bin"
.org 0x8285862 :: .import "build\Enc_08_m.bin"
.org 0x828589A :: .import "build\Enc_09_m.bin"
.org 0x82858B6 :: .import "build\Enc_10_m.bin"
.org 0x82858D2 :: .import "build\Enc_11_m.bin"
.org 0x82858EE :: .import "build\Enc_12_m.bin"
.org 0x8285926 :: .import "build\Enc_13_m.bin"
.org 0x8285942 :: .import "build\Enc_14_m.bin"
.org 0x828595E :: .import "build\Enc_15_m.bin"
.org 0x828597A :: .import "build\Enc_16_m.bin"
.org 0x82859B2 :: .import "build\Enc_17_m.bin"
.org 0x82859CE :: .import "build\Enc_18_m.bin"
.org 0x82859EA :: .import "build\Enc_19_m.bin"
.org 0x8285A06 :: .import "build\Enc_20_m.bin"
.org 0x8285A3E :: .import "build\Enc_21_m.bin"
.org 0x8285A5A :: .import "build\Enc_22_m.bin"
.org 0x8285A76 :: .import "build\Enc_23_m.bin"
.org 0x8285A92 :: .import "build\Enc_24_m.bin"
.org 0x8285ACA :: .import "build\Enc_25_m.bin"
.org 0x8285AE6 :: .import "build\Enc_26_m.bin"
.org 0x8285B02 :: .import "build\Enc_27_m.bin"
.org 0x8285B1E :: .import "build\Enc_28_m.bin"
.org 0x8285B56 :: .import "build\Enc_29_m.bin"
.org 0x8285B72 :: .import "build\Enc_30_m.bin"
.org 0x8285B8E :: .import "build\Enc_31_m.bin"
.org 0x8285BAA :: .import "build\Enc_32_m.bin"
.org 0x8285766 :: .import "build\Enc_Unk_m.bin"
