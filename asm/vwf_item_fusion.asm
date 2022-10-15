; vwf_item_fusion.asm
; teod 2022-09-27

; dependencies
; vwf_routines.asm

; replace original subroutine
.org 0x8015418
.area 0x8015444-.
	ldr r1, =@render+1
	bx r1
.pool
.endarea

; new code
;r0 = struct
;   0 : map addr
;   4 : string
;   8 : tile base addr
;  12 : tile offset
;  14 : palette
;  15 : text color
;  16 : bg color
.autoregion
@render:
	push {r4-r5,lr}
	mov r4, r0
	sub sp, 508
	
	; render string
	ldr r0, [r4,4]
	mov r1, r4
	add r1, 15
	mov r2, 0
	mov r3, sp
	bl RenderString
	
	
	; calculate tiles needed
	ldr r0, [r4,4]
	bl CalcStringWidth
	; round up to nearest tile (8px)
	;add r5, r0, 7
	add r5, r0, 6
	lsr r5, 3
	
	
	; dma transfer
	ldr r2, =0x40000D4
	
	;  dma3sad
	mov r0, sp
	str r0, [r2]
	
	;  dma3dad
	ldr r1, [r4,8]
	ldrh r0, [r4,12]
	lsl r0, 5
	add r0, r1
	str r0, [r2,4]
	
	;  dma3cnl
	ldr r0, =0x80000000
	lsl r1, r5, 4
	add r0, r1
	str r0, [r2,8]

	; busy loop
@@wait:
	ldr r0, [r2,8]
	lsr r0, 31
	cmp r0, 0
	bne @@wait
	
	; write map entries
	;  data
	ldrb r0, [r4,14]
	lsl r0, 12
	ldr r1, [r4,12]
	add r0, r1
	;  des
	ldr r2, [r4]
	
	mov r3, 0

@@loop:
	strh r0, [r2]
	add r0, 1
	add r2, 2
	add r3, 1
	cmp r3, r5
	blo @@loop

	add sp, 508
	pop {r4-r5}
	pop {r0}
	bx r0
.pool
.endautoregion
