	;  /home/converse/virtual_platform1/prebuilt/linux-x86/toolchain/pacduo.2009-1111/toolchain/DSP1/lib/gcc-lib/pacdsp-pacc32-linux/4.0/be::4.0

	;-----------------------------------------------------------
	; Compiling /home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c (biquad_one_section.B)
	;-----------------------------------------------------------

	;-----------------------------------------------------------
	; Options:
	;-----------------------------------------------------------
	;  Target:PACDSP, ISA:ISA_2, Endian:little, Pointer Size:32
	;  -O0	(Optimization level)
	;  -g0	(Debug level)
	;  -m2	(Report advisories)
	;-----------------------------------------------------------

	.file	1	"/home/converse/virtual_platform1/out/target/obj/modules/pac/executable/biquad_one_section/<command-line>"
	.file	2	"/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c"


	.section .text, "ax", "progbits"
	.align	4
	.section .text

	; Program Unit: pin_down
	.proc	pin_down#
	.global	pin_down#
pin_down#:	; 0x0
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_pin_down:	; 0x0
	.loc	2	56	0
;  52  #define TYPE short
;  53  
;  54  TYPE 
;  55  pin_down(TYPE x)
;  56  {
 {  
	.loc	2	57	0
;  57    return ((TYPE) 7) ;
;	.unwentry
	      jr r7 ;;                		; [] 
	      nop                     		; [] 
	      movi d4,7               		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
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

	.section .sdata, "wa", "progbits"
	.align	2
	.section .text

	; Program Unit: main
	.proc	main#
	.global	main#
main#:	; 0x1e
	; y = 2
	; w = 0
; Block: 1 Pred: Succ: 
; BB:1 cycle count: 0
.BB1_main:	; 0x1e
	.loc	2	62	0
;  58  }
;  59  
;  60  
;  61  TYPE main()
;  62  {
 {  
;	.unwentry
	      subi sp3,sp3,16 ;;      		; [] 
	      subi sp,sp,16           		; [] 
	      nop                     		; [] 
	      subi sp2,sp2,16         		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	76	0
;  72    #endif
;  73    //START_PROFILING;
;  74    
;  75    #ifndef INTRN
;  76    w  = x - a1 * w1 ; 
	      addi a3,gp,@gprel(.sdata#)		; [] x
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
	      addi a3,gp,@gprel(.sdata#+2)		; [] w1
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d1,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      addi a3,gp,@gprel(.sdata#+4)		; [] a1
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      lh d2,a3,0              		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	      sub d0,d0,d3            		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      sh d0,sp,0              		; [] w
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	77	0
;  77    w -= a2 * w2 ; 
	      lh D8,sp2,0             		; [] w
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+6)		; [] w2
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D9,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+8)		; [] a2
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D10,A3,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      permh2 D11,D10,D10,1,0  		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      dotp2 D11,D9,D11        		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      slli D11,D11,16         		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      fmacuu D11,D9,D10       		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sub D0,D8,D11           		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,sp2,0             		; [] w
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	78	0
;  78    y  = b0 * w ;
	      addi A3,gp2,@gprel(.sdata#+10)		; [] b0
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D1,sp2,0             		; [] w
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      permh2 D2,D1,D1,1,0     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      dotp2 D2,D0,D2          		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      slli D2,D2,16           		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      fmacuu D2,D0,D1         		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D2,sp2,2             		; [] y
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	79	0
;  79    y += b1 * w1 ; 
	      lh D8,sp2,2             		; [] y
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+2)		; [] w1
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D9,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+12)		; [] b1
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D10,A3,0             		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      permh2 D11,D10,D10,1,0  		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      dotp2 D11,D9,D11        		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      slli D11,D11,16         		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      fmacuu D11,D9,D10       		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      add D0,D8,D11           		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,sp2,2             		; [] y
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	80	0
;  80    y += b2 * w2 ; 
	      lh D0,sp2,2             		; [] y
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+6)		; [] w2
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D1,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+14)		; [] b2
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D2,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      permh2 D3,D2,D2,1,0     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      dotp2 D3,D1,D3          		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      slli D3,D3,16           		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      fmacuu D3,D1,D2         		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      add D0,D0,D3            		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      sh D0,sp2,2             		; [] y
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	.loc	2	82	0
;  81    
;  82    w2 = w1 ; 
	      addi A3,gp2,@gprel(.sdata#+2)		; [] w1
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      lh D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+6)		; [] w2
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
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
	.loc	2	83	0
;  83    w1 = w  ; 
	      lh D0,sp2,0             		; [] w
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      addi A3,gp2,@gprel(.sdata#+2)		; [] w1
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
	      nop                     		; [] 
 } {  
	      nop ;;                  		; [] 
	.loc	2	108	0
; 104    
; 105    //printf("%x\n", ck_out(&sum)) ;
; 106    //return((TYPE) y) ; 
; 107    //return ck_out(&sum);
; 108    return y ;
	      lh d4,sp,2              		; [] y
	      nop                     		; [] 
	.loc	2	83	0
	      sh D0,A3,0              		; [] 
	      nop                     		; [] 
 } {  
	.loc	2	108	0
	      addi sp3,sp3,16 ;;      		; [] 
	      addi sp,sp,16           		; [] 
	      nop                     		; [] 
	      addi sp2,sp2,16         		; [] 
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

	.section .sdata
	.org 0x0
	.type	x_2_3, @object
	.size	x_2_3, 2
x_2_3:	; 0x0
	; offset 0
	.short	7
	; end of initialization for x
	.org 0x2
	.type	w1_2_4, @object
	.size	w1_2_4, 2
w1_2_4:	; 0x2
	; offset 2
	.short	7
	; end of initialization for w1
	.org 0x4
	.type	a1_2_9, @object
	.size	a1_2_9, 2
a1_2_9:	; 0x4
	; offset 4
	.short	7
	; end of initialization for a1
	.org 0x6
	.type	w2_2_5, @object
	.size	w2_2_5, 2
w2_2_5:	; 0x6
	; offset 6
	.short	7
	; end of initialization for w2
	.org 0x8
	.type	a2_2_10, @object
	.size	a2_2_10, 2
a2_2_10:	; 0x8
	; offset 8
	.short	7
	; end of initialization for a2
	.org 0xa
	.type	b0_2_6, @object
	.size	b0_2_6, 2
b0_2_6:	; 0xa
	; offset 10
	.short	7
	; end of initialization for b0
	.org 0xc
	.type	b1_2_7, @object
	.size	b1_2_7, 2
b1_2_7:	; 0xc
	; offset 12
	.short	7
	; end of initialization for b1
	.org 0xe
	.type	b2_2_8, @object
	.size	b2_2_8, 2
b2_2_8:	; 0xe
	; offset 14
	.short	7
	; end of initialization for b2
	.section .text
	.align 4
	.section .sdata
	.align 2
;	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x08, 0x01, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_abbrev
	.int.ua	0x682f0104, 0x2f656d6f, 0x766e6f63, 0x65737265
	.int.ua	0x7269762f, 0x6c617574, 0x616c705f, 0x726f6674
	.int.ua	0x742f316d, 0x73747365, 0x2f746975, 0x6e617473
	.int.ua	0x6f6c6164, 0x6e2f656e, 0x2f756874, 0x53505344
	.int.ua	0x656e6f74, 0x7169622f, 0x5f646175, 0x5f656e6f
	.int.ua	0x74636573, 0x2e6e6f69, 0x682f0063, 0x2f656d6f
	.int.ua	0x766e6f63, 0x65737265, 0x7269762f, 0x6c617574
	.int.ua	0x616c705f, 0x726f6674, 0x6f2f316d, 0x742f7475
	.int.ua	0x65677261, 0x626f2f74, 0x6f6d2f6a, 0x656c7564
	.int.ua	0x61702f73, 0x78652f63, 0x74756365, 0x656c6261
	.int.ua	0x7169622f, 0x5f646175, 0x5f656e6f, 0x74636573
	.int.ua	0x006e6f69, 0x6e65706f, 0x34206363, 0x0100302e
	.byte	0x00
	.int.ua	.debug_line
	.int.ua	0x70380202, 0x645f6e69, 0x006e776f, 0x30920301
	.byte	0x00
	.int.ua	.BB1_pin_down
	.int.ua	.BB1_pin_down + 0x1e
	.int.ua	0x000000f5, 0x78380203, 0x00910200, 0x3e020400
	.byte	0x6d, 0x61, 0x69, 0x6e, 0x00, 0x01, 0x03, 0x92
	.byte	0x30, 0x10
	.int.ua	.BB1_main
	.int.ua	.BB1_main + 0x1c2
	.byte	0x00, 0x00

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x1c, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.byte	0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.int.ua	.BB1_pin_down
	.int.ua	.BB1_main - .BB1_pin_down + 0x1c2
	.byte	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x24, 0x00, 0x00, 0x00, 0x02, 0x00
	.int.ua	.debug_info
	.int.ua	0x0000010c, 0x000000cf, 0x5f6e6970, 0x6e776f64
	.byte	0x00, 0xf5, 0x00, 0x00, 0x00, 0x6d, 0x61, 0x69
	.byte	0x6e, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .debug_abbrev, "", "progbits"
	.align	0
	.int.ua	0x03011101, 0x25081b08, 0x420b1308, 0x0006100b
	.int.ua	0x012e0200, 0x0b3b0b3a, 0x0c3f0803, 0x01110a40
	.int.ua	0x13010112, 0x05030000, 0x3b0b3a00, 0x0208030b
	.int.ua	0x0400000a, 0x0b3a002e, 0x08030b3b, 0x0a400c3f
	.byte	0x11, 0x01, 0x12, 0x01, 0x00, 0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits

