
    .module task

    .AREA   _CODE

__tskmain::
    ; Iterate over all tasks checking "valid" flag.
    ld hl,#_tsktable            ; Initialise HL to point to first entry in tsktable.
    ld bc,#0

    ld d,#1                     ; Iterate over entries for a max of 10 tasks, 0 reserved for main task.
__tskmain_loop::
    add hl,bc

    push hl
    inc hl                      ; HL now points to "valid" in tsktable entry.
    ld a,(hl)                   ; a now contains value of "valid" in tsktable entry.
    ; START PROCCESS "VALID"...
    or a                        ; Checks if a is 0.
    jp nz,__tskmain_valid       ; If a (valid) is non-zero, jump to task processing.
    ; END PROCCESS "VALID"...
    pop hl

    inc d                       ; Incriment d, iteration tracker.
    ld a,#10                    ; Load 10 into a.
    sub d                       ; Subtracts d from a, setting zero flag if required.
    jp z,__tskmain_endloop      ; Check zero flag...
    
    ld bc,#24
    jp __tskmain_loop
    ; If valid task found, switch context and call.

__tskmain_endloop::             ; Exit point of main task manager loop.
    halt

__tskmain_valid::               ; Proccesing to start a task, "valid" entry in d.
    ; START SWAP CONTEXT
    ; SAVE CURRENT TASK...
    ld (#_contable+12),sp       ; Save sp to context table.
    ld sp,#_contable+12         ; Set stack pointer to point to 1 above area to save registers.
    push iy
    push ix
    push hl
    push de
    push bc
    push af
    ld sp,(#_contable+12)       ; Restore sp just in case needed. 

    ; LOAD TARGET TASK...
    exx                         ; Swap registers with shadow registers.
    ex af,af'
    ; SET HL TO POINT TO STORED STACK POINTER
    ld b,(hl)
    dec hl
    ld c,(hl)
    ld h,b
    ld l,c
    ld sp,hl
    ; Set stack pointer to bottom of context table for target task.
    ex af,af'                   ; Swap registers with shadow registers.
    exx
    pop af
    pop bc
    pop de
    pop hl
    pop ix
    pop iy
    ; END SWAP CONTEXT

    halt