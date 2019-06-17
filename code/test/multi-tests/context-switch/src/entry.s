    
    .AREA   _CODE
    .module entry

__context_switch::
    push hl                 ; HL contains to-be-saved stack pointer, save on stack.
    ld hl,#4
    add hl,sp
    ld b,#0
    ld c,(hl)               ; BC contains passed char, target task ID.
    ld hl,#_contable+16+13
    ld de,#16
__loop::
    dec c
    jp z,__end_loop
    add hl,de
    jp __loop

__end_loop::                ; HL now points to target save space.
    pop de                  ; DE contains to-be-saved stack pointer.
    ld (hl),d               ; Store to-be-saved stack pointer.
    dec hl
    ld (hl),e

    ld sp,hl                ; Load HL into stack pointer.
    exx                     ; Restore to-be-saved context.
    ex af,af'
    push iy                 ; Push context into table.
    push ix
    push hl
    push de
    push bc
    push af
    halt