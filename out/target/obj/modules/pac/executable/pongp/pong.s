	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c (pong.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/pongp/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c"
	.file	3	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
	.file	4	"/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pingpong.h"


	.section .data, "wa", "progbits"
	.align	0

	.section .ldm_shared, "wa", "progbits"
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

	.section .ldm_shared
	.org 0x0
	.global	inbuffer#
	.type	inbuffer#, @object
	.size	inbuffer#, 2048
inbuffer#:	; 0x0
	.skip 2048
	; end of initialization for inbuffer
	.org 0x800
	.global	outbuffer#
	.type	outbuffer#, @object
	.size	outbuffer#, 4
outbuffer#:	; 0x800
	.skip 4
	; end of initialization for outbuffer
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

	; Program Unit: process_crc32
	.proc	process_crc32#
	.global	process_crc32#
process_crc32#:	; 0xc8
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_process_crc32:	; 0xc8
	.loc	2	8	0
;   4  char LDM_SHARED inbuffer[INBUF_SZ];
;   5  char LDM_SHARED outbuffer[4];
;   6  
;   7  void process_crc32(int val)
;   8  {
 {  
	.loc	2	12	0
;   9      dbgputs("receive ping:");
;  10      dbgputh(val);
;  11      dbgputs(" @ pong\n");
;  12      return;
;	.unwentry
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
	.endp	process_crc32#

	.section .rodata, "a", "progbits"
	.align	4
	.section .text

	; Program Unit: main
	.proc	main#
	.global	main#
main#:	; 0xe6
	; msg = 20
	; cnt = 16
	; lcl_spill_temp_2 = 28
	; lcl_spill_temp_3 = 32
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_main:	; 0xe6
	.loc	2	17	0
;  13  }
;  14  
;  15  int
;  16  main(int argc, char *argv[])
;  17  {
 {  
;	.prologue
	      subi sp3,sp3,48 ;;      		; [] 
	      subi sp,sp,48           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,48         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,28 ;;         		; [] lcl_spill_temp_2
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	19	0
;  18      struct mbox_msg msg;
;  19      uint32_t cnt = 1;
	      movi D8,1               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,16            		; [] cnt
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	23	0
;  20  
;  21      dbgputs("\nhello from pong @ pacdsp,");
;  22      dbgputs("waitling to start...\n\n");
;  23      pp_wait_mbox(&msg);
	      addi D0,sp2,20          		; [] msg
	      nop                     		; [] 
 } {  
	      j r7,pp_wait_mbox# ;;   		; [] pp_wait_mbox
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

; Block: 2 Pred: 1 Succ: 3 4 
; BB:2 cycle count: 0
.BB2_main:	; 0x118
 {  
	      nop ;;                  		; [] 
	.loc	2	24	0
;  24      if(msg.cmd != MBOX_CMD_STR) {
	      lw d0,sp,20             		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      seqiu d0,p1,p2,d0,3     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_3_13 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 3 Pred: 2 Succ: 20 
; BB:3 cycle count: 0
.BB3_main:	; 0x14a
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	26	0
;  25          dbgputs("protocal error, exit\n");
;  26          return 0;
	      movi d0,0               		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j .BB20_main ;;         		; [] 
	      sw d0,sp,32             		; [] lcl_spill_temp_3
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 4 Pred: 2 16 Succ: 5 
; BB:4 cycle count: 0
.L_3_13:	; 0x16d
.L_3_14:	; 0x16d
 {  
	      nop ;;                  		; [] 
	.loc	2	33	0
;  29      }
;  30  
;  31      do {
;  32          dbgputs("Receive ping\n");
;  33          pp_wait_mbox(&msg);
	      addi d0,sp,20           		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,pp_wait_mbox# ;;   		; [] pp_wait_mbox
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

; Block: 5 Pred: 4 Succ: 6 9 
; BB:5 cycle count: 0
.BB5_main:	; 0x190
 {  
	      nop ;;                  		; [] 
	.loc	2	38	0
;  34          dbgputv(msg.cmd);
;  35          dbgputv(msg.data);
;  36          dbgputc('\n');
;  37  
;  38          if(msg.cmd == MBOX_CMD_END) {
	      lw d0,sp,20             		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      seqiu d0,p1,p2,d0,6     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_3_16 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 6 Pred: 5 Succ: 7 8 
; BB:6 cycle count: 0
.BB6_main:	; 0x1c2
 {  
	      nop ;;                  		; [] 
	.loc	2	39	0
;  39              if(msg.data != 0)
	      lw d0,sp,24             		; [] msg+4
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      seqiu d0,p1,p2,d0,0     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_3_17 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 7 Pred: 6 Succ: 8 
; BB:7 cycle count: 0
.BB7_main:	; 0x1f4
 {  
	      nop ;;                  		; [] 
	.loc	2	40	0
;  40                  process_crc32(msg.data);
	      lw d0,sp,24             		; [] msg+4
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      j r7,process_crc32# ;;  		; [] process_crc32
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

; Block: 8 Pred: 6 7 Succ: 17 
; BB:8 cycle count: 0
.L_3_17:	; 0x221
 {  
	.loc	2	42	0
;  41              dbgputs("done\n");
;  42              break;
	      j .Lt_3_2 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 9 Pred: 5 Succ: 10 12 
; BB:9 cycle count: 0
.L_3_16:	; 0x23f
 {  
	      nop ;;                  		; [] 
	.loc	2	43	0
;  43          } else if(msg.cmd == MBOX_CMD_PNG) {
	      lw d0,sp,20             		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      seqiu d0,p1,p2,d0,4     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_3_19 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 10 Pred: 9 Succ: 11 
; BB:10 cycle count: 0
.BB10_main:	; 0x271
 {  
	      nop ;;                  		; [] 
	.loc	2	44	0
;  44              process_crc32(msg.data);
	      lw d0,sp,24             		; [] msg+4
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      j r7,process_crc32# ;;  		; [] process_crc32
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

; Block: 11 Pred: 10 Succ: 14 
; BB:11 cycle count: 0
.BB11_main:	; 0x29e
 {  
	      j .L_3_18 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 12 Pred: 9 Succ: 13 
; BB:12 cycle count: 0
.L_3_19:	; 0x2bc
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	47	0
;  45          } else {
;  46              dbgputs("unknow package, exit\n");
;  47              msg.cmd=MBOX_CMD_END;
	      movi d8,6               		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d8,sp,20             		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	48	0
;  48              msg.data=0xfb;
	      movi D8,251             		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,24            		; [] msg+4
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	49	0
;  49              pp_send_mbox(&msg);
	      addi D0,sp2,20          		; [] msg
	      nop                     		; [] 
 } {  
	      j r7,pp_send_mbox# ;;   		; [] pp_send_mbox
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

; Block: 13 Pred: 12 Succ: 17 
; BB:13 cycle count: 0
.BB13_main:	; 0x2ee
 {  
	.loc	2	50	0
;  50              break;
	      j .Lt_3_2 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 14 Pred: 11 Succ: 15 
; BB:14 cycle count: 0
.L_3_18:	; 0x30c
.L_3_15:	; 0x30c
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	52	0
;  51          }
;  52          msg.cmd=MBOX_CMD_PON;
	      movi D8,5               		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	53	0
;  53          msg.data -= 1;
	      lw d0,sp,24             		; [] msg+4
	      nop                     		; [] 
	.loc	2	52	0
	      sw D8,sp2,20            		; [] msg
	      nop                     		; [] 
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
	.loc	2	53	0
	      subi d0,d0,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,24             		; [] msg+4
	      nop                     		; [] 
	.loc	2	54	0
;  54          pp_send_mbox(&msg);
	      addi D0,sp2,20          		; [] msg
	      nop                     		; [] 
 } {  
	      j r7,pp_send_mbox# ;;   		; [] pp_send_mbox
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

; Block: 15 Pred: 14 Succ: 16 
; BB:15 cycle count: 0
.BB15_main:	; 0x348
 {  
	      nop ;;                  		; [] 
	.loc	2	55	0
;  55          cnt += 1;
	      lw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      addi d0,d0,1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 16 Pred: 15 Succ: 4 
; BB:16 cycle count: 0
.Lt_3_1:	; 0x361
 {  
	.loc	2	56	0
;  56      } while (1);
	      j .L_3_14 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 17 Pred: 8 13 Succ: 18 
; BB:17 cycle count: 0
.Lt_3_2:	; 0x37f
 {  
	      nop ;;                  		; [] 
	.loc	2	58	0
;  57  
;  58      puth(cnt);
	      lw d0,sp,16             		; [] cnt
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	.global	puth
	      j r7,puth# ;;           		; [] puth
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

; Block: 18 Pred: 17 Succ: 19 
; BB:18 cycle count: 0
.BB18_main:	; 0x3ac
 {  
	      nop ;;                  		; [] 
	.loc	2	59	0
;  59      puts(" ping-pong iterations, bye!\n");
	      addi a3,gp,@ltoff(.rodata#)		; [] .rodata
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
	.global	puts
	      j r7,puts# ;;           		; [] puts
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

; Block: 19 Pred: 18 Succ: 20 
; BB:19 cycle count: 0
.BB19_main:	; 0x3de
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	61	0
;  60  
;  61      return 0;
	      movi d0,0               		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,32             		; [] lcl_spill_temp_3
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 20 Pred: 19 3 Succ: 
; BB:20 cycle count: 0
.BB20_main:	; 0x3e8
 {  
	      lw r7,sp3,28 ;;         		; [] lcl_spill_temp_2
	      lw d4,sp,32             		; [] lcl_spill_temp_3
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,48 ;;      		; [] 
	      addi sp,sp,48           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,48         		; [] 
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

	.section .rodata
	.org 0x0
	; offset 0
	.byte	0x20, 0x70, 0x69, 0x6e, 0x67, 0x2d, 0x70, 0x6f	;  ping-po
	.byte	0x6e, 0x67, 0x20, 0x69, 0x74, 0x65, 0x72, 0x61	; ng itera
	.byte	0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2c, 0x20, 0x62	; tions, b
	.byte	0x79, 0x65, 0x21, 0xa, 0x0	; ye!\n\000
	.section .data
	.align 0
	.section .ldm_shared
	.align 4
	.section .text
	.align 4
	.section .rodata
	.align 4
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x58, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x72627968
	.int.ua	0x702f6469, 0x70676e69, 0x2f676e6f, 0x676e6f70
	.int.ua	0x2f00632e, 0x656d6f68, 0x6e6f632f, 0x73726576
	.int.ua	0x69762f65, 0x61757472, 0x6c705f6c, 0x6f667461
	.int.ua	0x2f316d72, 0x2f74756f, 0x67726174, 0x6f2f7465
	.int.ua	0x6d2f6a62, 0x6c75646f, 0x702f7365, 0x652f6361
	.int.ua	0x75636578, 0x6c626174, 0x6f702f65, 0x0070676e
	.byte	0x6f, 0x70, 0x65, 0x6e, 0x63, 0x63, 0x20, 0x34
	.byte	0x2e, 0x30, 0x00, 0x01, 0x00
	.int.ua	.debug_line
	.int.ua	0x70630302, 0x61775f70, 0x6d5f7469, 0x00786f62
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_pp_wait_mbox + 0x64
	.int.ua	0x000000d6, 0x6d630303, 0x02006773, 0x02000091
	.int.ua	0x70706603, 0x6e65735f, 0x626d5f64, 0x0300786f
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_pp_send_mbox
	.int.ua	.BB1_pp_send_mbox + 0x64
	.int.ua	0x00000101, 0x6d660303, 0x02006773, 0x04000091
	.int.ua	0x72700802, 0x7365636f, 0x72635f73, 0x00323363
	.byte	0x01, 0x03, 0x92, 0x30, 0x00
	.int.ua	.BB1_process_crc32
	.int.ua	.BB1_process_crc32 + 0x1e
	.int.ua	0x0000012e, 0x76080203, 0x02006c61, 0x05000091
	.byte	0x02, 0x11, 0x6d, 0x61, 0x69, 0x6e, 0x00, 0x01
	.byte	0x03, 0x92, 0x30, 0x30
	.int.ua	.BB1_main
	.int.ua	.BB1_main + 0x32f
	.int.ua	0x61110203, 0x00636772, 0x03009102, 0x72611102
	.byte	0x67, 0x76, 0x00, 0x02, 0x91, 0x04, 0x00, 0x00
	.byte	0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_main - .BB1_pp_wait_mbox + 0x32f
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x29, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000015c, 0x00000101, 0x636f7270, 0x5f737365
	.int.ua	0x33637263, 0x012e0032, 0x616d0000, 0x00006e69
	.byte	0x00, 0x00, 0x00

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

