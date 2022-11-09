
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

tools\g4 build\Enc_t.bin assets\Enc_Blank.bmp assets\Enc_Main.bmp assets\Enc_Index.bmp^
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


::


tools\armips.exe build.asm -stat

::tools\Atlas jetters_eng.gba script\test_script.txt
tools\Atlas jetters_eng.gba script\jetters_001.txt
::tools\Atlas jetters_eng.gba script\jetters_002.txt
tools\Atlas jetters_eng.gba script\jetters_008.txt
tools\Atlas jetters_eng.gba script\jetters_011.txt
tools\Atlas jetters_eng.gba script\jetters_012.txt


tools\Atlas jetters_eng.gba script\jetters_004.txt
tools\Atlas jetters_eng.gba script\jetters_005.txt
tools\Atlas jetters_eng.gba script\jetters_006.txt
tools\Atlas jetters_eng.gba script\jetters_007.txt
tools\Atlas jetters_eng.gba script\jetters_013.txt

tools\flips --create --ips jetters.gba jetters_eng.gba jetters_eng.ips
tools\flips --create --bps-linear jetters.gba jetters_eng.gba jetters_eng.bps
tools\flips --create --bps-delta jetters.gba jetters_eng.gba jetters_eng_delta.bps

pause
