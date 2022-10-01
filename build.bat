
::
tools\g1.exe assets\BattleMenu.bmp build\BattleMenuTile.bin build\BattleMenuMap.bin
tools\lzss.exe -evo build\BattleMenuTile.bin

tools\c1.exe assets\BattleMenu.txt build\BattleMenuMap.bin build\BattleMenuMap.asm

tools\g2.exe assets\Font.bmp build\Font.bin

::


tools\armips.exe build.asm -stat

::tools\Atlas jetters_eng.gba script\test_script.txt
tools\Atlas jetters_eng.gba script\jetters_001.txt
::tools\Atlas jetters_eng.gba script\jetters_002.txt
tools\Atlas jetters_eng.gba script\jetters_004.txt
tools\Atlas jetters_eng.gba script\jetters_008.txt
tools\Atlas jetters_eng.gba script\jetters_011.txt
tools\Atlas jetters_eng.gba script\jetters_012.txt
tools\Atlas jetters_eng.gba script\jetters_013.txt

tools\flips --create --ips jetters.gba jetters_eng.gba jetters_eng.ips
tools\flips --create --bps-linear jetters.gba jetters_eng.gba jetters_eng.bps
tools\flips --create --bps-delta jetters.gba jetters_eng.gba jetters_eng_delta.bps

pause
