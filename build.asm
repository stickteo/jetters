
.gba

.open "jetters.gba","jetters_eng.gba",0x8000000


; Free Space
;.defineregion 0x8420000, 0xE0000, 0x00
;.org 0x8420000 :: .region 0xE0000,0x00 :: .endregion
.defineregion 0x8460000, 0x1A0000, 0x00


.include "asm\Font.asm"
.include "asm\SmallVWF.asm"
;.include "asm\ItemNamesVWF.asm"
.include "asm\vwf_routines.asm"
.include "asm\vwf_name_card.asm"
.include "asm\vwf_item_fusion.asm"


; Battle Menu Tileset
.org 0x81B04D4
.import "build\BattleMenuTile.bin"
.include "build\BattleMenuMap.asm"
.include "asm\BattleMenu.asm"

.include "asm\RMenu.asm"

.close
