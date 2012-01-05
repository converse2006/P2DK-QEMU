# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/crt0.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/crt0.S"
# 28 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/crt0.S"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpe32/drow.h" 1
# 29 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/crt0.S" 2
.include "inc/asm.S"

.section .data

.global hw_info
.global pac_plat_desc
.global mdesc

hw_info:
pac_plat_desc:
 .fill 0x20
mdesc:
 .fill 0x20
stack_start:
 .int 0xffffffff

.section .text

.global crt_start
crt_start:

{movi sr0,0x0 |nop |nop |nop |nop}
_mem_delayed_s3

{moviu r0,0x0 |nop |moviu ac0,0x0 |nop |moviu ac0,0x0}
{moviu r1,0x0 |moviu a1,0x0 |moviu ac1,0x0 |moviu a1,0x0 |moviu ac1,0x0}
{moviu r2,0x0 |moviu a2,0x0 |moviu ac2,0x0 |moviu a2,0x0 |moviu ac2,0x0}
{moviu r3,0x0 |moviu a3,0x0 |moviu ac3,0x0 |moviu a3,0x0 |moviu ac3,0x0}
{moviu r4,0x0 |moviu a4,0x0 |moviu ac4,0x0 |moviu a4,0x0 |moviu ac4,0x0}
{moviu r5,0x0 |moviu a5,0x0 |moviu ac5,0x0 |moviu a5,0x0 |moviu ac5,0x0}
{moviu r6,0x0 |moviu a6,0x0 |moviu ac6,0x0 |moviu a6,0x0 |moviu ac6,0x0}
{moviu r7,0x0 |moviu a7,0x0 |moviu ac7,0x0 |moviu a7,0x0 |moviu ac7,0x0}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; stack setup
{moviu r9,0x0 |nop |nop |nop |nop}

;{moviu r1, stack_start | nop| nop| nop| nop}
;{nop | moviu a1, stack_start | nop| nop| nop}
;{nop | nop | nop | moviu a1, stack_start | nop}

{moviu r1, stack_start | moviu a1, stack_start | nop |moviu a1, stack_start |nop}



; load stack value to r8/a0/a0
{lw r8, r1, 0 |lw a0, a1, 0 |nop |lw a0, a1, 0 |nop}
_mem_delayed_s3
{moviu r1, 0 |moviu a1, 0 |nop |moviu a1, 0 |nop}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

{moviu r10, 0x0 |moviu cp0,0x0 |nop |moviu cp0,0x0 | nop}
{moviu r11, 0x0 |moviu cp1,0x0 |nop |moviu cp1,0x0 | nop}

{moviu r12, 0x0 |nop |moviu LS_PSR, 0x0 |nop |moviu LS_PSR, 0x0}
{moviu r13, 0x0 |nop |moviu AU_PSR, 0x0 |nop |moviu AU_PSR, 0x0}
{moviu r14, 0x0 |nop |moviu AMCR, 0x0 |nop |moviu AMCR, 0x0}

{moviu r15, 0x0 |nop |nop |nop |nop}

{nop |moviu d8, 0x0 |moviu d0, 0x0 |moviu d8, 0x0 |moviu d0, 0x0}
{nop |moviu d9, 0x0 |moviu d1, 0x0 |moviu d9, 0x0 |moviu d1, 0x0}
{nop |moviu d10, 0x0 |moviu d2, 0x0 |moviu d10, 0x0 |moviu d2, 0x0}
{nop |moviu d11, 0x0 |moviu d3, 0x0 |moviu d11, 0x0 |moviu d3, 0x0}
{nop |moviu d12, 0x0 |moviu d4, 0x0 |moviu d12, 0x0 |moviu d4, 0x0}
{nop |moviu d13, 0x0 |moviu d5, 0x0 |moviu d13, 0x0 |moviu d5, 0x0}
{nop |moviu d14, 0x0 |moviu d6, 0x0 |moviu d14, 0x0 |moviu d6, 0x0}
{nop |moviu d15, 0x0 |moviu d7, 0x0 |moviu d15, 0x0 |moviu d7, 0x0}

{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}
{nop |moviu [cp0], 0x0|nop |moviu [cp0], 0x0 | nop}

{nop |movi d4, 0xbedabb1e|nop |nop |nop}

{(p0)b r7, drow_main | movi d5, 0xdeaddea1 |nop |nop |nop}
_branch_delayed_s5

{nop |moviu a0, mdesc |nop |nop |nop}
{nop |lw a1, a0, 0x08 |nop |nop |nop}
{nop |lw a2, a0, 0x0c |nop |nop |nop}
_mem_delayed_s3
{nop |add a1, a1, a2 |nop |nop |nop}
{nop |sw d4, a1, -4 |nop |nop |nop}
_mem_delayed_s3

_exit

.section .ldm

.global ccr_val
ccr_val:
 .fill 16;
