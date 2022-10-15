 ; Bomberman Jetters 8x8 font hack by Normmatt and Spikeman
 ;
 ; further edits by Teod
 ; * fix a possbile overflow for tile data
 ; * add in hooks for E0 commands
 ; * add in overflow hook for new text boxes

.org 0x080152B8 ; replace font
	.word Font
    
.pool

.org 0x0801574A ; Fix number conversion routine
	;add r6, #0x60 ;add r6, #1
	add r6, 0x30

; *** JUMP TABLE
; --------------
; jump table for switch statement (table starts at E0)
; starting at F8

.org 0x080160D4
	.word cmdF8         ; cmdF8 function address
;	.word 0x8016112     ; cmdF9 function address
	.word cmdF9
	.word NewLine       ; New Line function address
	.word NewTextBox    ; New TextBox function address
	.word WaitForTimer  ; Wait for timer function address
;	.word 0x08016112    ; cmdFD function address
;	.word 0x0801612E    ; Normal Character function address
;	.word 0x80160FA
	.word cmdFD
	.word 0x8016112
	.word EndTextBox    ; End Textbox function address

; *** Replacing the original putChar calls
; ----------------------------------------
.org 0x08016140 ; routine that puts a character to the map
.area 0x08016154 - 0x08016140
	mov r2, #27
	add r2,r15
	mov r14, r2
	; less error prone... PC calculations are weird...
	;ldr r2, =0x8016156+1
	mov r14, r2
    ldr r2, =putChar+1    ; r2 is best variable to use for jump
    bx r2
.pool
.endarea

.org 0x080164E4 ; routine that puts a number to the map
.area 0x080164F8 - 0x080164E4
	mov r2, #27
	add r2,r15
	mov r14, r2
    ;ldr r2, =0x80164FA+1
	mov r14, r2
	ldr r2, =putChar+1    ; r2 is best variable to use for jump
    bx r2
.pool
.endarea

.org 0x0801655A ; routine that puts location on load/save screen
.area 0x0801656E - 0x0801655A
	mov r2, #27
	add r2,r15
	mov r14, r2
	;ldr r2, =0x8016570+1
	mov r14, r2
    ldr r2, =putChar+1    ; r2 is best variable to use for jump
    bx r2 
.pool
.endarea

; *** Hooking into E0 function table
; ----------------------------------
; code E0 function table
.org 0x81D3088
	.word hookE000+1
	.word hookE001+1
	.word hookE002+1
	.skip 4
	.skip 4
	.word hookE005+1
	.word hookE006+1
	.skip 4
	
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	
	.word hookE010+1
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.skip 4
	.word hookE016+1
	.word hookE017+1
	
	.word hookE018+1
	.skip 4
	.skip 4
	.skip 4
	.word hookE01C+1
	.skip 4
	.skip 4
	.skip 4
	
	.word hookE020+1
	.skip 4
	.skip 4
	.skip 4
	.skip 4

; *** Hook into InitTextbox_801560C subroutine
; this subroutine gets called for new text boxes...
; good place to reset overflow variable
.org 0x8015640
.area 0x801564A-.
; original code
	;POP     {R3}
	;MOV     R8, R3
	;POP     {R4-R6}
	;POP     {R0}
	;BX      R0
	; we're going to restore registers in our hook
	ldr r0, =TextboxHook+1
	bx r0
.pool
.endarea

; *** NEW CODE
; --------------------------------------------------------

;.org 0x081D5CAA
;	.halfword 0x0233 ;.halfword 0x0232

;overflow:  .word 0x03000000  ; my notes say this is free
overflow equ 0x3000000

;.org 0x08453660 ; should be free space to put code
.autoregion
loadCharacter:
	ldr r5, = 0x08015278+1
	bx r5
.pool

; r0 - destination
; r1 - character
; r2 - character color
; r3 - bg color
putChar:
	;LDRB    R2, [R3,#0x12]
	;LDRB    R3, [R3,#0x13]

	PUSH    {R4-R7,LR}
	ADD  	SP,#-0x20
	ADD     R4, R0, #0
	ADD     R0, R1, #0
	LDRB    R1, [R3,#0x12] ;ADD     R1, R2, #0
	LDRB    R2, [R3,#0x13] ;ADD     R2, R3, #0
	LSL     R0, R0, #0x18
	LSR     R0, R0, #0x18
	;LSL     R1, R1, #0x18
	;LSR     R1, R1, #0x18
	;LSL     R2, R2, #0x18
	;LSR     R2, R2, #0x18
	MOV     R3, SP
	
	mov     r6, r0 ;store character for a second
	mov     r7, r2 ;store bg color
	BL      loadCharacter
	
	;mov r2, #5	; r2 = width, replace this with lookup table using r0
	ldr r2, =WidthTable
	ldrb r2, [r2,r6]
	
	bl GetNextTileAddress
	mov r3, r0
	
	ldr r6, =overflow
	ldrb r1, [r6]
	mov r5, r1	; r5 = current overflow
	add r1, r1, r2	; r1 will be new overflow, r2 is spare after this
	cmp r1, #8
	ble NoNewTile	; if overflow >8 move to next tile
    mov r2, #8
	sub r1, r1, r2
	; clear next tile
	ldr r2, [mask]
	mul r2, r7 ; times 0x11111111 by the bg color pallete index
	str r2, [r3, #0]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	str r2, [r3, #16]
	str r2, [r3, #20]
	str r2, [r3, #24]
	str r2, [r3, #28]
	
	; original code to increment stuff
	LDR     R2, =0x3007470
	LDR     R0, [R2,#0x40]
	ADD     R0, #1          ; increment map address
	STR     R0, [R2,#0x40]
	;LDR     R0, [R2,#0x44]
	BL      GetNextTile
	STR     R0, [R2,#0x44]

NoNewTile:
	strb r1, [r6]

	lsl r5, r5, 2	; *4, for 4bpp
	mov r6, #0x20	; i feel like this code should be somewhere else
	sub r6, r6, r5	; r6 is to shift the existing background

	mov r0, sp
	;r0 = font, r3 = overflow tile, r4 = VRAM, r5 will be shift

	bl PrintHalfChar

UpdateMapTile:
	LDR     R3, =0x3007470
	LDR     R2, [R3,#0x40]
	LDR     R0, [R3,#0x74]
	LSL     R2, R2, #1
	ADD     R2, R2, R0
	LDR     R0, [R3,#0x78]
	LDRH    R1, [R0,#0x10]
	LSL     R1, R1, #0xC
	LDR     R0, [R3,#0x44]
	ORR     R1, R0
	STRH    R1, [R2]
	
	; r0 should return tile address
	;LDR     R0, [R3,#0x44]
	
putChar_Exit:
	ADD  	SP,#0x20
	POP     {R4-R7,PC}
	
PrintHalfChar:
	mov r7, 0	; r7 = loop counter

PrintHalfChar_loop:
	ldr r1, [r0,r7] ; sp = character data
	ldr r2, [r4,r7]
	lsl r1,r5
	lsl r2,r6	; shift out part of background to be overwritten
	lsr r2,r6	
	orr r1,r2
	str r1, [r4,r7]

	ldr r1, [r0,r7] ; now do overflow tile
	ldr r2, [r3,r7]
	lsr r1,r6	; swap shifts (i think this will work)
	lsr r2,r5
	lsl r2,r5	
	orr r1,r2
	str r1, [r3,r7]

	add r7,r7,4	; each row = 4 bytes
	cmp r7, #0x20	; are 8 rows printed?
	bne PrintHalfChar_loop
	bx r14
	
GetNextTile:
	push {r1-r3}
	LDR     R2, =0x3007470
	LDR     R0, [R2,#0x44]
	ADD     R0, #1          ; increment tile address
	
	;Handle case where tile address wraps around
	LDR     R1, [R2,#0x78]
	LDRH    R3, [R1,#0xE]   ; 0x0233
	CMP     R0, R3
	BLS     GetNextTile_skip

	LDRH    R0, [R1,#0xC]

GetNextTile_skip:
	pop {r1-r3}
	bx lr
	
GetNextTileAddress:
	push {r1-r3}
	LDR     R2, =0x3007470
	LDR     R0, [R2,#0x44]
	ADD     R0, #1          ; increment tile address
	
	;Handle case where tile address wraps around
	LDR     R1, [R2,#0x78]
	LDRH    R3, [R1,#0xE]   ; 0x0233
	CMP     R0, R3
	BLS     GetNextTileAddress_skip

	LDRH    R0, [R1,#0xC]
	
GetNextTileAddress_skip:	
	LSL     R0, R0, #5
	LDR     R1, [R2,#0x70]
	ADD     R0, R0, R1
	pop {r1-r3}
	bx lr

ResetOverflow:
	; reset overflow
	mov r0, #0
	ldr r1, =overflow
	str r0, [r1]
	bx lr

 ;Reset overflow on cmdF8 call
cmdF8:
	bl ResetOverflow
	ldr r0, [cmdF8_returnAdr]
	bx r0
	
 ;Reset overflow on new textbox call
NewTextBox:
	bl ResetOverflow	
	ldr r0, [NewTextBox_returnAdr]
	bx r0
	

 ;Reset overflow on end textbox call	
EndTextBox:
	bl ResetOverflow
	ldr r0, [EndTextBox_returnAdr]
	bx r0
	
 ;Reset overflow on wait for timer
WaitForTimer:
	bl ResetOverflow
	ldr r0, [WaitForTimer_returnAdr]
	bx r0

 ; <half> "half line"
 ; instead of incrementing 2 y tiles
 ; increments only 1 y tile
 ; doesn't seem to be used
cmdF9:
	bl ResetOverflow
	ldr r0, [cmdF9_returnAdr]
	bx r0
 ; <close>
 ; similar to <end> but doesn't
 ; wait for press
cmdFD:
	bl ResetOverflow
	ldr r0, [cmdFD_returnAdr]
	bx r0
	
 ;Handle New Line
 ;r0 and r1 are free
NewLine:
	bl ResetOverflow
	; original code to increment stuff
	LDR     R1, =0x3007470
	LDR     R0, [R1,#0x40]
	ADD     R0, #1          ; increment map address
	STR     R0, [R1,#0x40]
	LDR     R0, [R1,#0x44]
	ADD     R0, #1          ; increment tile address
	STR     R0, [R1,#0x44]
	
	ldr r0, [NewLine_returnAdr]
	bx r0
    
.align 4
EndTextBox_returnAdr:   .word 0x080160F4+1
WaitForTimer_returnAdr: .word 0x08016100+1
NewTextBox_returnAdr:   .word 0x08016106+1
NewLine_returnAdr:      .word 0x0801610C+1
cmdF8_returnAdr:        .word 0x08016118+1
cmdF9_returnAdr:        .word 0x8016112+1
cmdFD_returnAdr:        .word 0x80160FA+1

mask:      .word 0x11111111  ; mask
.pool

;Font:
;.incbin asm/bin/smallFont_vwf.bin
;WidthTable:
;.incbin asm/bin/smallWidthTable.bin

; *** Hook into E0 codes to reset overflow
; ----------------------------------------
cmdE000 equ 0x80156C4
cmdE001 equ 0x8015760
cmdE002 equ 0x8015798
cmdE005 equ 0x8015818
cmdE006 equ 0x8015858
cmdE010 equ 0x801599C
cmdE016 equ 0x8015A94
cmdE017 equ 0x8015AD4
cmdE018 equ 0x8015B14
cmdE01C equ 0x8015DBC
cmdE020 equ 0x8015E40

; jumps
; in theory, jumps can directly go into new text
; and not use new line or new box
hookE000:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE000+1
	bx r0
hookE001:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE001+1
	bx r0
hookE002:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE002+1
	bx r0
hookE016:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE016+1
	bx r0
hookE01C:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE01C+1
	bx r0
hookE020:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE020+1
	bx r0

; prompts
; clears textbox after getting input
hookE005:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE005+1
	bx r0
hookE006:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE006+1
	bx r0
hookE010:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE010+1
	bx r0
hookE017:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE017+1
	bx r0
hookE018:
	mov r4,lr
	bl ResetOverflow
	mov lr,r4
	ldr r0,=cmdE018+1
	bx r0
.pool
.endautoregion


.autoregion
TextboxHook:
	mov r0, #0
	ldr r1, =overflow
	str r0, [r1]
	
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
.pool
.endautoregion

