# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
# 33 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
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
# 34 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c" 2




void
pin_down(short *pa, short *pb, short *pc, short *pd)
{
  int i ;

  for (i=0 ; i < 16 ; i++)
    {
      *pa++ = 10 ;
      *pb++ = 2 ;
      *pc++ = 10 ;
      *pd++ = 0 ;
    }
}

short main()
{
  static short A[16], B[16], C[16], D[16] ;

  short *p_a = &A[0], *p_b = &B[0] ;
  short *p_c = &C[0], *p_d = &D[0] ;
  short i ;
  checksum_t sum;
# 70 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
 for (i=0 ; i < 16 ; i++)
     {
           A[i] = 10 ;
          B[i] = 2 ;
         C[i] = 10 ;
               D[i] = 0 ;
            }
# 87 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
  ;
# 98 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/n_real_updates.c"
  for (i = 0 ; i < 16 ; i++)
      *p_d++ = *p_c++ + *p_a++ * *p_b++ ;


  ;



  ck_init(&sum);
  ck_adda_16(&sum, D, 16);

  return ck_out(&sum);
}