    
    .AREA   _CODE
    .module con_save

; =================================================================
; void _context_save(char tsk_id);
; -----------------------------------------------------------------
; =================================================================
__context_save::
    exx                     ; Store the context.
    ex af,af'

    ld hl,#2
    add hl,sp
    ld b,#0
    ld c,(hl)               ; BC contains passed char, target task ID.
    ld hl,#_contable+14
    ld de,#16

    ld a,#0                 ; Check if c is 0.
    cp c
    jp z,__cs_end_loop

    add hl,de
__cs_loop::
    dec c
    jp z,__cs_end_loop
    add hl,de
    jp __cs_loop

__cs_end_loop::             ; HL now points to target save space.
    ex de,hl                ; Swap target save into DE.
    ld hl,#0                ; Clear HL.
    add hl,sp               ; Load stack pointer into HL.
    ld b,h
    ld c,l
    inc hl                  ; Add 3.
    inc hl
    inc hl
    ex de,hl                ; Swap DE and HL.
    
    ld sp,hl                ; Load HL into stack pointer.
    push de
    exx                     ; Restore to-be-saved context.
    ex af,af'
    push iy                 ; Push context into table.
    push ix
    push hl
    push de
    push bc
    push af

    exx                     ; Restore stack pointer to where it was before.
    ld h,b
    ld l,c
    ld sp,hl
    
    exx                     ; Restore registers to original values.
    ret
; =================================================================
