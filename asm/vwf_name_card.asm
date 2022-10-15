; vwf_name_card.asm


; dependencies
;   vwf_routines.asm


; *** command E01B
; --------------------------------------------
; r4 = 0x3007470
; r5 = tile index
; r7 = string
; free
; r0, r1, r2, r3,
; r6, r8, r9, r10
.org 0x8015CEA
.area 0x8015D70-.
	; get string width
	;mov r6, r1
	mov r0, r7
	ldr r6, =CalcStringWidth+1
	bl @@bx_r6
	
	; allocate tiles
	;add r0, 7
	add r0, 6
	lsr r0, 3
	; for use by the original subroutine
	; trying to store into [sp,34]
	; [sp,32] is just temp space
	; [sp,34] is map offset
	ldr r1, [sp,32]
	lsr r1, 16
	mov r8, r1; save
	mov r9, r0; save
	add r1, r0
	lsl r1, 16
	str r1, [sp,32]
	
	; [sp,36] counts how many tiles are used
	ldr r1, [sp,36]
	add r1, r0
	str r1, [sp,36]
	
	; allocate tiles
	;lsl r0, 5
	;mov r3, sp
	;sub r3, r0
	;mov sp, r3
	; static allocation...
	;sub sp, 256
	sub sp, 508
	;mov r3, sp
	
	; render string
	ldr r1, [r4,120]
	add r1, 18
	mov r2, 0
	mov r0, r7
	mov r3, sp
	ldr r6, =RenderString+1
	bl @@bx_r6
	
	; copy tiles to vram
	; dma3sad
	mov r0, sp
	ldr r2, =0x40000D4
	str r0, [r2]
	; dma3dad
	lsl r1, r5, 5
	ldr r0, [r4,112]
	add r0, r1
	str r0, [r2,4]
	; dma3cnl
	;ldr r1, =0x40000DC
	;ldr r1, [r2,8]
	mov r0, r9
	lsl r0, 4
	;ldr r1, =0x80000000
	mov r1, 1
	lsl r1, 31
	add r0, r1
	str r0, [r2,8]
		
	; deallocate
	;mov r0, r9
	;lsl r0, 5
	;mov r1, sp
	;add r1, r0
	;mov sp, r1
	;add sp, 256
	; max sp increment in single instruction...
	add sp, 508
	
	; set map entries
	ldr r6, [r4,116]
	mov r1, r8
	mov r3, r9
	add r3, r1
	lsl r3, 1
	lsl r1, 1
	
	; busy loop
@@wait:
	ldr r0, [r2,8]
	lsr r0, 31
	cmp r0, 0
	bne @@wait
	
	; palette
	ldr r0, [r4,120]
	ldrh r0, [r0,16]
	lsl r0, 12
	orr r0, r5

@@loop:
	strh r0, [r6,r1]
	add r1, 2
	add r0, 1
	cmp r1, r3
	blo @@loop

	b 0x8015D70
.pool

@@bx_r6:
	bx r6
.endarea


; *** command E021
; ----------------------------------------
; r3 = 0x3007470
; r6 = tile offset
; free
; r0, r1, r2, r4, r5, r7,
; r8, r9
.org 0x8015EB6
.area 0x8015F36-.
	; grab map offset: [sp,34]
	ldr r0, [sp,32]
	lsr r0, 16
	mov r8, r0
	
	; allocate tile space
	sub sp, 508
	mov r4, r3
	
	; render tiles
	ldr r0, [r4,108]
	ldr r1, [r4,120]
	add r1, 18
	mov r2, 0
	mov r3, sp
	ldr r7, =RenderString+1
	bl @@bx_r7
	
	; calculate tiles needed
	ldr r0, [r4,108]
	ldr r7, =CalcStringWidth+1
	bl @@bx_r7
	; round up to nearest tile (8px)
	;add r5, r0, 7
	; since every character glyph has 1px spacing after...
	add r5, r0, 6
	lsr r5, 3
	
	; dma transfer
	ldr r2, =0x40000D4
	
	;  dma3sad
	mov r0, sp
	str r0, [r2]
	
	;  dma3dad
	ldr r1, [r4,112]
	lsl r0, r6, 5
	add r0, r1
	str r0, [r2,4]
	
	;  dma3cnl
	ldr r0, =0x80000000
	lsl r1, r5, 4
	add r0, r1
	str r0, [r2,8]
		
	; write map entries
	;  get palette
	ldr r0, [r4,120]
	ldrh r0, [r0,16]
	lsl r0, r0, 12
	add r3, r0, r6
	
	;  r5 = num tiles
	;  r6 = tile offset
	;  r7 = map offset
	;  destination addr
	mov r7, r8
	ldr r0, [r4,116]
	lsl r1, r7, 1
	add r1, r0
	
	;  dma3 wait
@@wait:
	ldr r0, [r2,8]
	lsr r0, 31
	cmp r0, 0
	bne @@wait	
	
	mov r2, 0
@@loop:
	strh r3, [r1]
	add r3, 1
	add r1, 2
	add r2, 1
	cmp r2, r5
	blo @@loop
	
	; deallocate tile space
	add sp, 508
	
	; update [sp,34]
	add r7, r5
	lsl r7, 16
	str r7, [sp,32]
	
	; r10 is num tiles
	mov r10, r5
	
	b 0x8015F36
.pool

@@bx_r7:
	bx r7
.endarea


; *** command E019
; -------------------------------------------
; r7: title card tile offset
; free: r0, r1, r2, r3, r4, r5, r6, r8, r9

.org 0x8015B9A
.area 0x8015C20-.
	;ldr r4, =0x3007470
	; trying to squeeze some space...
	ldr r4, [0x8015C64]
	; string length was stored in sp+36
	ldr r5, [sp,36]
	
	; allocate
	sub sp, 508
	
	; create temp string
	ldr r0, [r4,36]
	mov r1, sp
	mov r2, 0
	; update script counter
	add r3, r0, r5
	str r3, [r4,36]

@@loop:
	ldrb r3, [r0,r2]
	strb r3, [r1,r2]
	add r2, 1
	cmp r2, r5
	blo @@loop
	
	; "null" char
	mov r3, 0xFF
	strb r3, [r1,r2]
	
	; render string
	;  string
	mov r0, sp
	;  colors
	ldr r1, [r4,120]
	add r1, 18
	;  offset
	mov r2, 0
	;  des
	add r3, sp, 16
	ldr r6, =RenderString+1
	bl @@bx_r6
	
	; find tiles used
	mov r0, sp
	ldr r6, =CalcStringWidth+1
	bl @@bx_r6
	add r5, r0, 6
	lsr r5, 3
	
	; dma transfer
	;  dma3sad
	ldr r0, =0x40000D4
	add r1, sp, 16
	str r1, [r0]
	;  dma3dad
	ldr r1, [r4,112]
	lsl r2, r7, 5
	add r1, r2
	str r1, [r0,4]
	;  dma3cnl
	mov r1, 1
	lsl r1, 31
	lsl r2, r5, 4
	add r1, r2
	str r1, [r0,8]
	
	; deallocate
	add sp, 508
	
	; copy map entries
	;  data: palette + tile index
	ldr r0, [r4,120]
	ldrh r0, [r0,16]
	lsl r0, 12
	add r0, r7
	;  des
	mov r1, sp
	;  also update sp+34
	ldrh r3, [r1,34]
	lsl r2, r3, 1
	add r3, r5
	strh r3, [r1,34]
	ldr r1, [r4,116]
	add r1, r2
	
@@loop2:
	strh r0, [r1]
	add r0, 1
	add r1, 2
	sub r5, 1
	bhi @@loop2

	b 0x8015C20

.pool

@@bx_r6:
	bx r6
.endarea
