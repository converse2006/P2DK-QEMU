	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c (n_real_updates.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/n_real_updates-pllab/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
	.file	3	"/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/checksum.h"


	.section .text, "ax", "progbits"
	.align	4
	.section .text

	; Program Unit: ck_add_16
	.proc	ck_add_16#
ck_add_16#:	; 0x0
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_ck_add_16:	; 0x0
	.loc	3	9	0
;   5  
;   6  typedef unsigned int checksum_t;
;   7  
;   8  inline static void ck_add_16(checksum_t* c, short x)
;   9  {
 {  
;	.unwentry
	      nop ;;                  		; [] 
	.loc	3	10	0
;  10  	*c = ((*c * 2) | (*c >> 31)) + x;
	      addi a3,sp,4            		; [] x
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      addi a3,sp,0            		; [] c
	      srli d1,d1,31           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      lw d2,a3,0              		; [] 
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
	      slli d2,d2,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      or d1,d1,d2             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add d0,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      jr r7 ;;                		; [] 
	      sw d0,a3,0              		; [] 
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
	.endp	ck_add_16#
	.section .text

	; Program Unit: ck_adda_16
	.proc	ck_adda_16#
ck_adda_16#:	; 0x91
	; i = 16
	; lcl_spill_temp_0 = 20
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_ck_adda_16:	; 0x91
	.loc	3	14	0
;  11  }
;  12  
;  13  inline static void ck_adda_16(checksum_t* c, short* arr, int size)
;  14  {
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,20 ;;         		; [] lcl_spill_temp_0
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	17	0
;  15  	int i;
;  16  
;  17  	for(i = 0; i<size; i++)
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,40           		; [] size
	      nop                     		; [] 
	      sw D8,sp2,16            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,sp,16             		; [] i
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
	      sgt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_1_5 ;;             		; [] 
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

; Block: 2 Pred: 1 3 Succ: 3 
; BB:2 cycle count: 0
.L_1_4:	; 0xd7
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	18	0
;  18                  ck_add_16(c, arr[i]);
	      addi A3,sp2,32          		; [] c
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
	      addi a3,sp,36           		; [] arr
	      nop                     		; [] 
	      sw D0,sp2,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d8,sp,16             		; [] i
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
	      slli d1,d8,1            		; [] 
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
	      lh d0,a3,0              		; [] 
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
	      j r7,ck_add_16# ;;      		; [] ck_add_16
	      sw d0,sp,4              		; [] 
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

; Block: 3 Pred: 2 Succ: 4 2 
; BB:3 cycle count: 0
.Lt_1_1:	; 0x13b
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	17	0
	      lw D8,sp2,16            		; [] i
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
	      addi D0,D8,1            		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,40           		; [] size
	      nop                     		; [] 
	      sw D0,sp2,16            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,sp,16             		; [] i
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
	      sgt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_1_4 ;;             		; [] 
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

; Block: 4 Pred: 1 3 Succ: 
; BB:4 cycle count: 0
.L_1_5:	; 0x18b
 {  
	      lw r7,sp3,20 ;;         		; [] lcl_spill_temp_0
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
	.endp	ck_adda_16#
	.section .text

	; Program Unit: ck_init
	.proc	ck_init#
ck_init#:	; 0x1b8
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_ck_init:	; 0x1b8
	.loc	3	22	0
;  19  }
;  20  
;  21  inline static void ck_init(checksum_t* c)
;  22  {
 {  
;	.unwentry
	      nop ;;                  		; [] 
	.loc	3	23	0
;  23  	*c = 0x7ca463e2;
	      addi a3,sp,0            		; [] c
	      movi d8,2091148258      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      jr r7 ;;                		; [] 
	      sw d8,a3,0              		; [] 
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
	.endp	ck_init#
	.section .text

	; Program Unit: ck_add
	.proc	ck_add#
ck_add#:	; 0x1ea
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_ck_add:	; 0x1ea
	.loc	3	27	0
;  24  }
;  25  
;  26  inline static void ck_add(checksum_t* c, int x)
;  27  {
 {  
;	.unwentry
	      nop ;;                  		; [] 
	.loc	3	28	0
;  28  	*c = ((*c * 2) | (*c >> 31)) + x;
	      addi a3,sp,4            		; [] x
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
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      addi a3,sp,0            		; [] c
	      srli d1,d1,31           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      lw d2,a3,0              		; [] 
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
	      slli d2,d2,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      or d1,d1,d2             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add d0,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      jr r7 ;;                		; [] 
	      sw d0,a3,0              		; [] 
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
	.endp	ck_add#
	.section .text

	; Program Unit: ck_adda
	.proc	ck_adda#
ck_adda#:	; 0x27b
	; i = 16
	; lcl_spill_temp_1 = 20
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_ck_adda:	; 0x27b
	.loc	3	32	0
;  29  }
;  30  
;  31  inline static void ck_adda(checksum_t* c, int* arr, int size)
;  32  {
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,20 ;;         		; [] lcl_spill_temp_1
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	35	0
;  33  	int i;
;  34  
;  35  	for(i = 0; i<size; i++)
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,40           		; [] size
	      nop                     		; [] 
	      sw D8,sp2,16            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,sp,16             		; [] i
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
	      sgt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_4_5 ;;             		; [] 
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

; Block: 2 Pred: 1 3 Succ: 3 
; BB:2 cycle count: 0
.L_4_4:	; 0x2c1
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	36	0
;  36  		ck_add(c, arr[i]);
	      addi A3,sp2,32          		; [] c
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
	      addi a3,sp,36           		; [] arr
	      nop                     		; [] 
	      sw D0,sp2,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d8,sp,16             		; [] i
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
	      slli d1,d8,2            		; [] 
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
	      j r7,ck_add# ;;         		; [] ck_add
	      sw d0,sp,4              		; [] 
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

; Block: 3 Pred: 2 Succ: 4 2 
; BB:3 cycle count: 0
.Lt_4_1:	; 0x325
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	3	35	0
	      lw D8,sp2,16            		; [] i
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
	      addi D0,D8,1            		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,40           		; [] size
	      nop                     		; [] 
	      sw D0,sp2,16            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,sp,16             		; [] i
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
	      sgt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_4_4 ;;             		; [] 
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

; Block: 4 Pred: 1 3 Succ: 
; BB:4 cycle count: 0
.L_4_5:	; 0x375
 {  
	      lw r7,sp3,20 ;;         		; [] lcl_spill_temp_1
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
	.endp	ck_adda#
	.section .text

	; Program Unit: ck_out
	.proc	ck_out#
ck_out#:	; 0x3a2
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_ck_out:	; 0x3a2
	.loc	3	40	0
;  37  }
;  38  
;  39  inline static unsigned char ck_out(checksum_t* c)
;  40  {
 {  
;	.unwentry
	      nop ;;                  		; [] 
	.loc	3	41	0
;  41  	return (unsigned char)((*c >> 24) + (*c >> 16) + (*c >> 8) + *c);
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      lbu d0,a3,0             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      addi a3,sp,0            		; [] c
	      srli d1,d8,16           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      lw d2,a3,0              		; [] 
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
	      srli d2,d2,24           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add d1,d1,d2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,0            		; [] c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      lw d2,a3,0              		; [] 
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
	      srli d2,d2,8            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add d1,d1,d2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add d0,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      extractiu d4,d0,8,0     		; [] 
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
	.endp	ck_out#
	.section .text

	; Program Unit: pin_down
	.proc	pin_down#
	.global	pin_down#
pin_down#:	; 0x45b
	; i = 0
	; lcl_spill_temp_2 = 4
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_pin_down:	; 0x45b
	.loc	2	40	0
;  36  #define N             16
;  37  
;  38  void
;  39  pin_down(TYPE *pa, TYPE *pb, TYPE *pc, TYPE *pd)
;  40  {
 {  
;	.prologue
	      subi sp3,sp3,16 ;;      		; [] 
	      subi sp,sp,16           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,16         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,4 ;;          		; [] lcl_spill_temp_2
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	43	0
;  41    STORAGE_CLASS int i ; 
;  42  
;  43    for (i=0 ; i < N ; i++)
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,0             		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,sp,0              		; [] i
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
	      sgti d0,p1,p2,d0,15     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_6_5 ;;             		; [] 
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

; Block: 2 Pred: 1 3 Succ: 3 
; BB:2 cycle count: 0
.L_6_4:	; 0x49c
 {  
	      nop ;;                  		; [] 
	.loc	2	45	0
;  44      {
;  45        *pa++ = 10 ; 
	      addi a3,sp,16           		; [] pa
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a3,a3,0              		; [] 
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
	      addi d0,a3,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] pa
	      movi d8,10              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sh d8,a3,0              		; [] 
	      nop                     		; [] 
	.loc	2	46	0
;  46        *pb++ = 2 ; 
	      addi A3,sp2,20          		; [] pb
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw A3,A3,0              		; [] 
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
	      addi D0,A3,2            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,20            		; [] pb
	      movi D8,2               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D8,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	47	0
;  47        *pc++ = 10 ;
	      addi A3,sp2,24          		; [] pc
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw A3,A3,0              		; [] 
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
	      addi D0,A3,2            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,24            		; [] pc
	      movi D0,10              		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	48	0
;  48        *pd++ = 0 ; 
	      addi A3,sp2,28          		; [] pd
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw A3,A3,0              		; [] 
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
	      addi D0,A3,2            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,28            		; [] pd
	      movi D0,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,A3,0              		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 2 
; BB:3 cycle count: 0
.Lt_6_1:	; 0x523
 {  
	      nop ;;                  		; [] 
	.loc	2	43	0
	      lw d8,sp,0              		; [] i
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
	      addi d0,d8,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,0              		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,sp2,0             		; [] i
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
	      sgti D0,p1,p2,D0,15     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_6_4 ;;             		; [] 
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

; Block: 4 Pred: 1 3 Succ: 
; BB:4 cycle count: 0
.L_6_5:	; 0x56e
 {  
	      lw r7,sp3,4 ;;          		; [] lcl_spill_temp_2
	      addi sp,sp,16           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,16         		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,16 ;;      		; [] 
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
	.endp	pin_down#

	.section .bss, "wa", "nobits"
	.align	2
	.section .text

	; Program Unit: main
	.proc	main#
	.global	main#
main#:	; 0x59b
	; p_a = 16
	; p_b = 20
	; p_c = 24
	; p_d = 28
	; i = 32
	; sum = 36
	; lcl_spill_temp_3 = 40
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_main:	; 0x59b
	.loc	2	53	0
;  49      }
;  50  }
;  51  
;  52  TYPE main()
;  53  {
 {  
;	.prologue
	      subi sp3,sp3,48 ;;      		; [] 
	      subi sp,sp,48           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,48         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,40 ;;         		; [] lcl_spill_temp_3
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	56	0
;  54    static TYPE A[N], B[N], C[N], D[N] ; 
;  55    
;  56    STORAGE_CLASS TYPE *p_a = &A[0], *p_b = &B[0] ;
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
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
	      addi a3,gp,@ltoff(.bss#)		; [] .bss
	      nop                     		; [] 
	      sw D0,sp2,16            		; [] p_a
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
	      nop ;;                  		; [] 
	      addi d0,d0,32           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,20             		; [] p_b
	      nop                     		; [] 
	.loc	2	57	0
;  57    STORAGE_CLASS TYPE *p_c = &C[0], *p_d = &D[0] ;
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
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
	      addi D0,D0,64           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,24            		; [] p_c
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
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
	      addi D0,D0,96           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,28            		; [] p_d
	.loc	2	70	0
;  66  	TYPE Nhalf = N >> 1 ;
;  67    #endif
;  68    #ifndef INTRN
;  69    	//pin_down(&A[0], &B[0], &C[0], &D[0]) ; 
;  70  	for (i=0 ; i < N ; i++)
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D8,sp2,32            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D0,sp2,32            		; [] i
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
	      sgti D0,p1,p2,D0,15     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_7_8 ;;             		; [] 
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

; Block: 2 Pred: 1 3 Succ: 3 
; BB:2 cycle count: 0
.L_7_7:	; 0x640
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	72	0
;  71  	    {
;  72  	          A[i] = 10 ;
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
	      movi D8,10              		; [] 
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
	      lh D1,sp2,32            		; [] i
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
	      slli D1,D1,1            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      add A3,D0,D1            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	73	0
;  73  		        B[i] = 2 ;
	      addi a3,gp,@ltoff(.bss#)		; [] .bss
	      movi d8,2               		; [] 
	.loc	2	72	0
	      sh D8,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	73	0
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
	      nop ;;                  		; [] 
	      addi d0,d0,32           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d1,sp,32             		; [] i
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
	      slli d1,d1,1            		; [] 
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
	      sh d8,a3,0              		; [] 
	      nop                     		; [] 
	.loc	2	74	0
;  74  			      C[i] = 10 ;
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
	      movi D0,10              		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D1,A3,0              		; [] 
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
	      addi D1,D1,64           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D2,sp2,32            		; [] i
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
	      slli D2,D2,1            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      add A3,D1,D2            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,A3,0              		; [] 
	.loc	2	75	0
;  75  			            D[i] = 0 ;
	      movi D0,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@ltoff(.bss#)		; [] .bss
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D1,A3,0              		; [] 
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
	      addi D1,D1,96           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D2,sp2,32            		; [] i
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
	      slli D2,D2,1            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      add A3,D1,D2            		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,A3,0              		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 2 
; BB:3 cycle count: 0
.Lt_7_1:	; 0x703
 {  
	      nop ;;                  		; [] 
	.loc	2	70	0
	      lh d8,sp,32             		; [] i
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
	      addi d0,d8,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sh d0,sp,32             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D0,sp2,32            		; [] i
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
	      sgti D0,p1,p2,D0,15     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_7_7 ;;             		; [] 
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

; Block: 4 Pred: 1 3 Succ: 5 7 
; BB:4 cycle count: 0
.L_7_8:	; 0x74e
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	98	0
;  94    for (i = 0 ; i < N ; i++)
;  95        D[i]  = C[i] + A[i] * B[i] ;
;  96  
;  97    #else
;  98    for (i = 0 ; i < N ; i++)
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D8,sp2,32            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d0,sp,32             		; [] i
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
	      sgti d0,p1,p2,d0,15     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_7_10 ;;            		; [] 
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

; Block: 5 Pred: 4 6 Succ: 6 
; BB:5 cycle count: 0
.L_7_9:	; 0x78a
 {  
	      nop ;;                  		; [] 
	.loc	2	99	0
;  99        *p_d++  = *p_c++ + *p_a++ * *p_b++ ;
	      lw a3,sp,24             		; [] p_c
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
	      addi d0,a3,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,24             		; [] p_c
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a4,sp,16             		; [] p_a
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
	      addi d0,a4,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] p_a
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a5,sp,20             		; [] p_b
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
	      addi d0,a5,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,20             		; [] p_b
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw a6,sp,28             		; [] p_d
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
	      addi d0,a6,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,28             		; [] p_d
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d1,a4,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d2,a5,0              		; [] 
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
	      permh2 d3,d2,d2,1,0     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      dotp2 d3,d1,d3          		; [] 
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
	      slli d3,d3,16           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      fmacuu d3,d1,d2         		; [] 
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
	      add d0,d0,d3            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sh d0,a6,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 6 Pred: 5 Succ: 7 5 
; BB:6 cycle count: 0
.Lt_7_2:	; 0x82f
 {  
	      nop ;;                  		; [] 
	.loc	2	98	0
	      lh d8,sp,32             		; [] i
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
	      addi d0,d8,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sh d0,sp,32             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D0,sp2,32            		; [] i
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
	      sgti D0,p1,p2,D0,15     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_7_9 ;;             		; [] 
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

; Block: 7 Pred: 4 6 Succ: 8 
; BB:7 cycle count: 0
.L_7_10:	; 0x87a
 {  
	      nop ;;                  		; [] 
	.loc	2	106	0
; 102    END_PROFILING;   
; 103    
; 104    //pin_down(&A[0], &B[0], &C[0], &D[0]) ; 
; 105    //return(0)  ; 
; 106    ck_init(&sum);
	      addi d0,sp,36           		; [] sum
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,ck_init# ;;        		; [] ck_init
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

; Block: 8 Pred: 7 Succ: 9 
; BB:8 cycle count: 0
.BB8_main:	; 0x89d
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	107	0
; 107    ck_adda_16(&sum, D, N);
	      addi D0,sp2,36          		; [] sum
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,gp,@ltoff(.bss#)		; [] .bss
	      nop                     		; [] 
	      sw D0,sp2,0             		; [] 
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
	      nop ;;                  		; [] 
	      addi d0,d0,96           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,4              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      movi D8,16              		; [] 
 } {  
	      j r7,ck_adda_16# ;;     		; [] ck_adda_16
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,8             		; [] 
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

; Block: 9 Pred: 8 Succ: 10 
; BB:9 cycle count: 0
.BB9_main:	; 0x8de
 {  
	      nop ;;                  		; [] 
	.loc	2	109	0
; 108    //printf("%x\n", ck_out(&sum));
; 109    return ck_out(&sum);
	      addi d0,sp,36           		; [] sum
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,ck_out# ;;         		; [] ck_out
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

; Block: 10 Pred: 9 Succ: 
; BB:10 cycle count: 0
.BB10_main:	; 0x901
 {  
	      lw r7,sp3,40 ;;         		; [] lcl_spill_temp_3
	      addi sp,sp,48           		; [] 
	      extractiu d4,d4,8,0     		; [] 
	      addi sp2,sp2,48         		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,48 ;;      		; [] 
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
	.endp	main#

	.section .bss
	.org 0x0
	.type	A_8_1, @object
	.size	A_8_1, 32
A_8_1:	; 0x0
	.skip 32
	.org 0x20
	.type	B_8_2, @object
	.size	B_8_2, 32
B_8_2:	; 0x20
	.skip 32
	.org 0x40
	.type	C_8_3, @object
	.size	C_8_3, 32
C_8_3:	; 0x40
	.skip 32
	.org 0x60
	.type	D_8_4, @object
	.size	D_8_4, 32
D_8_4:	; 0x60
	.skip 32
	.section .text
	.align 4
	.section .bss
	.align 2
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x37, 0x02, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x6e617473
	.int.ua	0x6f6c6164, 0x6e2f656e, 0x2f756874, 0x53505344
	.int.ua	0x656e6f74, 0x725f6e2f, 0x5f6c6165, 0x61647075
	.int.ua	0x2e736574, 0x682f0063, 0x2f656d6f, 0x766e6f63
	.int.ua	0x65737265, 0x7269762f, 0x6c617574, 0x616c705f
	.int.ua	0x726f6674, 0x6f2f316d, 0x742f7475, 0x65677261
	.int.ua	0x626f2f74, 0x6f6d2f6a, 0x656c7564, 0x61702f73
	.int.ua	0x78652f63, 0x74756365, 0x656c6261, 0x725f6e2f
	.int.ua	0x5f6c6165, 0x61647075, 0x2d736574, 0x616c6c70
	.byte	0x62, 0x00, 0x6f, 0x70, 0x65, 0x6e, 0x63, 0x63
	.byte	0x20, 0x34, 0x2e, 0x30, 0x00, 0x01, 0x00
	.int.ua	.debug_line
	.int.ua	0x63090302, 0x64615f6b, 0x36315f64, 0x30920300
	.byte	0x00
	.int.ua	.BB1_ck_add_16
	.int.ua	.BB1_ck_add_16 + 0x91
	.int.ua	0x000000fb, 0x63090303, 0x00910200, 0x78090303
	.int.ua	0x04910200, 0x0e030200, 0x615f6b63, 0x5f616464
	.byte	0x31, 0x36, 0x00, 0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_ck_adda_16
	.int.ua	.BB1_ck_adda_16 + 0x127
	.int.ua	0x00000137, 0x630e0303, 0x00910200, 0x610e0303
	.int.ua	0x02007272, 0x03030491, 0x7a69730e, 0x91020065
	.int.ua	0x03020008, 0x5f6b6316, 0x74696e69, 0x30920300
	.byte	0x00
	.int.ua	.BB1_ck_init
	.int.ua	.BB1_ck_init + 0x32
	.int.ua	0x0000015b, 0x63160303, 0x00910200, 0x1b030200
	.byte	0x63, 0x6b, 0x5f, 0x61, 0x64, 0x64, 0x00, 0x03
	.byte	0x92, 0x30, 0x00
	.int.ua	.BB1_ck_add
	.int.ua	.BB1_ck_add + 0x91
	.int.ua	0x00000186, 0x631b0303, 0x00910200, 0x781b0303
	.int.ua	0x04910200, 0x20030200, 0x615f6b63, 0x00616464
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_ck_adda
	.int.ua	.BB1_ck_adda + 0x127
	.int.ua	0x000001bf, 0x63200303, 0x00910200, 0x61200303
	.int.ua	0x02007272, 0x03030491, 0x7a697320, 0x91020065
	.int.ua	0x03020008, 0x5f6b6328, 0x0074756f, 0x00309203
	.int.ua	.BB1_ck_out
	.int.ua	.BB1_ck_out + 0xb9
	.int.ua	0x000001e2, 0x63280303, 0x00910200, 0x28020400
	.byte	0x70, 0x69, 0x6e, 0x5f, 0x64, 0x6f, 0x77, 0x6e
	.byte	0x00, 0x01, 0x03, 0x92, 0x30, 0x10
	.int.ua	.BB1_pin_down
	.int.ua	.BB1_pin_down + 0x140
	.int.ua	0x00000224, 0x70280203, 0x91020061, 0x28020300
	.int.ua	0x02006270, 0x02030491, 0x00637028, 0x03089102
	.int.ua	0x64702802, 0x0c910200, 0x35020500, 0x6e69616d
	.byte	0x00, 0x01, 0x03, 0x92, 0x30, 0x30
	.int.ua	.BB1_main
	.int.ua	.BB1_main + 0x393
	.byte	0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_ck_add_16
	.int.ua	.BB1_main - .BB1_ck_add_16 + 0x393
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x24, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000023b, 0x000001e2, 0x5f6e6970, 0x6e776f64
	.byte	0x00, 0x24, 0x02, 0x00, 0x00, 0x6d, 0x61, 0x69
	.byte	0x6e, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.int.ua	0x03011101, 0x25081b08, 0x420b1308, 0x0006100b
	.int.ua	0x012e0200, 0x0b3b0b3a, 0x0a400803, 0x01120111
	.int.ua	0x00001301, 0x3a000503, 0x030b3b0b, 0x000a0208
	.int.ua	0x012e0400, 0x0b3b0b3a, 0x0c3f0803, 0x01110a40
	.int.ua	0x13010112, 0x2e050000, 0x3b0b3a00, 0x3f08030b
	.byte	0x0c, 0x40, 0x0a, 0x11, 0x01, 0x12, 0x01, 0x00
	.byte	0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits

