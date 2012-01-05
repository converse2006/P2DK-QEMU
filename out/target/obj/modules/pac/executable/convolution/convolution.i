# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
# 30 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
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
# 31 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c" 2




void pin_down(short * px, short * ph)
{
 short i;


 for (i = 0; i < 16; ++i) {
  *px++ = 1;
  *ph++ = 1;
 }
# 53 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
}


short main()
{

 static short x[16];
 static short h[16];

 short y;
 short i;
 short *px = x;
 short *ph = &h[16 - 1];
    checksum_t sum;
# 76 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
  pin_down(&x[0], &h[0]);
# 85 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
 ;

 y = 0;
# 100 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/convolution.c"
 for (i = 0; i < 16; ++i)
         y += *px++ * *ph--;



 ;

 ck_init(&sum);
 ck_add_16(&sum, y);



 return ck_out(&sum);

}
