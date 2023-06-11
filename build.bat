
::
tools\g1.exe assets\BattleMenu.bmp build\BattleMenuTile.bin build\BattleMenuMap.bin
tools\lzss.exe -evo build\BattleMenuTile.bin

tools\c1.exe assets\BattleMenu.txt build\BattleMenuMap.bin build\BattleMenuMap.asm

tools\g2.exe assets\Font.bmp build\Font.bin

tools\g4 build\RMenu_t.bin^
 assets\RMenu_TextBox.bmp assets\RMenu_ExpBar2.bmp assets\RMenu_ExpBar1.bmp^
 assets\RMenu_Numbers.bmp assets\RMenu_Nav.bmp assets\RMenu_Items.bmp^
 assets\RMenu_Bombs.bmp assets\RMenu_Karabon.bmp assets\RMenu_Unequip1.bmp^
 assets\RMenu_Unequip2.bmp assets\RMenu_Armor1.bmp assets\RMenu_Armor2.bmp^
 assets\RMenu_Armor3.bmp assets\RMenu_Armor4.bmp
tools\lzss -evo build\RMenu_t.bin

tools\g4 build\SaveLoad_t.bin^
 assets\SaveLoad_TextBox.bmp^
 assets\SaveLoad_Other.bmp assets\SaveLoad_Equipment.bmp^
 assets\SaveLoad_Save.bmp assets\SaveLoad_Load.bmp^
 assets\SaveLoad_BorderBig.bmp assets\SaveLoad_BorderSmall.bmp
tools\lzss -evo build\SaveLoad_t.bin

tools\g4 build\Radar_t.bin^
 assets\Radar_Main.bmp assets\Radar_Icons.bmp assets\Radar_Numbers.bmp^
 assets\Radar_Arrows.bmp assets\Radar_MapOn.bmp assets\Radar_MapOff.bmp^
 assets\Radar_Text.bmp
tools\lzss -evo build\Radar_t.bin

tools\g4 build\Enc_t.bin^
 assets\Enc_Blank.bmp assets\Enc_Numbers.bmp assets\Enc_Arrows.bmp^
 assets\Enc_Main.bmp assets\Enc_Index.bmp^
 assets\Enc_01.bmp assets\Enc_02.bmp assets\Enc_03.bmp assets\Enc_04.bmp^
 assets\Enc_05.bmp assets\Enc_06.bmp assets\Enc_07.bmp assets\Enc_08.bmp^
 assets\Enc_09.bmp assets\Enc_10.bmp assets\Enc_11.bmp assets\Enc_12.bmp^
 assets\Enc_13.bmp assets\Enc_14.bmp assets\Enc_15.bmp assets\Enc_16.bmp^
 assets\Enc_17.bmp assets\Enc_18.bmp assets\Enc_19.bmp assets\Enc_20.bmp^
 assets\Enc_21.bmp assets\Enc_22.bmp assets\Enc_23.bmp assets\Enc_24.bmp^
 assets\Enc_25.bmp assets\Enc_26.bmp assets\Enc_27.bmp assets\Enc_28.bmp^
 assets\Enc_29.bmp assets\Enc_30.bmp assets\Enc_31.bmp assets\Enc_32.bmp^
 assets\Enc_Unk.bmp
tools\lzss -evo build\Enc_t.bin

tools\g4 build\Album_t.bin^
 assets\Album_TextBox.bmp assets\Album_Numbers.bmp^
 assets\Album_Main.bmp assets\Album_Box.bmp
tools\lzss -evo build\Album_t.bin

tools\g4 build\HUD_t.bin^
 assets\HUD_Misc.bmp assets\HUD_Bombs.bmp assets\HUD_Main.bmp^
 assets\HUD_Boss.bmp assets\HUD_Stars.bmp^
 assets\HUD_Flames.bmp assets\HUD_Flames2.bmp assets\HUD_Pause.bmp
tools\lzss -evo build\HUD_t.bin

tools\g4 build\Fusion_t.bin^
 assets\Fusion_Numbers.bmp assets\Fusion_TextBox.bmp assets\Fusion_Main.bmp
tools\lzss -evo build\Fusion_t.bin

tools\g4 build\GameOver_t.bin assets\GameOver.bmp
tools\lzss -evo build\GameOver_t.bin

tools\g4 build\HUD2_t.bin assets\HUD2_Main.bmp assets\HUD2_Pause.bmp
tools\lzss -evo build\HUD2_t.bin

tools\g4 build\BomberHall_t.bin^
 assets\BomberHall_Main.bmp assets\BomberHall_Text.bmp^
 assets\BomberHall_Numbers.bmp assets\BomberHall_Numbers2.bmp
tools\lzss -evo build\BomberHall_t.bin

tools\g4 build\BHallCert_t.bin^
 assets\BHallCert_Main.bmp assets\BHallCert_Portrait.bmp^
 assets\BHallCert_Numbers.bmp assets\BHallCert_Rank.bmp
tools\lzss -evo build\BHallCert_t.bin

tools\g4 build\BHallBoard_t.bin^
 assets\BHallBoard_Red.bmp assets\BHallBoard_Blue.bmp^
 assets\BHallBoard_Numbers.bmp assets\BHallBoard_Ranks.bmp
tools\lzss -evo build\BHallBoard_t.bin

::


tools\armips.exe build.asm -stat

:: ------
:: Script
:: ------

:: Tournament Stuff
::tools\Atlas jetters_eng.gba script\jetters_000.txt
::tools\Atlas jetters_eng.gba script\jetters_002.txt
::tools\Atlas jetters_eng.gba script\jetters_003.txt
::tools\Atlas jetters_eng.gba script\jetters_009.txt
::tools\Atlas jetters_eng.gba script\jetters_010.txt

:: Cutscenes
tools\Atlas jetters_eng.gba script\jetters_001.txt

:: Nonbiri, Ancient Nonbiri, Item Get
tools\Atlas jetters_eng.gba script\jetters_004.txt
:: Tokotoko, Signpost Kingdom
tools\Atlas jetters_eng.gba script\jetters_005.txt
:: Sekaseka
tools\Atlas jetters_eng.gba script\jetters_006.txt
:: Equipment, Karabon, and Item Descriptions; System Messages
tools\Atlas jetters_eng.gba script\jetters_008.txt
:: Item and Karabon Names
tools\Atlas jetters_eng.gba script\jetters_011.txt
:: Planets, Areas, Places
tools\Atlas jetters_eng.gba script\jetters_012.txt
:: Karabon Names
tools\Atlas jetters_eng.gba script\jetters_013.txt


tools\Atlas jetters_eng.gba script\jetters_007.txt


tools\flips --create --ips jetters.gba jetters_eng.gba jetters_eng.ips
tools\flips --create --bps-linear jetters.gba jetters_eng.gba jetters_eng.bps
tools\flips --create --bps-delta jetters.gba jetters_eng.gba jetters_eng_delta.bps

pause
