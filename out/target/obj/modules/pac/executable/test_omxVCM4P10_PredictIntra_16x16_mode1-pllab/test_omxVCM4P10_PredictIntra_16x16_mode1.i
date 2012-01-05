# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntra_16x16_mode1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntra_16x16_mode1.c"
# 30 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntra_16x16_mode1.c"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/checksum.h" 1





typedef unsigned int checksum_t;

inline static void ck_add_8(checksum_t* c, unsigned char x)
{
        *c = ((*c * 2) | (*c >> 31)) + x;
}

inline static void ck_adda_8(checksum_t* c, unsigned char* arr, int size)
{
        int i;

  for(i = 0; i<size; i++)
                 ck_add_8(c, arr[i]);
}


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
# 31 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntra_16x16_mode1.c" 2
void omxVCM4P10_PredictIntra_16x16(const unsigned char *, const unsigned char *, const unsigned char *, unsigned char *,
                 int, int, int, int, int);

const unsigned char pSrcAbove[16] = {0x2, 0x2, 0x4, 0x4, 0x6, 0x6, 0x8, 0x8, 0xa, 0xa, 0xc, 0xc, 0xe, 0xe, 0x10, 0x10};
const unsigned char pSrcLeft[16] = {1, 2, 3, 4, 1, 2, 3, 4, 5, 6 ,7 ,8, 5, 6, 7, 8};
const unsigned char pSrcAboveLeft[1] = {2};
int leftStep = 1 ;
int dstStep = 16;
int predMode = 1;
int OMX_VC_LEFT = 1;
int OMX_VC_UPPER = 1;





unsigned char pDst[256];

int main()
{
 checksum_t sum ;
 omxVCM4P10_PredictIntra_16x16(pSrcLeft, pSrcAbove, pSrcAboveLeft, pDst, leftStep, dstStep, predMode, OMX_VC_LEFT, OMX_VC_UPPER);

 ck_init(&sum) ;
 ck_adda_8(&sum, pDst, 256) ;


 return ck_out(&sum);
}


void omxVCM4P10_PredictIntra_16x16(
    const unsigned char *pSrcLeft,
    const unsigned char *pSrcAbove,
    const unsigned char *pSrcAboveLeft,
    unsigned char *pDst,
    int leftStep,
    int dstStep,
    int predMode,
    int OMX_VC_LEFT,
    int OMX_VC_UPPER
    )
{

    int x,y,Sum,Count;
    int H,V,a,b,c;







    switch (predMode)
    {
    case 0:
        for (y=0; y<16; y++)
        {
            for (x=0; x<16; x++)
            {
                pDst[y*dstStep+x] = pSrcAbove[x];
            }
        }
        break;

    case 1:
        for (y=0; y<16; y++)
        {
# 109 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntra_16x16_mode1.c"
            for (x=0; x<16; x++)
            {
                pDst[y*dstStep+x] = pSrcLeft[y*leftStep];
            }

        }
        break;

    case 2:

        Sum = 0;
        Count = 0;
        if (OMX_VC_LEFT)
        {
            for (y=0; y<16; y++)
            {
                Sum += pSrcLeft[y*leftStep];
            }
            Count++;
        }
        if (OMX_VC_UPPER)
        {
            for (x=0; x<16; x++)
            {
                Sum += pSrcAbove[x];
            }
            Count++;
        }
        if (Count==0)
        {
            Sum = 128;
        }
        else if (Count==1)
        {
            Sum = (Sum + 8) >> 4;
        }
        else
        {
            Sum = (Sum + 16) >> 5;
        }
        for (y=0; y<16; y++)
        {
            for (x=0; x<16; x++)
            {
                pDst[y*dstStep+x] = Sum;
            }
        }
        break;

    case 3:
        H = 8*(pSrcAbove[15] - pSrcAboveLeft[0]);
        for (x=6; x>=0; x--)
        {
            H += (x+1)*(pSrcAbove[8+x] - pSrcAbove[6-x]);
        }
        V = 8*(pSrcLeft[15*leftStep] - pSrcAboveLeft[0]);
        for (y=6; y>=0; y--)
        {
            V += (y+1)*(pSrcLeft[(8+y)*leftStep] - pSrcLeft[(6-y)*leftStep]);
        }
        a = 16*(pSrcAbove[15] + pSrcLeft[15*leftStep]);
        b = (5*H+32)>>6;
        c = (5*V+32)>>6;
        for (y=0; y<16; y++)
        {
             for (x=0; x<16; x++)
            {

                Sum = (a + b*(x-7) + c*(y-7) + 16)>>5;
                pDst[y*dstStep+x] = Clip(0, 255, Sum);
            }
        }
        break;
    }
return 0;

}


int Clip(int a, int b, int Sum)
{

 if (Sum < a)
  return a;
 else if (Sum > b)
  return b;
 else
  return Sum;
}
