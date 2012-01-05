# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c"
# 54 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c"
short
pin_down(short x)
{
  return ((short) 7) ;
}


short main()
{

  short y, w ;

  static short x = 7, w1= 7 , w2 = 7 ;
  static short b0 = 7, b1 = 7 , b2 = 7 ;
  static short a1 = 7, a2 = 7 ;







  w = x - a1 * w1 ;
  w -= a2 * w2 ;
  y = b0 * w ;
  y += b1 * w1 ;
  y += b2 * w2 ;

  w2 = w1 ;
  w1 = w ;
# 108 "/home/converse/virtual_platform1/testsuit/standalone/nthu/DSPStone/biquad_one_section.c"
  return y ;
}
