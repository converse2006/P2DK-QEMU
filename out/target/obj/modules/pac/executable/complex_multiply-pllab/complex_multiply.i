# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply.c"
# 27 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply.c"
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
# 28 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply.c" 2



void
pin_down(short *ar, short *ai, short *br, short *bi, short *cr, short *ci)
{
  *ar = 2 ;
  *ai = 1 ;
  *br = 2 ;
  *bi = 5 ;
}

int
main()
{
  static short ar, ai ;
  static short br, bi ;
  static short cr, ci ;
  checksum_t sum;




   pin_down(&ar, &ai, &br, &bi, &cr, &ci) ;
  ;


  cr = ar*br - ai*bi ;
  ci = ar*bi + ai*br ;
# 71 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/complex_multiply.c"
  ;


  ck_init(&sum);
  ck_add_16(&sum, cr);
  ck_add_16(&sum, ci);

  return ck_out(&sum);

}
