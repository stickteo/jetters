
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

pause
