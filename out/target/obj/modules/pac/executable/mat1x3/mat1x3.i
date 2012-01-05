# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/mat1x3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/mat1x3.c"
# 38 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/mat1x3.c"
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
# 39 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/mat1x3.c" 2



short
main()
{

  static short h[9]={1,2,3,1,2,3,3,2,1} ;
  static short x[3]={1,1,1} ;
  static short y[3]={0,0,0} ;

  short *p_x = &x[0] ;
  short *p_h = &h[0] ;
  short *p_y = &y[0] ;

  short f,i ;
  checksum_t sum;





  ;
# 97 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/mat1x3.c"
   for (i = 0 ; i < 3; i++)
       {
        p_x = &x[0] ;

 for (f = 0 ; f < 3; f++)
             *p_y += *p_h++ * *p_x++ ;

         p_y++ ;
 }



  ;
  ck_init(&sum);
  ck_adda_16(&sum, y, 3);



  return ck_out(&sum);
}
