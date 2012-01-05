	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac_proc.c (pac_proc.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/dbcrc32p/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac_proc.c"
	.file	3	"/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
	.file	4	"/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/mem.h"
	.file	5	"/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.h"


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

	.section .ldm
	.org 0x0
	.type	crc_32_tab_28, @object
	.size	crc_32_tab_28, 1024
crc_32_tab_28:	; 0x0
	; offset 0
	.int	0
	; offset 4
	.int	1996959894
	; offset 8
	.int	-301047508
	; offset 12
	.int	-1727442502
	; offset 16
	.int	124634137
	; offset 20
	.int	1886057615
	; offset 24
	.int	-379345611
	; offset 28
	.int	-1637575261
	; offset 32
	.int	249268274
	; offset 36
	.int	2044508324
	; offset 40
	.int	-522852066
	; offset 44
	.int	-1747789432
	; offset 48
	.int	162941995
	; offset 52
	.int	2125561021
	; offset 56
	.int	-407360249
	; offset 60
	.int	-1866523247
	; offset 64
	.int	498536548
	; offset 68
	.int	1789927666
	; offset 72
	.int	-205950648
	; offset 76
	.int	-2067906082
	; offset 80
	.int	450548861
	; offset 84
	.int	1843258603
	; offset 88
	.int	-187386543
	; offset 92
	.int	-2083289657
	; offset 96
	.int	325883990
	; offset 100
	.int	1684777152
	; offset 104
	.int	-43845254
	; offset 108
	.int	-1973040660
	; offset 112
	.int	335633487
	; offset 116
	.int	1661365465
	; offset 120
	.int	-99664541
	; offset 124
	.int	-1928851979
	; offset 128
	.int	997073096
	; offset 132
	.int	1281953886
	; offset 136
	.int	-715111964
	; offset 140
	.int	-1570279054
	; offset 144
	.int	1006888145
	; offset 148
	.int	1258607687
	; offset 152
	.int	-770865667
	; offset 156
	.int	-1526024853
	; offset 160
	.int	901097722
	; offset 164
	.int	1119000684
	; offset 168
	.int	-608450090
	; offset 172
	.int	-1396901568
	; offset 176
	.int	853044451
	; offset 180
	.int	1172266101
	; offset 184
	.int	-589951537
	; offset 188
	.int	-1412350631
	; offset 192
	.int	651767980
	; offset 196
	.int	1373503546
	; offset 200
	.int	-925412992
	; offset 204
	.int	-1076862698
	; offset 208
	.int	565507253
	; offset 212
	.int	1454621731
	; offset 216
	.int	-809855591
	; offset 220
	.int	-1195530993
	; offset 224
	.int	671266974
	; offset 228
	.int	1594198024
	; offset 232
	.int	-972236366
	; offset 236
	.int	-1324619484
	; offset 240
	.int	795835527
	; offset 244
	.int	1483230225
	; offset 248
	.int	-1050600021
	; offset 252
	.int	-1234817731
	; offset 256
	.int	1994146192
	; offset 260
	.int	31158534
	; offset 264
	.int	-1731059524
	; offset 268
	.int	-271249366
	; offset 272
	.int	1907459465
	; offset 276
	.int	112637215
	; offset 280
	.int	-1614814043
	; offset 284
	.int	-390540237
	; offset 288
	.int	2013776290
	; offset 292
	.int	251722036
	; offset 296
	.int	-1777751922
	; offset 300
	.int	-519137256
	; offset 304
	.int	2137656763
	; offset 308
	.int	141376813
	; offset 312
	.int	-1855689577
	; offset 316
	.int	-429695999
	; offset 320
	.int	1802195444
	; offset 324
	.int	476864866
	; offset 328
	.int	-2056965928
	; offset 332
	.int	-228458418
	; offset 336
	.int	1812370925
	; offset 340
	.int	453092731
	; offset 344
	.int	-2113342271
	; offset 348
	.int	-183516073
	; offset 352
	.int	1706088902
	; offset 356
	.int	314042704
	; offset 360
	.int	-1950435094
	; offset 364
	.int	-54949764
	; offset 368
	.int	1658658271
	; offset 372
	.int	366619977
	; offset 376
	.int	-1932296973
	; offset 380
	.int	-69972891
	; offset 384
	.int	1303535960
	; offset 388
	.int	984961486
	; offset 392
	.int	-1547960204
	; offset 396
	.int	-725929758
	; offset 400
	.int	1256170817
	; offset 404
	.int	1037604311
	; offset 408
	.int	-1529756563
	; offset 412
	.int	-740887301
	; offset 416
	.int	1131014506
	; offset 420
	.int	879679996
	; offset 424
	.int	-1385723834
	; offset 428
	.int	-631195440
	; offset 432
	.int	1141124467
	; offset 436
	.int	855842277
	; offset 440
	.int	-1442165665
	; offset 444
	.int	-586318647
	; offset 448
	.int	1342533948
	; offset 452
	.int	654459306
	; offset 456
	.int	-1106571248
	; offset 460
	.int	-921952122
	; offset 464
	.int	1466479909
	; offset 468
	.int	544179635
	; offset 472
	.int	-1184443383
	; offset 476
	.int	-832445281
	; offset 480
	.int	1591671054
	; offset 484
	.int	702138776
	; offset 488
	.int	-1328506846
	; offset 492
	.int	-942167884
	; offset 496
	.int	1504918807
	; offset 500
	.int	783551873
	; offset 504
	.int	-1212326853
	; offset 508
	.int	-1061524307
	; offset 512
	.int	-306674912
	; offset 516
	.int	-1698712650
	; offset 520
	.int	62317068
	; offset 524
	.int	1957810842
	; offset 528
	.int	-355121351
	; offset 532
	.int	-1647151185
	; offset 536
	.int	81470997
	; offset 540
	.int	1943803523
	; offset 544
	.int	-480048366
	; offset 548
	.int	-1805370492
	; offset 552
	.int	225274430
	; offset 556
	.int	2053790376
	; offset 560
	.int	-468791541
	; offset 564
	.int	-1828061283
	; offset 568
	.int	167816743
	; offset 572
	.int	2097651377
	; offset 576
	.int	-267414716
	; offset 580
	.int	-2029476910
	; offset 584
	.int	503444072
	; offset 588
	.int	1762050814
	; offset 592
	.int	-144550051
	; offset 596
	.int	-2140837941
	; offset 600
	.int	426522225
	; offset 604
	.int	1852507879
	; offset 608
	.int	-19653770
	; offset 612
	.int	-1982649376
	; offset 616
	.int	282753626
	; offset 620
	.int	1742555852
	; offset 624
	.int	-105259153
	; offset 628
	.int	-1900089351
	; offset 632
	.int	397917763
	; offset 636
	.int	1622183637
	; offset 640
	.int	-690576408
	; offset 644
	.int	-1580100738
	; offset 648
	.int	953729732
	; offset 652
	.int	1340076626
	; offset 656
	.int	-776247311
	; offset 660
	.int	-1497606297
	; offset 664
	.int	1068828381
	; offset 668
	.int	1219638859
	; offset 672
	.int	-670225446
	; offset 676
	.int	-1358292148
	; offset 680
	.int	906185462
	; offset 684
	.int	1090812512
	; offset 688
	.int	-547295293
	; offset 692
	.int	-1469587627
	; offset 696
	.int	829329135
	; offset 700
	.int	1181335161
	; offset 704
	.int	-882789492
	; offset 708
	.int	-1134132454
	; offset 712
	.int	628085408
	; offset 716
	.int	1382605366
	; offset 720
	.int	-871598187
	; offset 724
	.int	-1156888829
	; offset 728
	.int	570562233
	; offset 732
	.int	1426400815
	; offset 736
	.int	-977650754
	; offset 740
	.int	-1296233688
	; offset 744
	.int	733239954
	; offset 748
	.int	1555261956
	; offset 752
	.int	-1026031705
	; offset 756
	.int	-1244606671
	; offset 760
	.int	752459403
	; offset 764
	.int	1541320221
	; offset 768
	.int	-1687895376
	; offset 772
	.int	-328994266
	; offset 776
	.int	1969922972
	; offset 780
	.int	40735498
	; offset 784
	.int	-1677130071
	; offset 788
	.int	-351390145
	; offset 792
	.int	1913087877
	; offset 796
	.int	83908371
	; offset 800
	.int	-1782625662
	; offset 804
	.int	-491226604
	; offset 808
	.int	2075208622
	; offset 812
	.int	213261112
	; offset 816
	.int	-1831694693
	; offset 820
	.int	-438977011
	; offset 824
	.int	2094854071
	; offset 828
	.int	198958881
	; offset 832
	.int	-2032938284
	; offset 836
	.int	-237706686
	; offset 840
	.int	1759359992
	; offset 844
	.int	534414190
	; offset 848
	.int	-2118248755
	; offset 852
	.int	-155638181
	; offset 856
	.int	1873836001
	; offset 860
	.int	414664567
	; offset 864
	.int	-2012718362
	; offset 868
	.int	-15766928
	; offset 872
	.int	1711684554
	; offset 876
	.int	285281116
	; offset 880
	.int	-1889165569
	; offset 884
	.int	-127750551
	; offset 888
	.int	1634467795
	; offset 892
	.int	376229701
	; offset 896
	.int	-1609899400
	; offset 900
	.int	-686959890
	; offset 904
	.int	1308918612
	; offset 908
	.int	956543938
	; offset 912
	.int	-1486412191
	; offset 916
	.int	-799009033
	; offset 920
	.int	1231636301
	; offset 924
	.int	1047427035
	; offset 928
	.int	-1362007478
	; offset 932
	.int	-640263460
	; offset 936
	.int	1088359270
	; offset 940
	.int	936918000
	; offset 944
	.int	-1447252397
	; offset 948
	.int	-558129467
	; offset 952
	.int	1202900863
	; offset 956
	.int	817233897
	; offset 960
	.int	-1111625188
	; offset 964
	.int	-893730166
	; offset 968
	.int	1404277552
	; offset 972
	.int	615818150
	; offset 976
	.int	-1160759803
	; offset 980
	.int	-841546093
	; offset 984
	.int	1423857449
	; offset 988
	.int	601450431
	; offset 992
	.int	-1285129682
	; offset 996
	.int	-1000256840
	; offset 1000
	.int	1567103746
	; offset 1004
	.int	711928724
	; offset 1008
	.int	-1274298825
	; offset 1012
	.int	-1022587231
	; offset 1016
	.int	1510334235
	; offset 1020
	.int	755167117
	; end of initialization for crc_32_tab
	.org 0x400
	.type	lastcrc32_29, @object
	.size	lastcrc32_29, 4
lastcrc32_29:	; 0x400
	.skip 4
	; end of initialization for lastcrc32
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

	; Program Unit: task_start
	.proc	task_start#
	.global	task_start#
task_start#:	; 0xc8
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_task_start:	; 0xc8
	.loc	2	126	0
; 122  /*
; 123   * @ret -1 if error, terminate prog.
; 124   */
; 125  int task_start(uint32_t d)
; 126  {
 {  
;	.unwentry
	      nop ;;                  		; [] 
	.loc	2	128	0
; 127      dbgputs("start crc32\n");
; 128      lastcrc32 = 0xffffffff;
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
	      movi d8,-1              		; [] 
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
	.loc	2	129	0
; 129      return 0;
	      jr r7 ;;                		; [] 
	.loc	2	128	0
	      sw d8,a3,1024           		; [] 
	.loc	2	129	0
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
	.endp	task_start#
	.section .text

	; Program Unit: task_process
	.proc	task_process#
	.global	task_process#
task_process#:	; 0xfa
	; oldcrc32 = 4
	; i = 8
	; tab = 0
	; lcl_spill_temp_2 = 12
; Block: 1 Pred: Succ: 2 4 
; BB:1 cycle count: 0
.BB1_task_process:	; 0xfa
	.loc	2	136	0
; 132  /*
; 133   * @ret -1 if error, terminate prog.
; 134   */
; 135  int task_process(uint8_t *in, uint8_t *out, uint16_t nr, uint16_t sz)
; 136  {
 {  
;	.prologue
	      subi sp3,sp3,16 ;;      		; [] 
	      subi sp,sp,16           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,16         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,12 ;;         		; [] lcl_spill_temp_2
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	139	0
; 137      register uint32_t oldcrc32;
; 138      register int i;
; 139      const register uint32_t* tab = crc_32_tab;
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      sw D0,sp2,0             		; [] tab
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	145	0
; 141      dbgputs("process crc32 ");
; 142      dbgputh(sz);
; 143      dbgputc('\n');
; 144  
; 145      oldcrc32 = lastcrc32; 
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      lw D0,A3,1024           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,4             		; [] oldcrc32
	.loc	2	146	0
; 146      for(i = 0; i < sz; i++) {
	      movi D8,0               		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D8,sp2,8             		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,sp,8              		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,28           		; [] sz
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lhu d1,a3,0             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      slt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p2) b .L_3_5 ;;             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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
.L_3_4:	; 0x181
 {  
	      nop ;;                  		; [] 
	.loc	2	148	0
; 147          //oldcrc32 = UPDC32(crc_32_tab, in[i], oldcrc32);
; 148          oldcrc32 = UPDC32(tab, in[i], oldcrc32);
	      lw d0,sp,0              		; [] tab
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,16           		; [] in
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
	      lw d2,sp,8              		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      lbu d8,a3,0             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d9,sp,4              		; [] oldcrc32
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      xor d1,d8,d9            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      andi d1,d1,255          		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      slli d8,d1,2            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      copy d1,d8              		; [] 
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
	      lw d0,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d1,sp,4              		; [] oldcrc32
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      srli d1,d1,8            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      xor d0,d0,d1            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sw d0,sp,4              		; [] oldcrc32
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 }

; Block: 3 Pred: 2 Succ: 4 2 
; BB:3 cycle count: 0
.Lt_3_1:	; 0x1f4
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	146	0
	      lw D8,sp2,8             		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
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
	      nop                     		; [] 
	      nop                     		; [] 
	      sw D0,sp2,8             		; [] i
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lw d0,sp,8              		; [] i
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,sp,28           		; [] sz
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lhu d1,a3,0             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      slt d0,p1,p2,d0,d1      		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	 (p1) b .L_3_4 ;;             		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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
.L_3_5:	; 0x249
 {  
	      nop ;;                  		; [] 
	.loc	2	150	0
; 149      }
; 150      lastcrc32 = oldcrc32;
	      lw d0,sp,4              		; [] oldcrc32
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
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
	      sw d0,a3,1024           		; [] 
	.loc	2	152	0
; 151  
; 152      return 0;
	      movi d4,0               		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      lw r7,sp3,12 ;;         		; [] lcl_spill_temp_2
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
	.endp	task_process#

	.section .rodata, "a", "progbits"
	.align	4
	.section .text

	; Program Unit: task_end
	.proc	task_end#
	.global	task_end#
task_end#:	; 0x294
	; lcl_spill_temp_3 = 16
; Block: 1 Pred: Succ: 2 
; BB:1 cycle count: 0
.BB1_task_end:	; 0x294
	.loc	2	159	0
; 155  /*
; 156   * @ret -1 if error, terminate prog.
; 157   */
; 158  int task_end(uint32_t *d)
; 159  {
 {  
;	.prologue
	      subi sp3,sp3,32 ;;      		; [] 
	      subi sp,sp,32           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,32         		; [] 
	      nop                     		; [] 
 } {  
;	.savesp r7, 0
	      sw r7,sp3,16 ;;         		; [] lcl_spill_temp_3
	.loc	2	162	0
; 160      dbgputs("final crc32\n");
; 161      dbgputv(lastcrc32);
; 162      lastcrc32 = ~lastcrc32;
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
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
	      lw d8,a3,1024           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      not d0,d8               		; [] 
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
	      sw d0,a3,1024           		; [] 
	      nop                     		; [] 
	.loc	2	165	0
; 163      dbgputv(lastcrc32);
; 164      
; 165      puts("crc32 result: ");
	      addi A3,gp2,@ltoff(.rodata#)		; [] .rodata
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
	.global	puts
	      j r7,puts# ;;           		; [] puts
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

; Block: 2 Pred: 1 Succ: 3 
; BB:2 cycle count: 0
.BB2_task_end:	; 0x302
 {  
	      nop ;;                  		; [] 
	.loc	2	166	0
; 166      puth(lastcrc32);
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
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
	      lw d0,a3,1024           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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

; Block: 3 Pred: 2 Succ: 4 
; BB:3 cycle count: 0
.BB3_task_end:	; 0x343
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	.loc	2	167	0
; 167      putc('\n');
	      movi d8,10              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	.global	putc
	      j r7,putc# ;;           		; [] putc
	      sw d8,sp,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

; Block: 4 Pred: 3 Succ: 
; BB:4 cycle count: 0
.BB4_task_end:	; 0x366
 {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	169	0
; 168  
; 169      *d = lastcrc32;
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      lw D0,A3,1024           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,sp2,32          		; [] d
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
	.loc	2	170	0
; 170      OUTPUT_BUFFER0_NAME[0] = (lastcrc32 >> 24) & 0xff;
	      addi a3,gp,@ltoff(.ldm#)		; [] .ldm
	      nop                     		; [] 
	.loc	2	169	0
	      sw D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	170	0
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
	      lw d8,a3,1024           		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.global	outbuffer0
	      addi a3,gp,@ltoff(outbuffer0#)		; [] outbuffer0
	      srli d0,d8,24           		; [] 
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
	      sb d0,a3,0              		; [] 
	      nop                     		; [] 
	.loc	2	171	0
; 171      OUTPUT_BUFFER0_NAME[1] = (lastcrc32 >> 16) & 0xff;
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      lw D8,A3,1024           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@ltoff(outbuffer0#)		; [] outbuffer0
	      srli D0,D8,16           		; [] 
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
	      sb D0,A3,1              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	172	0
; 172      OUTPUT_BUFFER0_NAME[2] = (lastcrc32 >> 8) & 0xff;
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      lw D0,A3,1024           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@ltoff(outbuffer0#)		; [] outbuffer0
	      srli D0,D0,8            		; [] 
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
	      sb D0,A3,2              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	173	0
; 173      OUTPUT_BUFFER0_NAME[3] = lastcrc32 & 0xff;
	      addi A3,gp2,@ltoff(.ldm#)		; [] .ldm
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
	      lw D0,A3,1024           		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@ltoff(outbuffer0#)		; [] outbuffer0
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
	.loc	2	175	0
; 174      dbgputs("done\n\n");
; 175      return 0;
	      movi d4,0               		; [] 
	.loc	2	173	0
	      sb D0,A3,3              		; [] 
	      nop                     		; [] 
 } {  
	.loc	2	175	0
	      lw r7,sp3,16 ;;         		; [] lcl_spill_temp_3
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
	.endp	task_end#

	.section .rodata
	.org 0x0
	; offset 0
	.stringz "crc32 result: "
	.section .data
	.align 0
	.section .ldm
	.align 4
	.section .text
	.align 4
	.section .rodata
	.align 4
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x96, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x72627968
	.int.ua	0x642f6469, 0x63726362, 0x702f3233, 0x705f6361
	.int.ua	0x2e636f72, 0x682f0063, 0x2f656d6f, 0x766e6f63
	.int.ua	0x65737265, 0x7269762f, 0x6c617574, 0x616c705f
	.int.ua	0x726f6674, 0x6f2f316d, 0x742f7475, 0x65677261
	.int.ua	0x626f2f74, 0x6f6d2f6a, 0x656c7564, 0x61702f73
	.int.ua	0x78652f63, 0x74756365, 0x656c6261, 0x6362642f
	.int.ua	0x32336372, 0x706f0070, 0x63636e65, 0x302e3420
	.byte	0x00, 0x01, 0x00
	.int.ua	.debug_line
	.int.ua	0x70630302, 0x61775f70, 0x6d5f7469, 0x00786f62
	.byte	0x03, 0x92, 0x30, 0x20
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_pp_wait_mbox + 0x64
	.int.ua	0x000000dc, 0x6d630303, 0x02006773, 0x02000091
	.int.ua	0x70706603, 0x6e65735f, 0x626d5f64, 0x0300786f
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_pp_send_mbox
	.int.ua	.BB1_pp_send_mbox + 0x64
	.int.ua	0x00000107, 0x6d660303, 0x02006773, 0x04000091
	.int.ua	0x61747e02, 0x735f6b73, 0x74726174, 0x92030100
	.byte	0x30, 0x00
	.int.ua	.BB1_task_start
	.int.ua	.BB1_task_start + 0x32
	.int.ua	0x0000012f, 0x647e0203, 0x00910200, 0x88020400
	.int.ua	0x6b736174, 0x6f72705f, 0x73736563, 0x92030100
	.byte	0x30, 0x10
	.int.ua	.BB1_task_process
	.int.ua	.BB1_task_process + 0x19a
	.int.ua	0x00000176, 0x69880203, 0x9102006e, 0x88020300
	.int.ua	0x0074756f, 0x03049102, 0x726e8802, 0x08910200
	.int.ua	0x73880203, 0x9102007a, 0x0205000c, 0x7361749f
	.byte	0x6b, 0x5f, 0x65, 0x6e, 0x64, 0x00, 0x01, 0x03
	.byte	0x92, 0x30, 0x20
	.int.ua	.BB1_task_end
	.int.ua	.BB1_task_end + 0x20d
	.byte	0x03, 0x02, 0x9f, 0x64, 0x00, 0x02, 0x91, 0x00
	.byte	0x00, 0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pp_wait_mbox
	.int.ua	.BB1_task_end - .BB1_pp_wait_mbox + 0x20d
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x3b, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000019a, 0x00000107, 0x6b736174, 0x6174735f
	.int.ua	0x2f007472, 0x74000001, 0x5f6b7361, 0x636f7270
	.int.ua	0x00737365, 0x00000176, 0x6b736174, 0x646e655f
	.byte	0x00, 0x00, 0x00, 0x00, 0x00

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

