# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c"
# 40 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/checksum.h" 1





typedef unsigned int checksum_t;

inline static void ck_add_16(checksum_t* c, short x)
{
 *c = ((*c * 2) | (*c >> 31)) + x;
}

inline static void ck_adda_16(checksum_t* c, short* arr, int size)
{
 int i;

 for(i = 0; i<size; i++)
                ck_add_16(c, arr[i]);
}

inline static void ck_init(checksum_t* c)
{
 *c = 0x7ca463e2;
}

inline static void ck_add(checksum_t* c, int x)
{
 *c = ((*c * 2) | (*c >> 31)) + x;
}

inline static void ck_adda(checksum_t* c, int* arr, int size)
{
 int i;

 for(i = 0; i<size; i++)
  ck_add(c, arr[i]);
}

inline static unsigned char ck_out(checksum_t* c)
{
 return (unsigned char)((*c >> 24) + (*c >> 16) + (*c >> 8) + *c);
}
# 41 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c" 2




void
pin_down(short *pa, short *pb, short *pc, short *pd)
{
  int i ;

  for (i=0 ; i < 16 ; i++)
    {
      *pa++ = 2 ;
      *pa++ = 1 ;
      *pb++ = 2 ;
      *pb++ = 5 ;
      *pc++ = 3 ;
      *pc++ = 4 ;
      *pd++ = 0 ;
      *pd++ = 0 ;
    }
}


short
main()
{
  static short A[2*16], B[2*16], C[2*16], D[2*16] ;

  short *p_a = &A[0], *p_b = &B[0] ;
  short *p_c = &C[0], *p_d = &D[0] ;
  short i ;
  checksum_t sum;






  pin_down(&A[0], &B[0], &C[0], &D[0]) ;
# 93 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c"
  ;
# 112 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_complex_updates.c"
   for (i = 0 ; i < 16 ; i++, p_a++)
     {
             *p_d = *p_c++ + *p_a++ * *p_b++ ;
      *p_d++ -= *p_a * *p_b-- ;
             *p_d = *p_c++ + *p_a-- * *p_b++ ;
             *p_d++ += *p_a++ * *p_b++ ;
     }


  ;


  ck_init(&sum);
  ck_adda_16(&sum, D, 2*16);


  return ck_out(&sum);
}
