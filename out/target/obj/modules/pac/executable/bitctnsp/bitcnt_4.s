	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_4.c (bitcnt_4.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/bitctnsp/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_4.c"
	.file	3	"/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h"
	.file	4	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"


	.section .data, "wa", "progbits"
	.align	0

	.section .ldm, "wa", "progbits"
	.align	4

	.section .text, "ax", "progbits"
	.align	4
	.section .text

	; Program Unit: pp_wait_mbox
	.proc	pp_wait_mbox#
pp_wait_mbox#:	; 0x0
	; lcl_spill_temp_0 = 16
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_pp_wait_mbox:	; 0x0
	.loc	4	99	0
;  95  int pp_mbox_send_c(struct mbox_msg* msg);
;  96  
;  97  /* Deprecated */
;  98  static inline void pp_wait_mbox(struct mbox_msg *msg)
;  99  {pp_mbox_recv_w(msg);}
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,16 ;;         		; [] lcl_spill_temp_0
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,sp2,32          		; [] msg
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	.global	pp_mbox_recv_w
	      j r7,pp_mbox_recv_w# ;; 		; [] pp_mbox_recv_w
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 2 Pred: 1 Succ: 
; BB:2 cycle count: 0
.BB2_pp_wait_mbox:	; 0x37
 {  
	      lw r7,sp3,16 ;;         		; [] lcl_spill_temp_0
	      addi sp,sp,32           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,32 ;;      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

;PU cycle count: 0.000000
	.endp	pp_wait_mbox#

	.section .ldm
	.org 0x0
	.type	bits_24, @object
	.size	bits_24, 256
bits_24:	; 0x0
	; offset 0
	.byte	0
	; offset 1
	.byte	1
	; offset 2
	.byte	1
	; offset 3
	.byte	2
	; offset 4
	.byte	1
	; offset 5
	.byte	2
	; offset 6
	.byte	2
	; offset 7
	.byte	3
	; offset 8
	.byte	1
	; offset 9
	.byte	2
	; offset 10
	.byte	2
	; offset 11
	.byte	3
	; offset 12
	.byte	2
	; offset 13
	.byte	3
	; offset 14
	.byte	3
	; offset 15
	.byte	4
	; offset 16
	.byte	1
	; offset 17
	.byte	2
	; offset 18
	.byte	2
	; offset 19
	.byte	3
	; offset 20
	.byte	2
	; offset 21
	.byte	3
	; offset 22
	.byte	3
	; offset 23
	.byte	4
	; offset 24
	.byte	2
	; offset 25
	.byte	3
	; offset 26
	.byte	3
	; offset 27
	.byte	4
	; offset 28
	.byte	3
	; offset 29
	.byte	4
	; offset 30
	.byte	4
	; offset 31
	.byte	5
	; offset 32
	.byte	1
	; offset 33
	.byte	2
	; offset 34
	.byte	2
	; offset 35
	.byte	3
	; offset 36
	.byte	2
	; offset 37
	.byte	3
	; offset 38
	.byte	3
	; offset 39
	.byte	4
	; offset 40
	.byte	2
	; offset 41
	.byte	3
	; offset 42
	.byte	3
	; offset 43
	.byte	4
	; offset 44
	.byte	3
	; offset 45
	.byte	4
	; offset 46
	.byte	4
	; offset 47
	.byte	5
	; offset 48
	.byte	2
	; offset 49
	.byte	3
	; offset 50
	.byte	3
	; offset 51
	.byte	4
	; offset 52
	.byte	3
	; offset 53
	.byte	4
	; offset 54
	.byte	4
	; offset 55
	.byte	5
	; offset 56
	.byte	3
	; offset 57
	.byte	4
	; offset 58
	.byte	4
	; offset 59
	.byte	5
	; offset 60
	.byte	4
	; offset 61
	.byte	5
	; offset 62
	.byte	5
	; offset 63
	.byte	6
	; offset 64
	.byte	1
	; offset 65
	.byte	2
	; offset 66
	.byte	2
	; offset 67
	.byte	3
	; offset 68
	.byte	2
	; offset 69
	.byte	3
	; offset 70
	.byte	3
	; offset 71
	.byte	4
	; offset 72
	.byte	2
	; offset 73
	.byte	3
	; offset 74
	.byte	3
	; offset 75
	.byte	4
	; offset 76
	.byte	3
	; offset 77
	.byte	4
	; offset 78
	.byte	4
	; offset 79
	.byte	5
	; offset 80
	.byte	2
	; offset 81
	.byte	3
	; offset 82
	.byte	3
	; offset 83
	.byte	4
	; offset 84
	.byte	3
	; offset 85
	.byte	4
	; offset 86
	.byte	4
	; offset 87
	.byte	5
	; offset 88
	.byte	3
	; offset 89
	.byte	4
	; offset 90
	.byte	4
	; offset 91
	.byte	5
	; offset 92
	.byte	4
	; offset 93
	.byte	5
	; offset 94
	.byte	5
	; offset 95
	.byte	6
	; offset 96
	.byte	2
	; offset 97
	.byte	3
	; offset 98
	.byte	3
	; offset 99
	.byte	4
	; offset 100
	.byte	3
	; offset 101
	.byte	4
	; offset 102
	.byte	4
	; offset 103
	.byte	5
	; offset 104
	.byte	3
	; offset 105
	.byte	4
	; offset 106
	.byte	4
	; offset 107
	.byte	5
	; offset 108
	.byte	4
	; offset 109
	.byte	5
	; offset 110
	.byte	5
	; offset 111
	.byte	6
	; offset 112
	.byte	3
	; offset 113
	.byte	4
	; offset 114
	.byte	4
	; offset 115
	.byte	5
	; offset 116
	.byte	4
	; offset 117
	.byte	5
	; offset 118
	.byte	5
	; offset 119
	.byte	6
	; offset 120
	.byte	4
	; offset 121
	.byte	5
	; offset 122
	.byte	5
	; offset 123
	.byte	6
	; offset 124
	.byte	5
	; offset 125
	.byte	6
	; offset 126
	.byte	6
	; offset 127
	.byte	7
	; offset 128
	.byte	1
	; offset 129
	.byte	2
	; offset 130
	.byte	2
	; offset 131
	.byte	3
	; offset 132
	.byte	2
	; offset 133
	.byte	3
	; offset 134
	.byte	3
	; offset 135
	.byte	4
	; offset 136
	.byte	2
	; offset 137
	.byte	3
	; offset 138
	.byte	3
	; offset 139
	.byte	4
	; offset 140
	.byte	3
	; offset 141
	.byte	4
	; offset 142
	.byte	4
	; offset 143
	.byte	5
	; offset 144
	.byte	2
	; offset 145
	.byte	3
	; offset 146
	.byte	3
	; offset 147
	.byte	4
	; offset 148
	.byte	3
	; offset 149
	.byte	4
	; offset 150
	.byte	4
	; offset 151
	.byte	5
	; offset 152
	.byte	3
	; offset 153
	.byte	4
	; offset 154
	.byte	4
	; offset 155
	.byte	5
	; offset 156
	.byte	4
	; offset 157
	.byte	5
	; offset 158
	.byte	5
	; offset 159
	.byte	6
	; offset 160
	.byte	2
	; offset 161
	.byte	3
	; offset 162
	.byte	3
	; offset 163
	.byte	4
	; offset 164
	.byte	3
	; offset 165
	.byte	4
	; offset 166
	.byte	4
	; offset 167
	.byte	5
	; offset 168
	.byte	3
	; offset 169
	.byte	4
	; offset 170
	.byte	4
	; offset 171
	.byte	5
	; offset 172
	.byte	4
	; offset 173
	.byte	5
	; offset 174
	.byte	5
	; offset 175
	.byte	6
	; offset 176
	.byte	3
	; offset 177
	.byte	4
	; offset 178
	.byte	4
	; offset 179
	.byte	5
	; offset 180
	.byte	4
	; offset 181
	.byte	5
	; offset 182
	.byte	5
	; offset 183
	.byte	6
	; offset 184
	.byte	4
	; offset 185
	.byte	5
	; offset 186
	.byte	5
	; offset 187
	.byte	6
	; offset 188
	.byte	5
	; offset 189
	.byte	6
	; offset 190
	.byte	6
	; offset 191
	.byte	7
	; offset 192
	.byte	2
	; offset 193
	.byte	3
	; offset 194
	.byte	3
	; offset 195
	.byte	4
	; offset 196
	.byte	3
	; offset 197
	.byte	4
	; offset 198
	.byte	4
	; offset 199
	.byte	5
	; offset 200
	.byte	3
	; offset 201
	.byte	4
	; offset 202
	.byte	4
	; offset 203
	.byte	5
	; offset 204
	.byte	4
	; offset 205
	.byte	5
	; offset 206
	.byte	5
	; offset 207
	.byte	6
	; offset 208
	.byte	3
	; offset 209
	.byte	4
	; offset 210
	.byte	4
	; offset 211
	.byte	5
	; offset 212
	.byte	4
	; offset 213
	.byte	5
	; offset 214
	.byte	5
	; offset 215
	.byte	6
	; offset 216
	.byte	4
	; offset 217
	.byte	5
	; offset 218
	.byte	5
	; offset 219
	.byte	6
	; offset 220
	.byte	5
	; offset 221
	.byte	6
	; offset 222
	.byte	6
	; offset 223
	.byte	7
	; offset 224
	.byte	3
	; offset 225
	.byte	4
	; offset 226
	.byte	4
	; offset 227
	.byte	5
	; offset 228
	.byte	4
	; offset 229
	.byte	5
	; offset 230
	.byte	5
	; offset 231
	.byte	6
	; offset 232
	.byte	4
	; offset 233
	.byte	5
	; offset 234
	.byte	5
	; offset 235
	.byte	6
	; offset 236
	.byte	5
	; offset 237
	.byte	6
	; offset 238
	.byte	6
	; offset 239
	.byte	7
	; offset 240
	.byte	4
	; offset 241
	.byte	5
	; offset 242
	.byte	5
	; offset 243
	.byte	6
	; offset 244
	.byte	5
	; offset 245
	.byte	6
	; offset 246
	.byte	6
	; offset 247
	.byte	7
	; offset 248
	.byte	5
	; offset 249
	.byte	6
	; offset 250
	.byte	6
	; offset 251
	.byte	7
	; offset 252
	.byte	6
	; offset 253
	.byte	7
	; offset 254
	.byte	7
	; offset 255
	.byte	8
	; end of initialization for bits
	.section .text

	; Program Unit: pp_send_mbox
	.proc	pp_send_mbox#
pp_send_mbox#:	; 0x64
	; lcl_spill_temp_1 = 16
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_pp_send_mbox:	; 0x64
	.loc	4	102	0
; 100  /* Deprecated */
; 101  static inline void pp_send_mbox(struct mbox_msg *msg)
; 102  {pp_mbox_send_w(msg);}
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,16 ;;         		; [] lcl_spill_temp_1
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,sp2,32          		; [] msg
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	.global	pp_mbox_send_w
	      j r7,pp_mbox_send_w# ;; 		; [] pp_mbox_send_w
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 2 Pred: 1 Succ: 
; BB:2 cycle count: 0
.BB2_pp_send_mbox:	; 0x9b
 {  
	      lw r7,sp3,16 ;;         		; [] lcl_spill_temp_1
	      addi sp,sp,32           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,32 ;;      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

;PU cycle count: 0.000000
	.endp	pp_send_mbox#
	.section .text

	; Program Unit: ntbl_bitcnt
	.proc	ntbl_bitcnt#
	.global	ntbl_bitcnt#
ntbl_bitcnt#:	; 0xc8
	; cnt = 16
	; lcl_spill_temp_2 = 20
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_ntbl_bitcnt:	; 0xc8
	.loc	2	39	0
;  35  **        omitted.
;  36  */
;  37  
;  38  int  ntbl_bitcnt(long x)
;  39  {
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,20 ;;         		; [] lcl_spill_temp_2
	.loc	2	40	0
;  40        int cnt = bits[(int)(x & 0x0000000FL)];
	      addi a3,sp,32           		; [] x
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d8,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
	      andi d0,d8,15           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add a3,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lb d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	.loc	2	42	0
;  41  
;  42        if (0L != (x >>= 4))
	      addi A3,sp2,32          		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D8,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      srai D0,D8,4            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,32            		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,sp2,32          		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      seqi D0,p1,p2,D0,0      		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_2_3 ;;             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 2 Pred: 1 Succ: 3 
; BB:2 cycle count: 0
.BB2_ntbl_bitcnt:	; 0x15e
 {  
	      nop ;;                  		; [] 
	.loc	2	43	0
;  43              cnt += ntbl_bitcnt(x);
	      addi a3,sp,32           		; [] x
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,ntbl_bitcnt# ;;    		; [] ntbl_bitcnt
	      sw d0,sp,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 
; BB:3 cycle count: 0
.BB3_ntbl_bitcnt:	; 0x190
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      copy d8,d4              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d9,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      add d0,d9,d8            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 4 Pred: 1 3 Succ: 
; BB:4 cycle count: 0
.L_2_3:	; 0x1ae
 {  
	.loc	2	45	0
;  44  
;  45        return cnt;
	      lw r7,sp3,20 ;;         		; [] lcl_spill_temp_2
	      lw d4,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,32 ;;      		; [] 
	      addi sp,sp,32           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

;PU cycle count: 0.000000
	.endp	ntbl_bitcnt#
	.section .text

	; Program Unit: btbl_bitcnt
	.proc	btbl_bitcnt#
	.global	btbl_bitcnt#
btbl_bitcnt#:	; 0x1db
	; cnt = 16
	; lcl_spill_temp_3 = 20
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_btbl_bitcnt:	; 0x1db
	.loc	2	53	0
;  49  **  Count bits in each byte
;  50  */
;  51  
;  52  int  btbl_bitcnt(long x)
;  53  {
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,20 ;;         		; [] lcl_spill_temp_3
	.loc	2	54	0
;  54        int cnt = bits[ ((char *)&x)[0] & 0xFF ];
	      addi a3,sp,32           		; [] x
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lb d8,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
	      andi d0,d8,255          		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add a3,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lb d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	.loc	2	56	0
;  55  
;  56        if (0L != (x >>= 8))
	      addi A3,sp2,32          		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D8,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      srai D0,D8,8            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,32            		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,sp2,32          		; [] x
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      seqi D0,p1,p2,D0,0      		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_3_3 ;;             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 2 Pred: 1 Succ: 3 
; BB:2 cycle count: 0
.BB2_btbl_bitcnt:	; 0x271
 {  
	      nop ;;                  		; [] 
	.loc	2	57	0
;  57              cnt += btbl_bitcnt(x);
	      addi a3,sp,32           		; [] x
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,btbl_bitcnt# ;;    		; [] btbl_bitcnt
	      sw d0,sp,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 
; BB:3 cycle count: 0
.BB3_btbl_bitcnt:	; 0x2a3
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      copy d8,d4              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d9,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      add d0,d9,d8            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 4 Pred: 1 3 Succ: 
; BB:4 cycle count: 0
.L_3_3:	; 0x2c1
 {  
	.loc	2	58	0
;  58        return cnt;
	      lw r7,sp3,20 ;;         		; [] lcl_spill_temp_3
	      lw d4,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,32 ;;      		; [] 
	      addi sp,sp,32           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

;PU cycle count: 0.000000
	.endp	btbl_bitcnt#
	.section .data
	.align 0
	.section .ldm
	.align 4
	.section .text
	.align 4
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x5d, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x72627968
	.int.ua	0x622f6469, 0x6f637469, 0x2f746e75, 0x63746962
	.int.ua	0x746e756f, 0x7469622f, 0x5f746e63, 0x00632e34
	.int.ua	0x6d6f682f, 0x6f632f65, 0x7265766e, 0x762f6573
	.int.ua	0x75747269, 0x705f6c61, 0x6674616c, 0x316d726f
	.int.ua	0x74756f2f, 0x7261742f, 0x2f746567, 0x2f6a626f
	.int.ua	0x75646f6d, 0x2f73656c, 0x2f636170, 0x63657865
	.int.ua	0x62617475, 0x622f656c, 0x74637469, 0x0070736e
	.byte	0x6f, 0x70, 0x65, 0x6e, 0x63, 0x63, 0x20, 0x34
	.byte	0x2e, 0x30, 0x00, 0x01, 0x00
	.int.ua	.debug_line
	.int.ua	0x70630402, 0x61775f70, 0x6d5f7469, 0x00786f62
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_pp_wait_mbox + 0x64
	.int.ua	0x000000e6, 0x6d630403, 0x02006773, 0x02000091
	.int.ua	0x70706604, 0x6e65735f, 0x626d5f64, 0x0300786f
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_pp_send_mbox
	.int.ua	.BB1_pp_send_mbox + 0x64
	.int.ua	0x00000111, 0x6d660403, 0x02006773, 0x04000091
	.int.ua	0x746e2702, 0x625f6c62, 0x6e637469, 0x03010074
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_ntbl_bitcnt
	.int.ua	.BB1_ntbl_bitcnt + 0x113
	.int.ua	0x0000013a, 0x78270203, 0x00910200, 0x35020500
	.int.ua	0x6c627462, 0x7469625f, 0x00746e63, 0x30920301
	.byte	0x20
	.int.ua	.BB1_btbl_bitcnt
	.int.ua	.BB1_btbl_bitcnt + 0x113
	.byte	0x03, 0x02, 0x35, 0x78, 0x00, 0x02, 0x91, 0x00
	.byte	0x00, 0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_btbl_bitcnt - .BB1_pp_wait_mbox + 0x113
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x2e, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x00000161, 0x00000111, 0x6c62746e, 0x7469625f
	.int.ua	0x00746e63, 0x0000013a, 0x6c627462, 0x7469625f
	.byte	0x63, 0x6e, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.int.ua	0x03011101, 0x25081b08, 0x420b1308, 0x0006100b
	.int.ua	0x012e0200, 0x0b3b0b3a, 0x0a400803, 0x01120111
	.int.ua	0x00001301, 0x3a000503, 0x030b3b0b, 0x000a0208
	.int.ua	0x012e0400, 0x0b3b0b3a, 0x0c3f0803, 0x01110a40
	.int.ua	0x13010112, 0x2e050000, 0x3b0b3a01, 0x3f08030b
	.byte	0x0c, 0x40, 0x0a, 0x11, 0x01, 0x12, 0x01, 0x00
	.byte	0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits

