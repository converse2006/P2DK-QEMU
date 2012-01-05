# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/isr.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/isr.S"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpe32/drow.h" 1
# 2 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/isr.S" 2
.include "inc/asm.S"

.section .text

.global irq_isr
irq_isr:

{andi r0, sp3, 0xfffffff8 |nop |nop |nop |nop}

{addi r0, r0, -552 |nop |nop |nop |nop}

{sw sr11, r0, 0x0 | nop | nop | nop | nop }

{sw r1, r0, 0x4 | nop | nop | nop | nop }

{sw r2, r0, 0x8 | nop | nop | nop | nop }

{bdr r1 | bdt a0 | nop | nop | nop }

{bdr r2 | copy a0, amcr | nop | bdt a0 | nop }

{nop | nop | nop | nop | nop }

{sw r1, r0, 0x100 | nop | nop | copy a0, amcr | nop }

{sw r2, r0, 0x1d0 | movi amcr, 0x0 | nop | movi amcr, 0x0 | nop }

{bdr r1 | bdt a0 | nop | nop | nop }

{bdr r2 | nop | nop | bdt a0 | nop }

{bdt r0 | bdr a0 | nop | nop | nop }

{nop | nop | nop | nop | nop }

{bdt r0 | nop | nop | bdr a0 | nop }

{nop | nop | nop | nop | nop }

{sw r1, r0, 0x220 | sw d0, a0, 0x80 | nop | sw d0, a0, 0x150 | nop }

{nop | sw d1, a0, 0x84 | nop | sw d1, a0, 0x154 | nop }

{sw r2, r0, 0x224 | sw d8, a0, 0xa0 | copy d0, ac0 | sw d8, a0, 0x170 | copy d0, ac0 }

{nop | sw d9, a0, 0xa4 | nop | sw d9, a0, 0x174 | nop }

{sw r3, r0, 0xc | sw d10, a0, 0xa8 | copy d1, ac1 | sw d10, a0, 0x178 | copy d1, ac1 }

{nop | sw d11, a0, 0xac | nop | sw d11, a0, 0x17c | nop }

{sw r4, r0, 0x10 | sw d2, a0, 0x88 | srli d8, ac0, 0x20 | sw d2, a0, 0x158 | srli d8, ac0, 0x20 }

{nop | sw d3, a0, 0x8c | nop | sw d3, a0, 0x15c | nop }

{nop | sw d4, a0, 0x90 | srli d9, ac1, 0x20 | sw d4, a0, 0x160 | srli d9, ac1, 0x20 }

{nop | sw d5, a0, 0x94 | nop | sw d5, a0, 0x164 | nop }

{sw r5, r0, 0x14 | sw d6, a0, 0x98 | srli d10, ac2, 0x20 | sw d6, a0, 0x168 | srli d10, ac2, 0x20 }

{nop | sw d7, a0, 0x9c | nop | sw d7, a0, 0x16c | nop }

{sw r6, r0, 0x18 | sw d12, a0, 0xb0 | copy d2, ac2 | sw d12, a0, 0x180 | copy d2, ac2 }

{nop | sw d13, a0, 0xb4 | nop | sw d13, a0, 0x184 | nop }

{nop | sw d14, a0, 0xb8 | copy d3, ac3 | sw d14, a0, 0x188 | copy d3, ac3 }

{nop | sw d15, a0, 0xbc | nop | sw d15, a0, 0x18c | nop }

{sw r7, r0, 0x1c | sw a1, a0, 0x104 | srli d11, ac3, 0x20 | sw a1, a0, 0x1d4 | srli d11, ac3, 0x20 }

{sw r8, r0, 0x20 | sw a2, a0, 0x108 | srli d12, ac4, 0x20 | sw a2, a0, 0x1d8 | srli d12, ac4, 0x20 }

{nop | sw a3, a0, 0x10c | nop | sw a3, a0, 0x1dc | nop }

{sw r9, r0, 0x24 | sw a4, a0, 0x110 | srli d13, ac5, 0x20 | sw a4, a0, 0x1e0 | srli d13, ac5, 0x20 }

{nop | sw a5, a0, 0x114 | nop | sw a5, a0, 0x1e4 | nop }

{sw r10, r0, 0x28 | sw a6, a0, 0x118 | srli d14, ac6, 0x20 | sw a6, a0, 0x1e8 | srli d14, ac6, 0x20 }

{nop | sw a7, a0, 0x11c | nop | sw a7, a0, 0x1ec | nop }

{sw r11, r0, 0x2c | sw d0, a0, 0xc0 | srli d15, ac7, 0x20 | sw d0, a0, 0x190 | srli d15, ac7, 0x20 }

{nop | sw d1, a0, 0xc4 | nop | sw d1, a0, 0x194 | nop }

{sw r12, r0, 0x30 | sw d8, a0, 0xe0 | copy d4, ac4 | sw d8, a0, 0x1b0 | copy d4, ac4 }

{nop | sw d9, a0, 0xe4 | nop | sw d9, a0, 0x1b4 | nop }

{sw r13, r0, 0x34 | sw d10, a0, 0xe8 | copy d5, ac5 | sw d10, a0, 0x1b8 | copy d5, ac5 }

{nop | sw d11, a0, 0xec | nop | sw d11, a0, 0x1bc | nop }

{sw r14, r0, 0x38 | sw d12, a0, 0xf0 | copy d6, ac6 | sw d12, a0, 0x1c0 | copy d6, ac6 }

{nop | sw d13, a0, 0xf4 | nop | sw d13, a0, 0x1c4 | nop }

{sw r15, r0, 0x3c | sw d14, a0, 0xf8 | copy d7, ac7 | sw d14, a0, 0x1c8 | copy d7, ac7 }

{nop | sw d15, a0, 0xfc | nop | sw d15, a0, 0x1cc | nop }

{copy r1, sr0 | sw d2, a0, 0xc8 | copy d8, cp0 | sw d2, a0, 0x198 | copy d8, cp0 }

{nop | sw d3, a0, 0xcc | nop | sw d3, a0, 0x19c | nop }

{copy r2, sr1 | sw d4, a0, 0xd0 | copy d9, cp1 | sw d4, a0, 0x1a0 | copy d9, cp1 }

{nop | sw d5, a0, 0xd4 | nop | sw d5, a0, 0x1a4 | nop }

{copy r3, sr2 | sw d6, a0, 0xd8 | set_cpi cp0, 0x0, 0x1 | sw d6, a0, 0x1a8 | set_cpi cp0, 0x0, 0x1 }

{nop | sw d7, a0, 0xdc | nop | sw d7, a0, 0x1ac | nop }

{copy r4, sr3 | sw d8, a0, 0x140 | set_cpi cp1, 0x1, 0x1 | sw d8, a0, 0x210 | set_cpi cp1, 0x1, 0x1 }

{nop | sw d9, a0, 0x144 | nop | sw d9, a0, 0x214 | nop }

{copy r5, sr4 | nop | nop | nop | nop }

{copy r6, sr5 | nop | nop | nop | nop }

{copy r7, sr6 | nop | nop | nop | nop }

{copy r8, sr7 | nop | nop | nop | nop }

{copy r9, sr8 | nop | nop | nop | nop }

{copy r10, sr9 | sw [cp0], a0, 0x120 | copy d2, ls_psr | sw [cp0], a0, 0x1f0 | copy d2, ls_psr }

{copy r11, sr10 | sw [cp0], a0, 0x124 | copy d3, au_psr | sw [cp0], a0, 0x1f4 | copy d3, au_psr }

{copy r12, sr11 | sw [cp0], a0, 0x128 | nop | sw [cp0], a0, 0x1f8 | nop }

{copy r13, sr12 | sw [cp0], a0, 0x12c | movi ls_psr, 0x0 | sw [cp0], a0, 0x1fc | movi ls_psr, 0x0 }

{copy r14, sr13 | sw [cp0], a0, 0x130 | movi au_psr, 0x0 | sw [cp0], a0, 0x200 | movi au_psr, 0x0 }

{copy r15, sr14 | sw [cp0], a0, 0x134 | nop | sw [cp0], a0, 0x204 | nop }

{sw r1, r0, 0x40 | sw [cp0], a0, 0x138 | nop | sw [cp0], a0, 0x208 | nop }

{sw r2, r0, 0x44 | sw [cp0], a0, 0x13c | nop | sw [cp0], a0, 0x20c | nop }

{sw r3, r0, 0x48 | sw d2, a0, 0x148 | nop | sw d2, a0, 0x218 | nop }

{nop | sw d3, a0, 0x14c | nop | sw d3, a0, 0x21c | nop }

{sw r4, r0, 0x4c | nop | nop | nop | nop }

{sw r5, r0, 0x50 | nop | nop | nop | nop }

{sw r6, r0, 0x54 | nop | nop | nop | nop }

{sw r7, r0, 0x58 | nop | nop | nop | nop }

{sw r8, r0, 0x5c | nop | nop | nop | nop }

{sw r9, r0, 0x60 | nop | nop | nop | nop }

{sw r10, r0, 0x64 | nop | nop | nop | nop }

{sw r11, r0, 0x68 | nop | nop | nop | nop }

{sw r12, r0, 0x6c | nop | nop | nop | nop }

{sw r13, r0, 0x70 | nop | nop | nop | nop }

{sw r14, r0, 0x74 | nop | nop | nop | nop }

{sw r15, r0, 0x78 | nop | nop | nop | nop }

{read_flag r1 | nop | nop | nop | nop }

{sw r1, r0, 0x7c | nop | nop | nop | nop }

{copy sp3, r0 | nop | nop | nop | nop }

{bdt sp3 | bdr sp | nop | nop | nop }

{bdt sp3 | nop | nop | bdr sp2 | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{(p0)b r7, irq_c_handler | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

; irq restore
{nop | copy a0, sp | nop | nop | nop}

{nop | movi amcr, 0x0 | nop | movi amcr, 0x0 | nop }

{bdr r0 | bdt a0 | nop | nop | nop }

{nop | bdt a0 | nop | bdr a0 | nop }

{nop | movi ls_psr, 0x0 | movi au_psr, 0x0 | movi ls_psr, 0x0 | movi au_psr, 0x0 }

{lw r1, r0, 0x7c | nop | nop | nop | nop }

{nop | nop | set_cpi cp0, 0x6, 0xe | nop | set_cpi cp0, 0x6, 0xe }

{nop | nop | set_cpi cp1, 0x7, 0xe | nop | set_cpi cp1, 0x7, 0xe }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{lw r15,r0, 0x78 | lw d2, a0, 0x148 | nop | lw d2, a0, 0x218 | nop }

{nop | lw d3, a0, 0x14c | nop | lw d3, a0, 0x21c | nop }

{lw r14,r0, 0x74 | lw [cp0], a0, 0x138 | nop | lw [cp0], a0, 0x208 | nop }

{lw r13,r0, 0x70 | lw [cp0], a0, 0x130 | nop | lw [cp0], a0, 0x200 | nop }

{lw r12,r0, 0x6c | lw [cp0], a0, 0x128 | srli d2, d2, 0x02 | lw [cp0], a0, 0x1f8 | srli d2, d2, 0x02 }

{lw r11,r0, 0x68 | lw [cp0], a0, 0x120 | srli d3, d3, 0x02 | lw [cp0], a0, 0x1f0 | srli d3, d3, 0x02 }

{lw r10,r0, 0x64 | nop | nop | nop | nop }

{write_flag r1 | lw d14, a0, 0xf8 | copy ls_psr, d2 | lw d14, a0, 0x1c8 | copy ls_psr, d2 }

{nop | lw d15, a0, 0xfc | nop | lw d15, a0, 0x1cc | nop }

{lw r9 ,r0, 0x60 | lw d12, a0, 0xf0 | copy au_psr, d3 | lw d12, a0, 0x1c0 | copy au_psr, d3 }

{nop | lw d13, a0, 0xf4 | nop | lw d13, a0, 0x1c4 | nop }

{lw r8 ,r0, 0x5c | lw d10, a0, 0xe8 | copy cp0, d0 | lw d10, a0, 0x1b8 | copy cp0, d0 }

{nop | lw d11, a0, 0xec | nop | lw d11, a0, 0x1bc | nop }

{lw r7 ,r0, 0x58 | lw d8, a0, 0xe0 | copy cp1, d1 | lw d8, a0, 0x1b0 | copy cp1, d1 }

{nop | lw d9, a0, 0xe4 | nop | lw d9, a0, 0x1b4 | nop }

{lw r6 ,r0, 0x54 | lw a6, a0, 0x118 | slli ac7, d15, 0x20 | lw a6, a0, 0x1e8 | slli ac7, d15, 0x20 }

{nop | lw a7, a0, 0x11c | nop | lw a7, a0, 0x1ec | nop }

{lw r5 ,r0, 0x50 | lw a4, a0, 0x110 | slli ac6, d14, 0x20 | lw a4, a0, 0x1e0 | slli ac6, d14, 0x20 }

{nop | lw a5, a0, 0x114 | nop | lw a5, a0, 0x1e4 | nop }

{lw r4 ,r0, 0x4c | lw a2, a0, 0x108 | slli ac5, d13, 0x20 | lw a2, a0, 0x1d8 | slli ac5, d13, 0x20 }

{nop | lw a3, a0, 0x10c | nop | lw a3, a0, 0x1dc | nop }

{lw r3 ,r0, 0x48 | lw a1, a0, 0x104 | slli ac4, d12, 0x20 | lw a1, a0, 0x1d4 | slli ac4, d12, 0x20 }

{lw r2 ,r0, 0x44 | lw d6, a0, 0xd8 | slli ac3, d11, 0x20 | lw d6, a0, 0x1a8 | slli ac3, d11, 0x20 }

{nop | lw d7, a0, 0xdc | nop | lw d7, a0, 0x1ac | nop }

{lw r1 ,r0, 0x40 | lw d4, a0, 0xd0 | slli ac2, d10, 0x20 | lw d4, a0, 0x1a0 | slli ac2, d10, 0x20 }

{nop | lw d5, a0, 0xd4 | nop | lw d5, a0, 0x1a4 | nop }

{copy sr14 , r15 | lw d2, a0, 0xc8 | slli ac1, d9 , 0x20 | lw d2, a0, 0x198 | slli ac1, d9 , 0x20 }

{nop | lw d3, a0, 0xcc | nop | lw d3, a0, 0x19c | nop }

{copy sr13 , r14 | lw d0, a0, 0xc0 | slli ac0, d8 , 0x20 | lw d0, a0, 0x190 | slli ac0, d8 , 0x20 }

{nop | lw d1, a0, 0xc4 | nop | lw d1, a0, 0x194 | nop }

{copy sr12 , r13 | lw d14, a0, 0xb8 | addu ac7, ac7, d7 | lw d14, a0, 0x188 | addu ac7, ac7, d7 }

{nop | lw d15, a0, 0xbc | nop | lw d15, a0, 0x18c | nop }

{copy sr11 , r12 | lw d12, a0, 0xb0 | addu ac6, ac6, d6 | lw d12, a0, 0x180 | addu ac6, ac6, d6 }

{nop | lw d13, a0, 0xb4 | nop | lw d13, a0, 0x184 | nop }

{copy sr10 , r11 | lw d10, a0, 0xa8 | addu ac5, ac5, d5 | lw d10, a0, 0x178 | addu ac5, ac5, d5 }

{nop | lw d11, a0, 0xac | nop | lw d11, a0, 0x17c | nop }

{copy sr9 , r10 | lw d8, a0, 0xa0 | addu ac4, ac4, d4 | lw d8, a0, 0x170 | addu ac4, ac4, d4 }

{nop | lw d9, a0, 0xa4 | nop | lw d9, a0, 0x174 | nop }

{copy sr8 , r9 | nop | addu ac3, ac3, d3 | nop | addu ac3, ac3, d3 }

{copy sr7 , r8 | nop | addu ac2, ac2, d2 | nop | addu ac2, ac2, d2 }

{copy sr6 , r7 | nop | addu ac1, ac1, d1 | nop | addu ac1, ac1, d1 }

{copy sr5 , r6 | nop | addu ac0, ac0, d0 | nop | addu ac0, ac0, d0 }

{copy sr4 , r5 | lw d6, a0, 0x98 | nop | lw d6, a0, 0x168 | nop }

{nop | lw d7, a0, 0x9c | nop | lw d7, a0, 0x16c | nop }

{copy sr3 , r4 | lw d4, a0, 0x90 | nop | lw d4, a0, 0x160 | nop }

{nop | lw d5, a0, 0x94 | nop | lw d5, a0, 0x164 | nop }

{copy sr2 , r3 | lw d2, a0, 0x88 | nop | lw d2, a0, 0x158 | nop }

{nop | lw d3, a0, 0x8c | nop | lw d3, a0, 0x15c | nop }

;restor sr1(i.e., MAYBE enable int)
{copy sr1 , r2 | lw d0, a0, 0x80 | nop | lw d0, a0, 0x150 | nop }
;{nop | lw d0, a0, 0x80 | nop | lw d0, a0, 0x150 | nop }

{nop | lw d1, a0, 0x84 | nop | lw d1, a0, 0x154 | nop }

{copy sr0 , r1 | nop | nop | nop | nop }

{lw r15 ,r0, 0x3c | nop | nop | nop | nop }

{lw r14 ,r0, 0x38 | nop | nop | nop | nop }

{lw r13 ,r0, 0x34 | nop | nop | nop | nop }

{lw r12 ,r0, 0x30 | nop | nop | nop | nop }

{lw r11 ,r0, 0x2c | nop | nop | nop | nop }

{lw r10 ,r0, 0x28 | nop | nop | nop | nop }

{lw r3 ,r0, 0x220 | nop | nop | nop | nop }

{lw r2 ,r0, 0x224 | nop | nop | nop | nop }

{lw r9 ,r0, 0x24 | nop | nop | nop | nop }

{bdt r3 | bdr a0 | nop | nop | nop }

{bdt r2 | nop | nop | bdr a0 | nop }

{lw r3 ,r0, 0x100 | nop | nop | nop | nop }

{lw r2 ,r0, 0x1d0 | copy amcr, a0 | nop | nop | nop }

{lw r8 ,r0, 0x20 | nop | nop | copy amcr, a0 | nop }

{bdt r3 | bdr a0 | nop | nop | nop }

{bdt r2 | nop | nop | bdr a0 | nop }

{lw r7 ,r0, 0x1c | nop | nop | nop | nop }

{lw r6 ,r0, 0x18 | nop | nop | nop | nop }

{lw r5 ,r0, 0x14 | nop | nop | nop | nop }

{lw r4 ,r0, 0x10 | nop | nop | nop | nop }

{lw r3 ,r0, 0xc | nop | nop | nop | nop }

{lw r2 ,r0, 0x8 | nop | nop | nop | nop }

{lw r1 ,r0, 0x4 | nop | nop | nop | nop }

{lw r0 ,r0, 0x0 | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

; break loop
{moviu r1, 123 |nop |nop |nop |nop}
_mem_delayed_s3

{roe | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }

{nop | nop | nop | nop | nop }
