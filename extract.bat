
mkdir extract

:: decompress
tools\gbamdc.exe -e jetters.gba extract\BattleMenuTile.bin 1B04D4
:: tools\gbamdc.exe -e jetters.gba extract\BattleTileBGText.bin 1B5278
:: tools\gbamdc.exe -e jetters.gba extract\BattleTileSprite.bin 1B4488

tools\gbamdc.exe -e jetters.gba extract\BattleVictory1Tile.bin 1A77F8
tools\gbamdc.exe -e jetters.gba extract\BattleVictory2Tile.bin 1A6C74

tools\gbamdc.exe -e jetters.gba extract\BattlePlayTile.bin 1BA598

:: copy
tools\armips.exe extract.asm

:: process
tools\e1.exe extract\BattleMenuPal.bin extract\BattleMap.bin extract\BattleMenuTile.bin extract\BattleMenu.bmp extract\BattleMenu.txt
tools\e1.exe extract\BattleVictoryPal.bin extract\BattleMap.bin extract\BattleVictory1Tile.bin extract\BattleVictory1.bmp extract\BattleVictory1.txt
tools\e1.exe extract\BattleVictoryPal.bin extract\BattleMap.bin extract\BattleVictory2Tile.bin extract\BattleVictory2.bmp extract\BattleVictory2.txt
tools\e1.exe extract\BattlePlayPal.bin extract\BattleMap.bin extract\BattlePlayTile.bin extract\BattlePlay.bmp extract\BattlePlay.txt


:: HUD
tools\gbamdc.exe -e jetters.gba extract\HUD_t.bin 261184
tools\G3 extract\HUD_p.bin extract\HUD_Pause_m.bin extract\HUD_t.bin 8 3 extract\HUD_Pause.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Flames_m.bin extract\HUD_t.bin 2 72 extract\HUD_Flames.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Flames2_m.bin extract\HUD_t.bin 2 72 extract\HUD_Flames2.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Main_m.bin extract\HUD_t.bin 32 2 extract\HUD_Main.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Stars_m.bin extract\HUD_t.bin 1 10 extract\HUD_Stars.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Bombs_m.bin extract\HUD_t.bin 2 10 extract\HUD_Bombs.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Boss_m.bin extract\HUD_t.bin 2 2 extract\HUD_Boss.bmp
tools\G3 extract\HUD_p.bin extract\HUD_Misc_m.bin extract\HUD_t.bin 5 3 extract\HUD_Misc.bmp


:: Fusion
tools\gbamdc.exe -e jetters.gba extract\Fusion_t.bin 1D8140
tools\G3 extract\Fusion_p.bin extract\Fusion_Main_m.bin extract\Fusion_t.bin 30 20 extract\Fusion_Main.bmp
tools\G3 extract\Fusion_p.bin extract\Fusion_Numbers_m.bin extract\Fusion_t.bin 5 2 extract\Fusion_Numbers.bmp
tools\G3 extract\Fusion_p.bin extract\Fusion_TextBox_m.bin extract\Fusion_t.bin 3 5 extract\Fusion_TextBox.bmp

:: Scenes
tools\gbamdc -e jetters.gba extract\1E3124_t.bin 1E3124 &::t00
tools\gbamdc -e jetters.gba extract\1E60C0_t.bin 1E60C0 &::t01
tools\gbamdc -e jetters.gba extract\1E9184_t.bin 1E9184 &::t02
tools\gbamdc -e jetters.gba extract\1EB5D4_t.bin 1EB5D4 &::t03
tools\gbamdc -e jetters.gba extract\1EDB3C_t.bin 1EDB3C &::t04
tools\gbamdc -e jetters.gba extract\1EE8A0_t.bin 1EE8A0 &::t05
tools\gbamdc -e jetters.gba extract\1F062C_t.bin 1F062C &::t06
tools\gbamdc -e jetters.gba extract\1F0998_t.bin 1F0998 &::t07
tools\gbamdc -e jetters.gba extract\1F1EB0_t.bin 1F1EB0 &::t08
tools\gbamdc -e jetters.gba extract\1F29E4_t.bin 1F29E4 &::t09
tools\gbamdc -e jetters.gba extract\1F3F18_t.bin 1F3F18 &::t10
tools\gbamdc -e jetters.gba extract\1F568C_t.bin 1F568C &::t11
tools\gbamdc -e jetters.gba extract\1F5944_t.bin 1F5944 &::t12
tools\gbamdc -e jetters.gba extract\1F6548_t.bin 1F6548 &::t13
tools\gbamdc -e jetters.gba extract\1F7968_t.bin 1F7968 &::t14
tools\gbamdc -e jetters.gba extract\1E2ED4_t.bin 1E2ED4 &::t15
tools\gbamdc -e jetters.gba extract\1F7E40_t.bin 1F7E40 &::t16
tools\gbamdc -e jetters.gba extract\1F9148_t.bin 1F9148 &::t17
tools\gbamdc -e jetters.gba extract\21D8A0_t.bin 21D8A0 &::t18
tools\gbamdc -e jetters.gba extract\21F2AC_t.bin 21F2AC &::t19
tools\gbamdc -e jetters.gba extract\21FBA8_t.bin 21FBA8 &::t20
tools\gbamdc -e jetters.gba extract\220928_t.bin 220928 &::t21
tools\gbamdc -e jetters.gba extract\223490_t.bin 223490 &::t22
tools\gbamdc -e jetters.gba extract\223FF4_t.bin 223FF4 &::t23
tools\gbamdc -e jetters.gba extract\225218_t.bin 225218 &::t24
tools\gbamdc -e jetters.gba extract\226178_t.bin 226178 &::t25
tools\gbamdc -e jetters.gba extract\2270C8_t.bin 2270C8 &::t26
tools\gbamdc -e jetters.gba extract\227A8C_t.bin 227A8C &::t27
tools\gbamdc -e jetters.gba extract\228534_t.bin 228534 &::t28
tools\gbamdc -e jetters.gba extract\22925C_t.bin 22925C &::t29
tools\gbamdc -e jetters.gba extract\22A150_t.bin 22A150 &::t30
tools\gbamdc -e jetters.gba extract\22B738_t.bin 22B738 &::t31
tools\gbamdc -e jetters.gba extract\22D038_t.bin 22D038 &::t32
tools\gbamdc -e jetters.gba extract\22D268_t.bin 22D268 &::t33
tools\gbamdc -e jetters.gba extract\22E1F0_t.bin 22E1F0 &::t34
tools\gbamdc -e jetters.gba extract\230360_t.bin 230360 &::t35
tools\gbamdc -e jetters.gba extract\23111C_t.bin 23111C &::t36
tools\gbamdc -e jetters.gba extract\2331D8_t.bin 2331D8 &::t37
tools\gbamdc -e jetters.gba extract\234A38_t.bin 234A38 &::t38
tools\gbamdc -e jetters.gba extract\236140_t.bin 236140 &::t39
tools\gbamdc -e jetters.gba extract\237190_t.bin 237190 &::t40
tools\gbamdc -e jetters.gba extract\2382DC_t.bin 2382DC &::t41
tools\gbamdc -e jetters.gba extract\2394B8_t.bin 2394B8 &::t42
tools\gbamdc -e jetters.gba extract\1E2ED4_t.bin 1E2ED4 &::t43
tools\gbamdc -e jetters.gba extract\2399C0_t.bin 2399C0 &::t44
tools\gbamdc -e jetters.gba extract\23DA68_t.bin 23DA68 &::t45
tools\gbamdc -e jetters.gba extract\23EC08_t.bin 23EC08 &::t46
tools\gbamdc -e jetters.gba extract\240504_t.bin 240504 &::t47
tools\gbamdc -e jetters.gba extract\240EE8_t.bin 240EE8 &::t48
tools\gbamdc -e jetters.gba extract\1F944C_t.bin 1F944C &::t49
tools\gbamdc -e jetters.gba extract\1FD1B8_t.bin 1FD1B8 &::t50
tools\gbamdc -e jetters.gba extract\1FD8D4_t.bin 1FD8D4 &::t51
tools\gbamdc -e jetters.gba extract\1FDF18_t.bin 1FDF18 &::t52
tools\gbamdc -e jetters.gba extract\200C60_t.bin 200C60 &::t53
tools\gbamdc -e jetters.gba extract\206CE4_t.bin 206CE4 &::t54
tools\gbamdc -e jetters.gba extract\2082F4_t.bin 2082F4 &::t55
tools\gbamdc -e jetters.gba extract\202170_t.bin 202170 &::t56
tools\gbamdc -e jetters.gba extract\202FBC_t.bin 202FBC &::t57
tools\gbamdc -e jetters.gba extract\203DCC_t.bin 203DCC &::t58
tools\gbamdc -e jetters.gba extract\206800_t.bin 206800 &::t59
tools\gbamdc -e jetters.gba extract\2093EC_t.bin 2093EC &::t60
tools\gbamdc -e jetters.gba extract\20A590_t.bin 20A590 &::t61
tools\gbamdc -e jetters.gba extract\20DEB4_t.bin 20DEB4 &::t62
tools\gbamdc -e jetters.gba extract\20F9B4_t.bin 20F9B4 &::t63
tools\gbamdc -e jetters.gba extract\20884C_t.bin 20884C &::t64
tools\gbamdc -e jetters.gba extract\212BA0_t.bin 212BA0 &::t65
tools\gbamdc -e jetters.gba extract\2136BC_t.bin 2136BC &::t66
tools\gbamdc -e jetters.gba extract\2163D4_t.bin 2163D4 &::t67
tools\gbamdc -e jetters.gba extract\218088_t.bin 218088 &::t68
tools\gbamdc -e jetters.gba extract\219370_t.bin 219370 &::t69
tools\gbamdc -e jetters.gba extract\21AAF4_t.bin 21AAF4 &::t70
tools\gbamdc -e jetters.gba extract\241384_t.bin 241384 &::t71
tools\gbamdc -e jetters.gba extract\245144_t.bin 245144 &::t72
tools\gbamdc -e jetters.gba extract\245784_t.bin 245784 &::t73
tools\gbamdc -e jetters.gba extract\247480_t.bin 247480 &::t74
tools\gbamdc -e jetters.gba extract\249214_t.bin 249214 &::t75
tools\gbamdc -e jetters.gba extract\249EA8_t.bin 249EA8 &::t76
tools\gbamdc -e jetters.gba extract\24D80C_t.bin 24D80C &::t77
tools\gbamdc -e jetters.gba extract\24DA74_t.bin 24DA74 &::t78
tools\gbamdc -e jetters.gba extract\2511AC_t.bin 2511AC &::t79
tools\gbamdc -e jetters.gba extract\252CB0_t.bin 252CB0 &::t80
tools\gbamdc -e jetters.gba extract\24E5B8_t.bin 24E5B8 &::t81
tools\gbamdc -e jetters.gba extract\24EFA8_t.bin 24EFA8 &::t82
tools\gbamdc -e jetters.gba extract\24F4F4_t.bin 24F4F4 &::t83
tools\gbamdc -e jetters.gba extract\24FA90_t.bin 24FA90 &::t84
tools\gbamdc -e jetters.gba extract\250014_t.bin 250014 &::t85
tools\gbamdc -e jetters.gba extract\25046C_t.bin 25046C &::t86
tools\gbamdc -e jetters.gba extract\250980_t.bin 250980 &::t87
tools\gbamdc -e jetters.gba extract\250F50_t.bin 250F50 &::t88
tools\gbamdc -e jetters.gba extract\25EDD4_t.bin 25EDD4 &::t89

tools\G3 extract\1E3084_p.bin extract\1E555C_m.bin extract\1E3124_t.bin 32 20 extract\1E555C.bmp
tools\G3 extract\1E3084_p.bin extract\1E5A5C_m.bin extract\1E3124_t.bin 28 20 extract\1E5A5C.bmp

tools\G3 extract\1E5EBC_p.bin extract\1E8764_m.bin extract\1E60C0_t.bin 30 32 extract\1E8764.bmp
tools\G3 extract\1E5EBC_p.bin extract\1E8EE4_m.bin extract\1E60C0_t.bin 30 8 extract\1E8EE4.bmp
tools\G3 extract\1E90C4_p.bin extract\1EB064_m.bin extract\1E9184_t.bin 30 12 extract\1EB064.bmp
tools\G3 extract\1E90C4_p.bin extract\1EB334_m.bin extract\1E9184_t.bin 30 8 extract\1EB334.bmp

tools\G3 extract\1EDB1C_p.bin extract\1EE2F0_m.bin extract\1EDB3C_t.bin 30 20 extract\1EE2F0.bmp
tools\G3 extract\1EE7A0_p.bin extract\1F011C_m.bin extract\1EE8A0_t.bin 30 20 extract\1F011C.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\1F0978_p.bin extract\1F19E0_m.bin extract\1F0998_t.bin 30 20 extract\1F19E0.bmp
tools\G3 extract\1F1E90_p.bin extract\1F24B4_m.bin extract\1F1EB0_t.bin 30 20 extract\1F24B4.bmp
tools\G3 extract\1F2964_p.bin extract\1F39E8_m.bin extract\1F29E4_t.bin 30 20 extract\1F39E8.bmp
tools\G3 extract\1F3E98_p.bin extract\1F5030_m.bin extract\1F3F18_t.bin 30 20 extract\1F5030.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\1F5924_p.bin extract\1F5FB8_m.bin extract\1F5944_t.bin 30 20 extract\1F5FB8.bmp
tools\G3 extract\1F6468_p.bin extract\1F7438_m.bin extract\1F6548_t.bin 30 20 extract\1F7438.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\1F7DE0_p.bin extract\1F8BD8_m.bin extract\1F7E40_t.bin 32 20 extract\1F8BD8.bmp
tools\G3 extract\1F7DE0_p.bin extract\1F90D8_m.bin extract\1F7E40_t.bin 2 20 extract\1F90D8.bmp
tools\G3 extract\1F7DE0_p.bin extract\1F90D8_m.bin extract\1F7E40_t.bin 2 20 extract\1F90D8.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\1E5EBC_p.bin extract\1E8764_m.bin extract\1E60C0_t.bin 30 32 extract\1E8764.bmp
tools\G3 extract\1E5EBC_p.bin extract\1E8EE4_m.bin extract\1E60C0_t.bin 30 8 extract\1E8EE4.bmp
tools\G3 extract\1EB514_p.bin extract\1ED66C_m.bin extract\1EB5D4_t.bin 30 12 extract\1ED66C.bmp
tools\G3 extract\1EB514_p.bin extract\1ED93C_m.bin extract\1EB5D4_t.bin 30 8 extract\1ED93C.bmp

tools\G3 extract\21D848_p.bin extract\21ED4C_m.bin extract\21D8A0_t.bin 32 20 extract\21ED4C.bmp
tools\G3 extract\21FB88_p.bin extract\2203C8_m.bin extract\21FBA8_t.bin 30 20 extract\2203C8.bmp

tools\G3 extract\220878_p.bin extract\222F80_m.bin extract\220928_t.bin 30 20 extract\222F80.bmp

tools\G3 extract\223FD4_p.bin extract\224D48_m.bin extract\223FF4_t.bin 30 20 extract\224D48.bmp

tools\G3 extract\225E04_p.bin extract\226BF8_m.bin extract\226178_t.bin 30 20 extract\226BF8.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\2270A8_p.bin extract\2275BC_m.bin extract\2270C8_t.bin 30 20 extract\2275BC.bmp
tools\G3 extract\227A6C_p.bin extract\228064_m.bin extract\227A8C_t.bin 30 20 extract\228064.bmp
tools\G3 extract\228514_p.bin extract\228D8C_m.bin extract\228534_t.bin 30 20 extract\228D8C.bmp
tools\G3 extract\22923C_p.bin extract\229C20_m.bin extract\22925C_t.bin 30 20 extract\229C20.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\22A0D0_p.bin extract\22B148_m.bin extract\22A150_t.bin 30 20 extract\22B148.bmp
tools\G3 extract\22B5F8_p.bin extract\22CB68_m.bin extract\22B738_t.bin 30 20 extract\22CB68.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\22D248_p.bin extract\22D568_m.bin extract\22D268_t.bin 32 25 extract\22D568.bmp
tools\G3 extract\22D248_p.bin extract\22DBA8_m.bin extract\22D268_t.bin 11 25 extract\22DBA8.bmp
tools\G3 extract\22DDCE_p.bin extract\22FA78_m.bin extract\22E1F0_t.bin 32 25 extract\22FA78.bmp
tools\G3 extract\22DDCE_p.bin extract\2300B8_m.bin extract\22E1F0_t.bin 11 25 extract\2300B8.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\23031E_p.bin extract\23065C_m.bin extract\230360_t.bin 32 20 extract\23065C.bmp
tools\G3 extract\23031E_p.bin extract\230B5C_m.bin extract\230360_t.bin 32 20 extract\230B5C.bmp
tools\G3 extract\23105C_p.bin extract\232BF8_m.bin extract\23111C_t.bin 32 20 extract\232BF8.bmp
tools\G3 extract\2330F8_p.bin extract\2344B8_m.bin extract\2331D8_t.bin 32 20 extract\2344B8.bmp

tools\G3 extract\23031E_p.bin extract\23065C_m.bin extract\230360_t.bin 32 20 extract\23065C.bmp
tools\G3 extract\23031E_p.bin extract\230B5C_m.bin extract\230360_t.bin 32 20 extract\230B5C.bmp
tools\G3 extract\2349B8_p.bin extract\235B84_m.bin extract\234A38_t.bin 30 15 extract\235B84.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\23031E_p.bin extract\23065C_m.bin extract\230360_t.bin 32 20 extract\23065C.bmp
tools\G3 extract\23031E_p.bin extract\230B5C_m.bin extract\230360_t.bin 32 20 extract\230B5C.bmp
tools\G3 extract\236100_p.bin extract\236CA0_m.bin extract\236140_t.bin 30 20 extract\236CA0.bmp
tools\G3 extract\237150_p.bin extract\237DEC_m.bin extract\237190_t.bin 30 20 extract\237DEC.bmp

tools\G3 extract\23952C_p.bin extract\23D1D8_m.bin extract\2399C0_t.bin 30 32 extract\23D1D8.bmp
tools\G3 extract\23952C_p.bin extract\23D958_m.bin extract\2399C0_t.bin 30 3 extract\23D958.bmp

tools\G3 extract\23EBC8_p.bin extract\240034_m.bin extract\23EC08_t.bin 30 20 extract\240034.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\23952C_p.bin extract\23D1D8_m.bin extract\2399C0_t.bin 30 32 extract\23D1D8.bmp
tools\G3 extract\23952C_p.bin extract\23D958_m.bin extract\2399C0_t.bin 30 3 extract\23D958.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\1F9284_p.bin extract\1FC7D8_m.bin extract\1F944C_t.bin 30 32 extract\1FC7D8.bmp
tools\G3 extract\1F9284_p.bin extract\1FCF58_m.bin extract\1F944C_t.bin 30 8 extract\1FCF58.bmp

tools\G3 extract\1FDE58_p.bin extract\200260_m.bin extract\1FDF18_t.bin 32 20 extract\200260.bmp
tools\G3 extract\1FDE58_p.bin extract\200760_m.bin extract\1FDF18_t.bin 28 20 extract\200760.bmp
tools\G3 extract\200BC0_p.bin extract\201BB0_m.bin extract\200C60_t.bin 32 20 extract\201BB0.bmp

tools\G3 extract\206C64_p.bin extract\207974_m.bin extract\206CE4_t.bin 32 20 extract\207974.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\2020B0_p.bin extract\202AAC_m.bin extract\202170_t.bin 30 20 extract\202AAC.bmp
tools\G3 extract\202F5C_p.bin extract\20387C_m.bin extract\202FBC_t.bin 30 20 extract\20387C.bmp
tools\G3 extract\203D2C_p.bin extract\2059B0_m.bin extract\203DCC_t.bin 30 20 extract\2059B0.bmp
tools\G3 extract\203D2C_p.bin extract\205E60_m.bin extract\203DCC_t.bin 30 20 extract\205E60.bmp
tools\G3 extract\203D2C_p.bin extract\206310_m.bin extract\203DCC_t.bin 30 20 extract\206310.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\2091C8_p.bin extract\20A060_m.bin extract\2093EC_t.bin 30 20 extract\20A060.bmp
tools\G3 extract\20A510_p.bin extract\20D084_m.bin extract\20A590_t.bin 30 20 extract\20D084.bmp
tools\G3 extract\20A510_p.bin extract\20D534_m.bin extract\20A590_t.bin 30 20 extract\20D534.bmp
tools\G3 extract\20A510_p.bin extract\20D9E4_m.bin extract\20A590_t.bin 30 20 extract\20D9E4.bmp

tools\G3 extract\20DE94_p.bin extract\20F158_m.bin extract\20DEB4_t.bin 30 32 extract\20F158.bmp
tools\G3 extract\20DE94_p.bin extract\20F8D8_m.bin extract\20DEB4_t.bin 30 1 extract\20F8D8.bmp
tools\G3 extract\20F914_p.bin extract\211EF4_m.bin extract\20F9B4_t.bin 30 32 extract\211EF4.bmp
tools\G3 extract\20F914_p.bin extract\212674_m.bin extract\20F9B4_t.bin 30 1 extract\212674.bmp

tools\G3 extract\206C64_p.bin extract\207974_m.bin extract\206CE4_t.bin 32 20 extract\207974.bmp
tools\G3 extract\2087CC_p.bin extract\208CC8_m.bin extract\20884C_t.bin 32 20 extract\208CC8.bmp
tools\G3 extract\1E2EB4_p.bin extract\1E2F58_m.bin extract\1E2ED4_t.bin 30 5 extract\1E2F58.bmp

tools\G3 extract\20DE94_p.bin extract\20F158_m.bin extract\20DEB4_t.bin 30 32 extract\20F158.bmp
tools\G3 extract\20F914_p.bin extract\211EF4_m.bin extract\20F9B4_t.bin 30 32 extract\211EF4.bmp
tools\G3 extract\20F914_p.bin extract\2126B0_m.bin extract\20F9B4_t.bin 30 20 extract\2126B0.bmp

tools\G3 extract\212B60_p.bin extract\212C1C_m.bin extract\212BA0_t.bin 32 20 extract\212C1C.bmp
tools\G3 extract\212B60_p.bin extract\21311C_m.bin extract\212BA0_t.bin 32 20 extract\21311C.bmp
tools\G3 extract\21361C_p.bin extract\215948_m.bin extract\2136BC_t.bin 32 22 extract\215948.bmp
tools\G3 extract\21361C_p.bin extract\215EC8_m.bin extract\2136BC_t.bin 19 22 extract\215EC8.bmp

tools\G3 extract\21620C_p.bin extract\217BB8_m.bin extract\2163D4_t.bin 30 20 extract\217BB8.bmp
tools\G3 extract\218068_p.bin extract\218970_m.bin extract\218088_t.bin 30 20 extract\218970.bmp
tools\G3 extract\218068_p.bin extract\218E20_m.bin extract\218088_t.bin 30 20 extract\218E20.bmp
tools\G3 extract\21A9F4_p.bin extract\21CA38_m.bin extract\21AAF4_t.bin 30 20 extract\21CA38.bmp
tools\G3 extract\21A9F4_p.bin extract\21CEE8_m.bin extract\21AAF4_t.bin 30 20 extract\21CEE8.bmp
tools\G3 extract\21A9F4_p.bin extract\21D398_m.bin extract\21AAF4_t.bin 30 20 extract\21D398.bmp

:: title, 8bit color
::tools\G3 extract\2411A4_p.bin extract\2447C4_m.bin extract\241384_t.bin 30 20 extract\2447C4.bmp
::tools\G3 extract\2411A4_p.bin extract\244C74_m.bin extract\241384_t.bin 30 20 extract\244C74.bmp
::tools\G3 extract\245124_p.bin extract\245254_m.bin 30 20 extract\245254.bmp

:: game over
tools\G3 extract\2491D4_p.bin extract\249918_m.bin extract\249214_t.bin 30 20 extract\249918.bmp
tools\G3 extract\249DC8_p.bin extract\24BF60_m.bin extract\249EA8_t.bin 30 20 extract\24BF60.bmp

tools\G3 extract\24D858_p.bin extract\24DB78_m.bin extract\24DA74_t.bin 32 20 extract\24DB78.bmp
tools\G3 extract\24D858_p.bin extract\24E078_m.bin extract\24DA74_t.bin 32 20 extract\24E078.bmp

:: HUD2
tools\gbamdc.exe -e jetters.gba extract\HUD2_t.bin 262604
tools\G3 extract\HUD2_p.bin extract\HUD2_Main_m.bin extract\HUD2_t.bin 16 5 extract\HUD2_Main.bmp
tools\G3 extract\HUD2_p.bin extract\HUD2_Pause_m.bin extract\HUD2_t.bin 8 3 extract\HUD2_Pause.bmp

:: BomberHall
tools\gbamdc.exe -e jetters.gba extract\BomberHall_t.bin 2632B4
tools\G3 extract\BomberHall_p.bin extract\BomberHall_Main_m.bin extract\BomberHall_t.bin 32 20 extract\BomberHall_Main.bmp
tools\G3 extract\BomberHall_p.bin extract\BomberHall_Text_m.bin extract\BomberHall_t.bin 16 16 extract\BomberHall_Text.bmp
tools\G3 extract\BomberHall_p.bin extract\BomberHall_Numbers_m.bin extract\BomberHall_t.bin 1 22 extract\BomberHall_Numbers.bmp
tools\G3 extract\BomberHall_p.bin extract\BomberHall_Numbers2_m.bin extract\BomberHall_t.bin 2 14 extract\BomberHall_Numbers2.bmp

:: BHallCert
tools\gbamdc.exe -e jetters.gba extract\BHallCert_t.bin 264880
tools\G3 extract\BHallCert_p.bin extract\BHallCert_Main_m.bin extract\BHallCert_t.bin 32 20 extract\BHallCert_Main.bmp
tools\G3 extract\BHallCert_p.bin extract\BHallCert_Numbers_m.bin extract\BHallCert_t.bin 1 22 extract\BHallCert_Numbers.bmp
tools\G3 extract\BHallCert_p.bin extract\BHallCert_Portrait_m.bin extract\BHallCert_t.bin 8 40 extract\BHallCert_Portrait.bmp
tools\G3 extract\BHallCert_p.bin extract\BHallCert_Rank_m.bin extract\BHallCert_t.bin 5 56 extract\BHallCert_Rank.bmp

:: BHallBoard
tools\gbamdc.exe -e jetters.gba extract\BHallBoard_t.bin 268560
tools\G3 extract\BHallBoard_p.bin extract\BHallBoard_Red_m.bin extract\BHallBoard_t.bin 32 20 extract\BHallBoard_Red.bmp
tools\G3 extract\BHallBoard_p.bin extract\BHallBoard_Blue_m.bin extract\BHallBoard_t.bin 32 20 extract\BHallBoard_Blue.bmp
tools\G3 extract\BHallBoard_p.bin extract\BHallBoard_Rank_m.bin extract\BHallBoard_t.bin 2 28 extract\BHallBoard_Rank.bmp
tools\G3 extract\BHallBoard_p.bin extract\BHallBoard_Numbers_m.bin extract\BHallBoard_t.bin 1 28 extract\BHallBoard_Numbers.bmp


pause
