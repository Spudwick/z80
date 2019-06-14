
    .module task

    .AREA   _CODE

__tskmain::
    ; Iterate over all tasks checking "valid" flag.
    ld hl,#_tsktable            ; Initialise HL to point to first entry in tsktable.
    ld bc,#0

    ld d,#0                     ; Iterate over entries for a max of 10 tasks.
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

__tskmain_valid::               ; Proccesing to start a task, "valid" entry in d.
    nop

__tskmain_endloop::
    halt