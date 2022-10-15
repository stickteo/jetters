

; tileset
.org 0x8286CE8
.area 3303, 0
.import "build\SaveLoad_t.bin"
.endarea

; maps
.org 0x82879D4
.import "build\SaveLoad_Save_m.bin"

.org 0x8287E84
.import "build\SaveLoad_Load_m.bin"

.org 0x8288334
.import "build\SaveLoad_BorderBig_m.bin"

.org 0x8288460
.import "build\SaveLoad_BorderSmall_m.bin"

.org 0x8270050
.import "build\SaveLoad_Equipment_m.bin"

.org 0x82700B8
.import "build\SaveLoad_Other_m.bin"

.org 0x828A8EC
.import "build\SaveLoad_TextBox_m.bin"
