# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/hal.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/hal.S"
# 26 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/hal.S"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpe32/drow.h" 1
# 27 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/hal.S" 2
.include "inc/asm.S"

; date private to dsp side
.section .data

.section .text

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.global enable_int
enable_int:

{ENABLE_INT| nop |nop |nop | nop}
_void_return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.global disable_int
disable_int:

{DISABLE_INT|nop |nop |nop |nop}
_void_return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.global asm_wait_int
asm_wait_int:

; Push r0~r2 into Stack
{sw r0, r8, (-4)+ |nop |nop |nop |nop}
{sw r1, r8, (-4)+ |nop |nop |nop |nop}

_gen_nop_pkg 2

;{(p0)b r7, dbg_int |nop |nop |nop |nop}
;_branch_delayed_s5

{moviu r1, 1 |nop |nop |nop |nop}
 asm_wait_int_loop:
 {ENABLE_INT | nop |nop |nop |nop}
 _gen_nop_pkg 10
 {DISABLE_INT| nop |nop |nop |nop}
 _gen_nop_pkg 5
 ; if (r1 == 1) {p1 = 1; p2 = 0; r0 = 1;}
 {seqiu r0, p1, p2, r1, 1 |nop |nop |nop |nop}
 _branch_delayed_s5
 {(p1)b asm_wait_int_loop |nop |nop |nop |nop}
 _branch_delayed_s5

; Load r0~r2 from Stack
{addi r0, r0, 4 |nop |nop |nop |nop}
{lw r1, r8, 4+ |nop |nop |nop |nop}
{lw r0, r8, 4+ |nop |nop |nop |nop}

_void_return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.global irq_isr_s1_only
irq_isr_s1_only:
; Push r1~r15 into stack
{copy r0, r8 |nop |nop |nop |nop}
{sw r1, r0, (-4)+ |nop |nop |nop |nop}
{sw r2, r0, (-4)+ |nop |nop |nop |nop}
{sw r3, r0, (-4)+ |nop |nop |nop |nop}
{sw r4, r0, (-4)+ |nop |nop |nop |nop}
{sw r5, r0, (-4)+ |nop |nop |nop |nop}
{sw r6, r0, (-4)+ |nop |nop |nop |nop}
{sw r7, r0, (-4)+ |nop |nop |nop |nop}
{sw r8, r0, (-4)+ |nop |nop |nop |nop}
{sw r9, r0, (-4)+ |nop |nop |nop |nop}
{sw r10, r0, (-4)+ |nop |nop |nop |nop}
{sw r11, r0, (-4)+ |nop |nop |nop |nop}
{sw r12, r0, (-4)+ |nop |nop |nop |nop}
{sw r13, r0, (-4)+ |nop |nop |nop |nop}
{sw r14, r0, (-4)+ |nop |nop |nop |nop}
{sw r15, r0, (-4)+ |nop |nop |nop |nop}

;; TODO: moviu could handle 32bit immediate
_mem_delayed_s3

foo1:
{copy r1, sp3 |nop | nop| nop| nop}
foo2:

; Load r15~r1 from Stack
{addi r0, r0, 4 |nop |nop |nop |nop}
{lw r15, r0, 4+ |nop |nop |nop |nop}
{lw r14, r0, 4+ |nop |nop |nop |nop}
{lw r13, r0, 4+ |nop |nop |nop |nop}
{lw r12, r0, 4+ |nop |nop |nop |nop}
{lw r11, r0, 4+ |nop |nop |nop |nop}
{lw r10, r0, 4+ |nop |nop |nop |nop}
{lw r9, r0, 4+ |nop |nop |nop |nop}
{lw r8, r0, 4+ |nop |nop |nop |nop}
{lw r7, r0, 4+ |nop |nop |nop |nop}
{lw r6, r0, 4+ |nop |nop |nop |nop}
{lw r5, r0, 4+ |nop |nop |nop |nop}
{lw r4, r0, 4+ |nop |nop |nop |nop}
{lw r3, r0, 4+ |nop |nop |nop |nop}
{lw r2, r0, 4+ |nop |nop |nop |nop}
{lw r1, r0, 4+ |nop |nop |nop |nop}

; Break loop
{moviu r1, 123 |nop |nop |nop |nop}
_mem_delayed_s3

; ISR Terminate
{ roe | nop | nop | nop | nop }
_branch_delayed_s5
