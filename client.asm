_ZN6Player6updateEv:
        sub     sp, sp, #16
        str     x0, [sp, 8]
        ldr     x0, [sp, 8]
        ldr     s30, [x0]
        fmov    s31, 1.0e+0
        fadd    s31, s30, s31
        ldr     x0, [sp, 8]
        str     s31, [x0]
        nop
        add     sp, sp, 16
        ret
_ZN6Player20setPositionAndUpdateEfff:
        stp     x29, x30, [sp, -48]!
        mov     x29, sp
        str     x0, [sp, 40]
        str     s0, [sp, 36]
        str     s1, [sp, 32]
        str     s2, [sp, 28]
        ldr     x0, [sp, 40]
        ldr     s31, [sp, 36]
        str     s31, [x0]
        ldr     x0, [sp, 40]
        ldr     s31, [sp, 32]
        str     s31, [x0, 4]
        ldr     x0, [sp, 40]
        ldr     s31, [sp, 28]
        str     s31, [x0, 8]
        ldr     x0, [sp, 40]
        bl      _ZN6Player6updateEv
        nop
        ldp     x29, x30, [sp], 48
        ret
_ZNK6Player4getXEv:
        sub     sp, sp, #16
        str     x0, [sp, 8]
        ldr     x0, [sp, 8]
        ldr     s31, [x0]
        fmov    s0, s31
        add     sp, sp, 16
        ret
main:
        stp     x29, x30, [sp, -32]!
        mov     x29, sp
        add     x0, sp, 16
        fmov    s2, 3.0e+0
        fmov    s1, 2.0e+0
        fmov    s0, 1.0e+0
        bl      _ZN6Player20setPositionAndUpdateEfff
        add     x0, sp, 16
        bl      _ZNK6Player4getXEv
        fmov    s31, s0
        fcvtzs  s31, s31
        fmov    w0, s31
        ldp     x29, x30, [sp], 32
        ret
