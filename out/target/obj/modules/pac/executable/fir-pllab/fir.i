# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/fir.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/fir.c"
# 30 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/fir.c"
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
# 31 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/fir.c" 2




void
pin_down(short * px, short * ph, short y)
{
  short i;

  for (i = 1; i <= 16; i++)
    {
      *px++ = i;
      *ph++ = i;
    }

}

short
main()
{
  static short x[16];
  static short h[16];

  static short x0 = 100;

  short i ;
  short *px, *px2 ;
  short *ph ;
  short y;
  short p;
  checksum_t sum;






  pin_down(x, h, y);

  ph = &h[16 -1] ;
  px = &x[16 -1] ;
  px2 = &x[16 -2] ;

  ;

  y = 0;
# 126 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/fir.c"
   for (i = 0; i < 16 - 1; i++)
 {
  y += *ph-- * *px ;
  *px-- = *px2-- ;
 }
 y += *ph * *px ;
 *px = x0 ;


  ;


  ck_init(&sum);
  ck_add_16(&sum, y);
  ck_adda_16(&sum, x, 16);


  return ck_out(&sum);
}
