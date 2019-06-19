
    .AREA   _CODE
    .module con_load

; =================================================================
; void _context_load(char tsk_id);
; -----------------------------------------------------------------
; =================================================================
__context_load::
    ld hl,#2
    add hl,sp
    ld b,#0
    ld c,(hl)               ; BC contains passed char, target task ID.
    ld hl,#_contable+0
    ld de,#16

    ld a,#0                 ; Check if c is 0.
    cp c
    jp z,__cl_end_loop

    add hl,de
__cl_loop::
    dec c
    jp z,__cl_end_loop
    add hl,de
    jp __cl_loop

__cl_end_loop::             ; HL now points to target save space.
    ex de,hl                ; Swap target save into DE.
    ld hl,#0                ; Clear HL.
    add hl,sp               ; Load stack pointer into HL.
    ex de,hl                ; Swap DE and HL.
    
    ld sp,hl                ; Load HL into stack pointer.
    
    exx
    pop af
    pop bc
    pop de
    pop hl
    pop ix
    pop iy
    exx                     ; Retain new context in shadow registers.
    pop hl

    ex de,hl                ; Swap DE and HL.
    ld sp,hl                ; Load HL into stack pointer.

    ex de,hl                ; Stack pointer to change to after return stored in HL.
    ret
; =================================================================