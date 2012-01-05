# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
# 28 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
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
# 29 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c" 2



void
pin_down(short *ar, short *ai, short *br, short *bi, short *cr, short *ci)
{
  *ar++ = 7 ;
  *ar = 3 ;
  *ai++ = 1 ;
  *ai = 6 ;

  *br++ = 7 ;
  *br = 3 ;
  *bi++ = 5 ;
  *bi = 1 ;
}

int
main()
{
  static short ar[2], ai[2] ;
  static short br[2], bi[2] ;
  static short cr[2], ci[2] ;
  checksum_t sum;
# 65 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
   pin_down(&ar, &ai, &br, &bi, &cr, &ci) ;
# 74 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
  ;


   cr[0] = ar[0]*br[0] - ai[0]*bi[0] ;
  cr[1] = ar[1]*br[1] + ai[1]*bi[1] ;
   ci[0] = ar[0]*bi[0] + ai[0]*br[0] ;
   ci[1] = ar[1]*bi[1] - ai[1]*br[1] ;
# 99 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply_d.c"
  ;


  ck_init(&sum);
  ck_add_16(&sum, cr[0]);
  ck_add_16(&sum, cr[1]);
  ck_add_16(&sum, ci[0]);
  ck_add_16(&sum, ci[1]);


  return ck_out(&sum);

}
