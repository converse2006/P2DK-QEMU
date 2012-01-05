# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/dot_product.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/dot_product.c"
# 47 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/dot_product.c"
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
# 48 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/dot_product.c" 2



void pin_down(short *Z)
{
  *Z = 0 ;
}

short main()
{
  static short A[2] = {2,1} ;
  static short B[2] = {2,5} ;
  static short Z = 0 ;

  short *p_a = &A[0] ;
  short *p_b = &B[0] ;
  short *p_z = &Z ;






  short f ;
  checksum_t sum;


   pin_down(&Z) ;




  ;
# 94 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/dot_product.c"
   for (f=0;f<2;f++)
     *p_z += *p_a++ * *p_b++ ;




  ;


  ck_init(&sum);
  ck_add_16(&sum, Z);



  return ck_out(&sum);
}
