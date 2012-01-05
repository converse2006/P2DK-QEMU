	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c (mrw.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/4mrtest_2048_AXI_DDR2/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
	.file	3	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
	.file	4	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h"


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
	.loc	3	99	0
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
	.section .text

	; Program Unit: pp_send_mbox
	.proc	pp_send_mbox#
pp_send_mbox#:	; 0x64
	; lcl_spill_temp_1 = 16
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_pp_send_mbox:	; 0x64
	.loc	3	102	0
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

	; Program Unit: main
	.proc	main#
	.global	main#
main#:	; 0xc8
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_main:	; 0xc8
	.loc	2	10	0
;   6  extern uint8_t *ccr_start_addr;
;   7  extern uint8_t *ccr_stop_clear_addr;
;   8  
;   9  int main()
;  10  {
	;;
	internal_stack_push:
{
sw r0,  r8, (-4)+;
nop;
nop;
nop;
nop;
}
{
sw r1,  r8, (-4)+;
nop;
nop;
nop;
nop;
}
{
sw r2,  r8, (-4)+;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	ccr_start_addr:

	;;
	;;
	operation_package_start:

	;;
	;;
	{
moviu r0, 2048;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
moviu r1, 0x3f000000;
nop;
nop;
nop;
nop;
}

	;;
	;;
	operation_loop_start:

	;;
	;;
	{
sw r2, r1, 4+;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
sw r2, r1, 4+;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
sw r2, r1, 4+;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
sw r2, r1, 4+;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
lbcb r0, operation_loop_start;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	operation_package_end:

	;;
	;;
	ccr_stop_clear_addr:

	;;
	;;
	{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
	;;
	internal_stack_pop:
{
addi  r0, r0, 4;
nop;
nop;
nop;
nop;
}
{
lw r2,  r8, 4+ ;
nop;
nop;
nop;
nop;
}
{
lw r1,  r8, 4+ ;
nop;
nop;
nop;
nop;
}
{
lw r0,  r8, 4+ ;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}
{
nop;
nop;
nop;
nop;
nop;
}

	;;
 {  
	.loc	2	237	0
; 233      get_and_show_ccr(4, i);
; 234      stop_clear_and_show_ccr(3, i);
; 235  
; 236      dbgputs("bye\n");
; 237      return 0;
;	.unwentry
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      movi d4,0               		; [] 
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
	.section .text
	.align 4
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x27, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x6e617473
	.int.ua	0x6f6c6164, 0x632f656e, 0x6d5f7263, 0x2f347772
	.int.ua	0x2e77726d, 0x682f0063, 0x2f656d6f, 0x766e6f63
	.int.ua	0x65737265, 0x7269762f, 0x6c617574, 0x616c705f
	.int.ua	0x726f6674, 0x6f2f316d, 0x742f7475, 0x65677261
	.int.ua	0x626f2f74, 0x6f6d2f6a, 0x656c7564, 0x61702f73
	.int.ua	0x78652f63, 0x74756365, 0x656c6261, 0x726d342f
	.int.ua	0x74736574, 0x3430325f, 0x58415f38, 0x44445f49
	.int.ua	0x6f003252, 0x636e6570, 0x2e342063, 0x00010030
	.int.ua	.debug_line
	.int.ua	0x70630302, 0x61775f70, 0x6d5f7469, 0x00786f62
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_pp_wait_mbox + 0x64
	.int.ua	0x000000e9, 0x6d630303, 0x02006773, 0x02000091
	.int.ua	0x70706603, 0x6e65735f, 0x626d5f64, 0x0300786f
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_pp_send_mbox
	.int.ua	.BB1_pp_send_mbox + 0x64
	.int.ua	0x00000114, 0x6d660303, 0x02006773, 0x04000091
	.byte	0x02, 0x0a, 0x6d, 0x61, 0x69, 0x6e, 0x00, 0x01
	.byte	0x03, 0x92, 0x30, 0x00
	.int.ua	.BB1_main
	.int.ua	.BB1_main + 0x1e
	.byte	0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_main - .BB1_pp_wait_mbox + 0x1e
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x17, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000012b, 0x00000114, 0x6e69616d, 0x00000000
	.byte	0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.int.ua	0x03011101, 0x25081b08, 0x420b1308, 0x0006100b
	.int.ua	0x012e0200, 0x0b3b0b3a, 0x0a400803, 0x01120111
	.int.ua	0x00001301, 0x3a000503, 0x030b3b0b, 0x000a0208
	.int.ua	0x002e0400, 0x0b3b0b3a, 0x0c3f0803, 0x01110a40
	.byte	0x12, 0x01, 0x00, 0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits

