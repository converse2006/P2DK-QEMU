# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
# 74 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
short
pin_down(short A[], short B[], short C[])
{
  int i ;

  for (i = 0 ; i < 10*10; i++)
      A[i] = 1 ;

  for (i = 0 ; i < 10*10 ; i++)
      B[i] = 1 ;

  for (i = 0 ; i < 10*10 ; i++)
      C[i] = 0 ;

  return((short)0) ;

}

short
main()
{
  static short A[10*10] ;
  static short B[10*10] ;
  static short C[10*10] ;

  short *p_a = &A[0] ;
  short *p_b = &B[0] ;
  short *p_c = &C[0] ;

  short f,i,k ;
  int tmp;
# 117 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
  pin_down(&A[0], &B[0], &C[0]) ;
# 149 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
  for (k = 0 ; k < 10 ; k++)
  {
   p_a = &A[0] ;

 for (i = 0 ; i < 10; i++)
 {
  p_b = &B[k*10] ;
  *p_c = 0 ;

  for (f = 0 ; f < 10; f++)
   *p_c += *p_a++ * *p_b++ ;

  *p_c++ ;
 }
  }
# 173 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/matrix1.c"
  return C[0] ;
}
