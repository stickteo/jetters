

; render all bomber album icons
; (removes check to not render)
.org 0x8042910
; BEQ     loc_804295A
mov r0, 0

; render all bomber album description
.org 0x80427F4
; BEQ     loc_8042808
mov r0, 0

; unlock all boxart
.org 0x8042B94
mov r0, 0

; all flags return 1
; softlocks due to triggering kaiman win event
; .org 0x80355E8
; ANDS    R0, R2
; mov r0, 1
