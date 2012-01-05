	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/hybrid/cmrw/pac.c (pac.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/cmr_16384_256_AXI_DDR2_p/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/hybrid/cmrw/pac.c"
	.file	3	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
	.file	4	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h"


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
	.global	buffer#
	.type	buffer#, @object
	.size	buffer#, 16384
buffer#:	; 0x0
	; offset 0
	.int	1
	; offset 4
	.int	2
	; offset 8
	.int	3
	; offset 12
	.int	4
	; offset 16
	.int	5
	; offset 20
	.int	6
	; offset 24
	.int	7
	; offset 28
	.int	8
	; offset 32
	.int	9
	; offset 36
	.int	0
	; offset 40
	.int	1
	; offset 44
	.int	2
	; offset 48
	.int	3
	; offset 52
	.int	4
	; offset 56
	.int	5
	; offset 60
	.int	6
	; offset 64
	.int	7
	; offset 68
	.int	8
	; offset 72
	.int	9
	; offset 76
	.int	0
	; offset 80
	.int	1
	; offset 84
	.int	2
	; offset 88
	.int	3
	; offset 92
	.int	4
	; offset 96
	.int	5
	; offset 100
	.int	6
	; offset 104
	.int	7
	; offset 108
	.int	8
	; offset 112
	.int	9
	; offset 116
	.int	0
	; offset 120
	.int	1
	; offset 124
	.int	2
	; offset 128
	.int	3
	; offset 132
	.int	4
	; offset 136
	.int	5
	; offset 140
	.int	6
	; offset 144
	.int	7
	; offset 148
	.int	8
	; offset 152
	.int	9
	; offset 156
	.int	0
	; offset 160
	.int	1
	; offset 164
	.int	2
	; offset 168
	.int	3
	; offset 172
	.int	4
	; offset 176
	.int	5
	; offset 180
	.int	6
	; offset 184
	.int	7
	; offset 188
	.int	8
	; offset 192
	.int	9
	; offset 196
	.int	0
	; offset 200
	.int	1
	; offset 204
	.int	2
	; offset 208
	.int	3
	; offset 212
	.int	4
	; offset 216
	.int	5
	; offset 220
	.int	6
	; offset 224
	.int	7
	; offset 228
	.int	8
	; offset 232
	.int	9
	; offset 236
	.int	0
	; offset 240
	.int	1
	; offset 244
	.int	2
	; offset 248
	.int	3
	; offset 252
	.int	4
	; offset 256
	.int	5
	; offset 260
	.int	6
	; offset 264
	.int	7
	; offset 268
	.int	8
	; offset 272
	.int	9
	; offset 276
	.int	0
	; offset 280
	.int	1
	; offset 284
	.int	2
	; offset 288
	.int	3
	; offset 292
	.int	4
	; offset 296
	.int	5
	; offset 300
	.int	6
	; offset 304
	.int	7
	; offset 308
	.int	8
	; offset 312
	.int	9
	; offset 316
	.int	0
	; offset 320
	.int	1
	; offset 324
	.int	2
	; offset 328
	.int	3
	; offset 332
	.int	4
	; offset 336
	.int	5
	; offset 340
	.int	6
	; offset 344
	.int	7
	; offset 348
	.int	8
	; offset 352
	.int	9
	; offset 356
	.int	0
	; offset 360
	.int	1
	; offset 364
	.int	2
	; offset 368
	.int	3
	; offset 372
	.int	4
	; offset 376
	.int	5
	; offset 380
	.int	6
	; offset 384
	.int	7
	; offset 388
	.int	8
	; offset 392
	.int	9
	; offset 396
	.int	0
	; offset 400
	.int	1
	; offset 404
	.int	2
	; offset 408
	.int	3
	; offset 412
	.int	4
	; offset 416
	.int	5
	; offset 420
	.int	6
	; offset 424
	.int	7
	; offset 428
	.int	8
	; offset 432
	.int	9
	; offset 436
	.int	0
	; offset 440
	.int	1
	; offset 444
	.int	2
	; offset 448
	.int	3
	; offset 452
	.int	4
	; offset 456
	.int	5
	; offset 460
	.int	6
	; offset 464
	.int	7
	; offset 468
	.int	8
	; offset 472
	.int	9
	; offset 476
	.int	0
	; offset 480
	.int	1
	; offset 484
	.int	2
	; offset 488
	.int	3
	; offset 492
	.int	4
	; offset 496
	.int	5
	; offset 500
	.int	6
	; offset 504
	.int	7
	; offset 508
	.int	8
	; offset 512
	.int	9
	; offset 516
	.int	0
	; offset 520
	.int	1
	; offset 524
	.int	2
	; offset 528
	.int	3
	; offset 532
	.int	4
	; offset 536
	.int	5
	; offset 540
	.int	6
	; offset 544
	.int	7
	; offset 548
	.int	8
	; offset 552
	.int	9
	; offset 556
	.int	0
	; offset 560
	.int	1
	; offset 564
	.int	2
	; offset 568
	.int	3
	; offset 572
	.int	4
	; offset 576
	.int	5
	; offset 580
	.int	6
	; offset 584
	.int	7
	; offset 588
	.int	8
	; offset 592
	.int	9
	; offset 596
	.int	0
	; offset 600
	.int	1
	; offset 604
	.int	2
	; offset 608
	.int	3
	; offset 612
	.int	4
	; offset 616
	.int	5
	; offset 620
	.int	6
	; offset 624
	.int	7
	; offset 628
	.int	8
	; offset 632
	.int	9
	; offset 636
	.int	0
	; offset 640
	.int	1
	; offset 644
	.int	2
	; offset 648
	.int	3
	; offset 652
	.int	4
	; offset 656
	.int	5
	; offset 660
	.int	6
	; offset 664
	.int	7
	; offset 668
	.int	8
	; offset 672
	.int	9
	; offset 676
	.int	0
	; offset 680
	.int	1
	; offset 684
	.int	2
	; offset 688
	.int	3
	; offset 692
	.int	4
	; offset 696
	.int	5
	; offset 700
	.int	6
	; offset 704
	.int	7
	; offset 708
	.int	8
	; offset 712
	.int	9
	; offset 716
	.int	0
	; offset 720
	.int	1
	; offset 724
	.int	2
	; offset 728
	.int	3
	; offset 732
	.int	4
	; offset 736
	.int	5
	; offset 740
	.int	6
	; offset 744
	.int	7
	; offset 748
	.int	8
	; offset 752
	.int	9
	; offset 756
	.int	0
	; offset 760
	.int	1
	; offset 764
	.int	2
	; offset 768
	.int	3
	; offset 772
	.int	4
	; offset 776
	.int	5
	; offset 780
	.int	6
	; offset 784
	.int	7
	; offset 788
	.int	8
	; offset 792
	.int	9
	; offset 796
	.int	0
	; offset 800
	.int	1
	; offset 804
	.int	2
	; offset 808
	.int	3
	; offset 812
	.int	4
	; offset 816
	.int	5
	; offset 820
	.int	6
	; offset 824
	.int	7
	; offset 828
	.int	8
	; offset 832
	.int	9
	; offset 836
	.int	0
	; offset 840
	.int	1
	; offset 844
	.int	2
	; offset 848
	.int	3
	; offset 852
	.int	4
	; offset 856
	.int	5
	; offset 860
	.int	6
	; offset 864
	.int	7
	; offset 868
	.int	8
	; offset 872
	.int	9
	; offset 876
	.int	0
	; offset 880
	.int	1
	; offset 884
	.int	2
	; offset 888
	.int	3
	; offset 892
	.int	4
	; offset 896
	.int	5
	; offset 900
	.int	6
	; offset 904
	.int	7
	; offset 908
	.int	8
	; offset 912
	.int	9
	; offset 916
	.int	0
	; offset 920
	.int	1
	; offset 924
	.int	2
	; offset 928
	.int	3
	; offset 932
	.int	4
	; offset 936
	.int	5
	; offset 940
	.int	6
	; offset 944
	.int	7
	; offset 948
	.int	8
	; offset 952
	.int	9
	; offset 956
	.int	0
	; offset 960
	.int	1
	; offset 964
	.int	2
	; offset 968
	.int	3
	; offset 972
	.int	4
	; offset 976
	.int	5
	; offset 980
	.int	6
	; offset 984
	.int	7
	; offset 988
	.int	8
	; offset 992
	.int	9
	; offset 996
	.int	0
	; offset 1000
	.int	1
	; offset 1004
	.int	2
	; offset 1008
	.int	3
	; offset 1012
	.int	4
	; offset 1016
	.int	5
	; offset 1020
	.int	6
	; offset 1024
	.int	7
	; offset 1028
	.int	8
	; offset 1032
	.int	9
	; offset 1036
	.int	0
	; offset 1040
	.int	1
	; offset 1044
	.int	2
	; offset 1048
	.int	3
	; offset 1052
	.int	4
	; offset 1056
	.int	5
	; offset 1060
	.int	6
	; offset 1064
	.int	7
	; offset 1068
	.int	8
	; offset 1072
	.int	9
	; offset 1076
	.int	0
	; offset 1080
	.int	1
	; offset 1084
	.int	2
	; offset 1088
	.int	3
	; offset 1092
	.int	4
	; offset 1096
	.int	5
	; offset 1100
	.int	6
	; offset 1104
	.int	7
	; offset 1108
	.int	8
	; offset 1112
	.int	9
	; offset 1116
	.int	0
	.skip 15264
	; end of initialization for buffer
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
	; info = 20
	; msg = 24
	; i = 44
	; j = 40
	; taddr = 32
	; cksum = 36
	; buffer_cached = 16
	; lcl_spill_temp_2 = 48
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_main:	; 0xc8
	.loc	2	55	0
;  51      dbgputc('\n');                                                    \
;  52  } while(0);
;  53  
;  54  int main(int argc, char **argv)
;  55  {
 {  
;	.prologue
	      subi sp3,sp3,64 ;;      		; [] 
	      subi sp,sp,64           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,64         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,48 ;;         		; [] lcl_spill_temp_2
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	61	0
;  57      struct mbox_msg msg;
;  58      uint32_t i, j;
;  59      uint32_t *taddr;
;  60      uint32_t cksum;
;  61      uint32_t *buffer_cached = buffer;
	      addi A3,gp2,@ltoff(.ldm_shared#)		; [] .ldm_shared
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
	.loc	2	65	0
;  62  
;  63      //puts("start ccr\n");
;  64      //start_ccr(2);
;  65      info = pp_get_hw_info();
	.global	pp_get_hw_info
	      j r7,pp_get_hw_info# ;; 		; [] pp_get_hw_info
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	61	0
	      sw D0,sp2,16            		; [] buffer_cached
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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
.BB2_main:	; 0xff
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	65	0
	      copy d8,d4              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d8,sp,20             		; [] info
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 
; BB:3 cycle count: 0
.L_2_13:	; 0x109
 {  
	      nop ;;                  		; [] 
	.loc	2	77	0
;  73  #endif
;  74      dbgputh(info->mdesc.pac_base);
;  75      dbgputc('\n');
;  76      
;  77      mbox_recv_pkg(&msg);
	      addi d0,sp,24           		; [] msg
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

; Block: 4 Pred: 3 Succ: 5 9 
; BB:4 cycle count: 0
.Lt_2_1:	; 0x12c
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	78	0
;  78      taddr = (uint32_t*)msg.data;
	      lw D0,sp2,28            		; [] msg+4
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,32            		; [] taddr
	.loc	2	98	0
;  94      dbgputh(info->mdesc.pac_base);
;  95      dbgputc('\n');
;  96  
;  97      //for(i = 0; i < BUF_SZ; i++) {
;  98      cksum = 0x33664888;
	      movi D8,862341256       		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,36            		; [] cksum
	      nop                     		; [] 
 }	;;
	loop_start:

	;;
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	100	0
;  99      asm("loop_start:\n");
; 100      for(j = 0; j < REPEAT; j++) {
	      movi D0,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,40            		; [] j
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,sp,40             		; [] j
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sgtiu d0,p1,p2,d0,255   		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_2_15 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

; Block: 5 Pred: 4 8 Succ: 6 8 
; BB:5 cycle count: 0
.L_2_14:	; 0x185
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	101	0
; 101          for(i = 0; i < (BUF_SZ >> 2); i++) {
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,44            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,sp,44             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sgtiu d0,p1,p2,d0,4095  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_2_17 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

; Block: 6 Pred: 5 7 Succ: 7 
; BB:6 cycle count: 0
.L_2_16:	; 0x1c1
	;;
	operation_start:

	;;
 {  
	      nop ;;                  		; [] 
	.loc	2	104	0
; 102              asm("operation_start:\n");
; 103  #if defined(READ_TEST)
; 104              buffer_cached[i] = taddr[i];
	      lw d0,sp,32             		; [] taddr
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d8,sp,44             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      lw d1,sp,16             		; [] buffer_cached
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d2,sp,44             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      slli d2,d2,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      add a3,d1,d2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }	;;
	operation_end:

	;;


; Block: 7 Pred: 6 Succ: 8 6 
; BB:7 cycle count: 0
.Lt_2_3:	; 0x20f
 {  
	      nop ;;                  		; [] 
	.loc	2	101	0
	      lw d0,sp,44             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      sw d0,sp,44             		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,sp2,44            		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sgtiu D0,p1,p2,D0,4095  		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_2_16 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

; Block: 8 Pred: 5 7 Succ: 9 5 
; BB:8 cycle count: 0
.L_2_17:	; 0x25a
.Lt_2_2:	; 0x25a
 {  
	      nop ;;                  		; [] 
	.loc	2	100	0
	      lw d0,sp,40             		; [] j
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      sw d0,sp,40             		; [] j
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lw D0,sp2,40            		; [] j
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sgtiu D0,p1,p2,D0,255   		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_2_14 ;;            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

; Block: 9 Pred: 4 8 Succ: 10 
; BB:9 cycle count: 0
.L_2_15:	; 0x2a5
	;;
	loop_end:

	;;
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	117	0
; 113          }
; 114      }
; 115      asm("loop_end:\n");
; 116  
; 117      msg.cmd=0xf0f00f0f;
	      movi d8,-252702961      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d8,sp,24             		; [] msg
	      nop                     		; [] 
	.loc	2	118	0
; 118      msg.data=cksum;
	      lw D0,sp2,36            		; [] cksum
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,28            		; [] msg+4
	      nop                     		; [] 
 }

; Block: 10 Pred: 9 Succ: 11 
; BB:10 cycle count: 0
.L_2_18:	; 0x2c2
 {  
	      nop ;;                  		; [] 
	.loc	2	119	0
; 119      mbox_send_pkg(&msg);
	      addi d0,sp,24           		; [] msg
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      j r7,pp_send_mbox# ;;   		; [] pp_send_mbox
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

; Block: 11 Pred: 10 Succ: 
; BB:11 cycle count: 0
.Lt_2_4:	; 0x2e5
 {  
	.loc	2	126	0
; 122      
; 123      //get_and_show_ccr(2, i);
; 124      dbgputs("bye~ ");
; 125  
; 126  	return 0x0;
	      lw r7,sp3,48 ;;         		; [] lcl_spill_temp_2
	      addi sp,sp,64           		; [] 
	      movi d4,0               		; [] 
	      addi sp2,sp2,64         		; [] 
	      nop                     		; [] 
 } {  
	      addi sp3,sp3,64 ;;      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	.section .data
	.align 0
	.section .ldm_shared
	.align 4
	.section .text
	.align 4
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x3a, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x72627968
	.int.ua	0x632f6469, 0x2f77726d, 0x2e636170, 0x682f0063
	.int.ua	0x2f656d6f, 0x766e6f63, 0x65737265, 0x7269762f
	.int.ua	0x6c617574, 0x616c705f, 0x726f6674, 0x6f2f316d
	.int.ua	0x742f7475, 0x65677261, 0x626f2f74, 0x6f6d2f6a
	.int.ua	0x656c7564, 0x61702f73, 0x78652f63, 0x74756365
	.int.ua	0x656c6261, 0x726d632f, 0x3336315f, 0x325f3438
	.int.ua	0x415f3635, 0x445f4958, 0x5f325244, 0x706f0070
	.byte	0x65, 0x6e, 0x63, 0x63, 0x20, 0x34, 0x2e, 0x30
	.byte	0x00, 0x01, 0x00
	.int.ua	.debug_line
	.int.ua	0x70630302, 0x61775f70, 0x6d5f7469, 0x00786f62
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_pp_wait_mbox + 0x64
	.int.ua	0x000000e4, 0x6d630303, 0x02006773, 0x02000091
	.int.ua	0x70706603, 0x6e65735f, 0x626d5f64, 0x0300786f
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_pp_send_mbox
	.int.ua	.BB1_pp_send_mbox + 0x64
	.int.ua	0x0000010f, 0x6d660303, 0x02006773, 0x04000091
	.byte	0x02, 0x37, 0x6d, 0x61, 0x69, 0x6e, 0x00, 0x01
	.byte	0x04, 0x92, 0x30, 0xc0, 0x00
	.int.ua	.BB1_main
	.int.ua	.BB1_main + 0x23a
	.int.ua	0x61370203, 0x00636772, 0x03009102, 0x72613702
	.byte	0x67, 0x76, 0x00, 0x02, 0x91, 0x04, 0x00, 0x00
	.byte	0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_main - .BB1_pp_wait_mbox + 0x23a
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x17, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000013e, 0x0000010f, 0x6e69616d, 0x00000000
	.byte	0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.int.ua	0x03011101, 0x25081b08, 0x420b1308, 0x0006100b
	.int.ua	0x012e0200, 0x0b3b0b3a, 0x0a400803, 0x01120111
	.int.ua	0x00001301, 0x3a000503, 0x030b3b0b, 0x000a0208
	.int.ua	0x012e0400, 0x0b3b0b3a, 0x0c3f0803, 0x01110a40
	.byte	0x12, 0x01, 0x00, 0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits

