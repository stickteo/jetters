
; original bit font location
;.org 0x81BCD90
.autoregion
Font:
.import "build\Font.bin"
.endautoregion

.autoregion
WidthTable:
;.fill 256, 4
.fill 32, 8
; 0x20
;  ' ' !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /
.db 3, 3, 5, 6, 6, 4, 8, 3, 4, 4, 4, 6, 3, 5, 2, 4

; 0x30
;   0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?
.db 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 4, 5, 4, 5

; 0x40
;   @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O
.db 6, 6, 6, 6, 6, 5, 5, 6, 6, 4, 4, 6, 6, 6, 6, 6

; 0x50
;   P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _
.db 6, 6, 6, 5, 6, 6, 6, 7, 6, 6, 6, 4, 4, 4, 4, 8

; 0x60
;   `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o
.db 3, 5, 5, 5, 5, 5, 5, 5, 5, 4, 3, 5, 4, 8, 5, 5

; 0x70
;   p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~
.db 5, 5, 5, 5, 5, 5, 6, 7, 6, 6, 5, 4, 3, 4, 7, 8

; 0x80
.fill 16, 8

; 0x90
.fill 16, 8

; 0xA0
.fill 16, 8

; 0xB0
.fill 16, 8

; 0xC0
.fill 16, 8

; 0xD0
; spacing chars
.db 8, 1, 2, 3, 4, 5, 6, 7, 8, 8, 8, 8, 8, 8, 8, 8

; 0xE0
.fill 16, 8

; 0xF0
.fill 16, 8
.endautoregion