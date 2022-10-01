; teod
; 2022-09-24



; dependencies
;   Font.asm

; follows general calling convention
; r0-r3, and r12 are always available
; values are returned on r0

; input
;   r0 = string addr
; output
;   r0 = string width in pixels
.autoregion
CalcStringWidth:
	mov r2, 0
	ldr r3, =WidthTable
@@loop:
	ldrb r1, [r0]
	cmp r1, 0xFF
	beq @@done
	ldrb r1, [r3,r1]
	add r2, r1
	add r0, 1
	b @@loop
@@done:
	mov r0, r2
	bx lr
.pool
.endautoregion


; input
;   r0 = 8 byte bitmap
;   r1 = main color
;   r2 = bg color
;   r3 = tile buffer
.autoregion
renderBitmapTile:
	push {r4-r7}
	; main pattern
	ldr r4, =0x11011000
	mul r4, r1
	; bg pattern
	ldr r5, =0x00100111
	mul r5, r2
	orr r4, r5
	
	mov r6, 0

@@loop:
	ldrb r1, [r0]
	
	mov r2, 0xC0
	and r2, r1
	lsr r2, 3
	mov r5, r4
	lsr r5, r2
	strb r5, [r3]
	
	mov r2, 0x30
	and r2, r1
	lsr r2, 1
	mov r5, r4
	lsr r5, r2
	strb r5, [r3,1]
	
	mov r2, 0xC
	and r2, r1
	lsl r2, 1
	mov r5, r4
	lsr r5, r2
	strb r5, [r3,2]
	
	mov r2, 3
	and r2, r1
	lsl r2, 3
	mov r5, r4
	lsr r5, r2
	strb r5, [r3,3]
	
	add r0, 1
	add r3, 4
	add r6, 1
	cmp r6, 8
	blo @@loop
	
	pop {r4-r7}
	bx lr
.pool
.endautoregion


; input
;   r0 = string
;   r1 = offset (0..7)
;   r2 = bitmap buffer (must zero buffer first)
.autoregion
renderBitmapString:
	push {r4-r7}
	mov r4, r0
	mov r5, r1
	;mov r6, r2

@@nextChar:
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq @@done
	
	; get char bitmap
	; src
	ldr r1, =Font
	lsl r0, 3
	add r1, r0

	; I HAZ ALL THE SPAZE!!!
	
	ldrb r0, [r2]
	ldrb r3, [r1]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2]
	
	ldrb r0, [r2,1]
	ldrb r3, [r1,1]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,1]
	
	ldrb r0, [r2,2]
	ldrb r3, [r1,2]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,2]
	
	ldrb r0, [r2,3]
	ldrb r3, [r1,3]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,3]
	
	ldrb r0, [r2,4]
	ldrb r3, [r1,4]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,4]
	
	ldrb r0, [r2,5]
	ldrb r3, [r1,5]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,5]
	
	ldrb r0, [r2,6]
	ldrb r3, [r1,6]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,6]
	
	ldrb r0, [r2,7]
	ldrb r3, [r1,7]
	lsr r3, r5
	orr r0, r3
	strb r0, [r2,7]
	
	; get width
	ldr r0, =WidthTable
	ldrb r3, [r4]
	ldrb r6, [r0,r3]
	add r6, r5
	cmp r6, 7
	bls @@skipRight
	add r2, 8
	cmp r6, 8
	beq @@skipRight
	
	neg r5, r5
	add r5, 8
	
	ldrb r0, [r2]
	ldrb r3, [r1]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2]
	
	ldrb r0, [r2,1]
	ldrb r3, [r1,1]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,1]
	
	ldrb r0, [r2,2]
	ldrb r3, [r1,2]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,2]
	
	ldrb r0, [r2,3]
	ldrb r3, [r1,3]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,3]
	
	ldrb r0, [r2,4]
	ldrb r3, [r1,4]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,4]
	
	ldrb r0, [r2,5]
	ldrb r3, [r1,5]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,5]
	
	ldrb r0, [r2,6]
	ldrb r3, [r1,6]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,6]
	
	ldrb r0, [r2,7]
	ldrb r3, [r1,7]
	lsl r3, r5
	orr r0, r3
	strb r0, [r2,7]

@@skipRight:
	mov r5, 7
	and r5, r6
	add r4, 1
	b @@nextChar
	
	
	

@@done:
	pop {r4-r7}
	bx lr
.pool
.endautoregion



; input
;   r0 = src string addr
;   r1 = color struct
;        0 : main color
;        1 : bg color
;   r2 = offset (0..7)
;   r3 = des buffer
.autoregion
RenderString:
	push {r4-r7,lr}
	mov r4, r0
	mov r5, r1
	mov r6, r2
	mov r7, r3
	
	; lets allocate 16 tiles worth
	; 16 * 8 bytes
	sub sp, 128
	mov r0, sp
	mov r1, 0
	str r1, [r0]
	mov r1, sp
	ldr r2, =0x1000000+32
	bl @CpuFastSet
	
	
	mov r0, r4
	mov r1, 0
	mov r2, sp
	bl renderBitmapString
	
	; now just render them
	mov r0, r4
	bl CalcStringWidth
	add r0, 7
	lsr r0, 3
	mov r6, r0
	
	mov r4, sp

@@loop:
	mov r0, r4
	ldrb r1, [r5]
	ldrb r2, [r5,1]
	mov r3, r7
	bl renderBitmapTile
	
	add r4, 8
	sub r6, 1
	add r7, 32
	cmp r6, 0
	bgt @@loop
	
	add sp, 128
@@done:
	pop {r4-r7}
	pop {r0}
	bx r0
.pool
.endautoregion
	
.autoregion
@CpuFastSet:
	swi 12
	bx lr
.endautoregion