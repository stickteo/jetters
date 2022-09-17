an overview of what each tool does

armips.exe
----------
asm assembler / patcher

can do a variety of tasks.

in fact, armips can be used to extract various data
instead of just patching (check out the extract.bat script)

please do not replace! don't fix things that aren't broken!

C1.exe
------
process raw map into asm jetters compatible map

used during the build process after E1.exe generates a
"raw" map file from tiles and descriptor

E1.exe
------
creates a bmp file and descriptor from a tileset and jetters map

used during for the extract process

G1.exe
------
creates a raw map and tileset from a bmp

meant to be generic, basically replicates the function of grit

note: g1 process tiles from top-to-bottom, left-to-right
so the top left tile will be tile 1 or 0
(tile 0 will always be the empty tile)

GBAmdc.exe
----------
extracts and decompress lz77 directly from rom

used for the extract process

lzss.exe
--------
compress/decompress files as lz77

used for the build process
to compress tilesets
