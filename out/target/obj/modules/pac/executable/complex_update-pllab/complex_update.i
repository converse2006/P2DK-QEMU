# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_update.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_update.c"
# 38 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_update.c"
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
# 39 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_update.c" 2



void
pin_down(short *p)
{

  *p++ = 0 ;
  *p = 0 ;

}


short
main()
{
  static short A[2] = { 2,1 } ;
  static short B[2] = { 2,5 } ;
  static short C[2] = { 3,4 } ;
  static short D[2] = { 0,0 } ;

  short *p_a = &A[0] ;
  short *p_b = &B[0] ;
  short *p_c = &C[0] ;
  short *p_d = &D[0] ;
  checksum_t sum;






  pin_down(&D[0]) ;

  ;
# 94 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_update.c"
   *p_d = *p_c++ + *p_a++ * *p_b++ ;
 *p_d++ -= *p_a * *p_b-- ;
 *p_d = *p_c + *p_a-- * *p_b++ ;
 *p_d += *p_a * *p_b ;


  ;


  ck_init(&sum);
  ck_adda_16(&sum, D, 2);


  return ck_out(&sum);
}
