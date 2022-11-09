; Radar.asm
; Teod 2022-11-02

; tileset
.org 0x82802B8
.area 2569, 0
.import "build\Radar_t.bin"
.endarea

; maps
.org 0x827FD88
.import "build\Radar_Main_m.bin"

.org 0x8302D30
.import "build\Radar_MapOn_m.bin"

.org 0x8302F30
.import "build\Radar_MapOff_m.bin"

.org 0x8303130
.import "build\Radar_Text_m.bin"

.org 0x8303180
.import "build\Radar_Icons_m.bin"

.org 0x8303190
.import "build\Radar_Numbers_m.bin"

.org 0x830319C
.import "build\Radar_Arrows_m.bin"
