# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/lms.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/lms.c"
# 88 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/lms.c"
void
pin_down(short *d, short *x, short *delta, short *p_H, short *p_X)
{
  int f ;

  *d = 7 ;
  *x = 8 ;
  *delta = 1 ;

  for (f = 0 ; f < 16 ; f++)
    {
      *p_H++ = 1 ;
      *p_X++ = 1 ;
    }

}

short
main()
{
  static short H[16] ;
  static short X[16] ;

  short delta ;
  short d ;
  short x ;
  short y ;
  short error ;

  short f ;

  short *p_H, *p_X, *p_X2 ;







  pin_down(&d,&x,&delta,&H[0],&X[0]) ;

  p_H = &H[16 -1] ;
  p_X = &X[16 -1] ;
  p_X2= &X[16 -2] ;



  y = 0 ;
# 166 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/lms.c"
  for (f = 1 ; f < 16 ; f++)
   y += *p_H-- * (*p_X-- = *p_X2--) ;



  y += *p_H * (*p_X = x) ;






  error = (d - y) * delta ;
  for (f = 0; f < 16 ; f++)
   *p_H++ += error * *p_X++ ;
# 194 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/lms.c"
  return y ;
}
