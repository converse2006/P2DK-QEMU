# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
# 27 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
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
# 28 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c" 2
static void armVCM4P10_PredictIntraDCUp4x4(
     const unsigned char *pSrcLeft,
     const unsigned char *pSrcAbove,
     unsigned char *pDst,
     int leftStep,
     int dstStep,
     int OMX_VC_LEFT,
     int OMX_VC_UPPER
)
{
    int x, y, Sum=0, Count = 0;
# 49 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
    if (OMX_VC_UPPER)
    {





        for (x=0; x<4; x++)
        {
            Sum += pSrcAbove[x];
        }

        Count++;
    }
    else if (OMX_VC_LEFT)
    {





        for (y=0; y<4; y++)
        {
            Sum += pSrcLeft[y*leftStep];
        }

        Count++;
    }
    if (Count==0)
    {
        Sum = 128;
    }
    else
  {

        Sum = (Sum + 2) >> 2;
    }





    for (y=0; y<4; y++)
    {



        for (x=0; x<4; x++)
        {
            pDst[y*dstStep+x] = Sum;
        }

    }
}
# 122 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
static void armVCM4P10_PredictIntraDCLeft4x4(
     const unsigned char *pSrcLeft,
     const unsigned char *pSrcAbove,
     unsigned char *pDst,
     int leftStep,
     int dstStep,
     int OMX_VC_LEFT,
     int OMX_VC_UPPER
)
{
    int x, y, Sum=0, Count = 0;
# 142 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
    if (OMX_VC_LEFT)
    {





        for (y=0; y<4; y++)
        {
            Sum += pSrcLeft[y*leftStep];
        }

        Count++;
    }
    else if (OMX_VC_UPPER)
    {





        for (x=0; x<4; x++)
        {
            Sum += pSrcAbove[x];
        }

        Count++;
    }
    if (Count==0)
    {
        Sum = 128;
    }
    else
    {
        Sum = (Sum + 2) >> 2;
    }




    for (y=0; y<4; y++)
    {



        for (x=0; x<4; x++)
        {
            pDst[y*dstStep+x] = Sum;
        }

    }
}
# 215 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
void omxVCM4P10_PredictIntraChroma8x8(const unsigned char *, const unsigned char *, const unsigned char *, unsigned char *, int ,int, int, int ,int);

const unsigned char pSrcLeft[8] = {0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8};
const unsigned char pSrcAbove[8] = {0x18, 0x2, 0x4, 0x4, 0x6, 0x6, 0x8, 0x8};
const unsigned char pSrcAboveLeft[1] = {0x2};
int leftStep = 1;
int dstStep = 8;
int predMode = 0;
int OMX_VC_LEFT = 0;
int OMX_VC_UPPER = 1;

unsigned char pDst[64];


int main()
{
 checksum_t sum ;
 omxVCM4P10_PredictIntraChroma8x8(pSrcLeft, pSrcAbove, pSrcAboveLeft, pDst, leftStep, dstStep, predMode, OMX_VC_LEFT, OMX_VC_UPPER);

 ck_init(&sum) ;
 ck_adda_8(&sum, pDst, 64) ;


 return ck_out(&sum);
}
void omxVCM4P10_PredictIntraChroma8x8(
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
    int y, x, Sum ;
    int H, V, a, b, c;
    switch (predMode)
    {
    case 0:
        armVCM4P10_PredictIntraDC4x4( pSrcLeft, pSrcAbove, pDst, leftStep, dstStep, OMX_VC_LEFT, OMX_VC_UPPER);
        armVCM4P10_PredictIntraDCUp4x4( pSrcLeft, pSrcAbove+4, pDst+4, leftStep, dstStep, OMX_VC_LEFT, OMX_VC_UPPER);
        armVCM4P10_PredictIntraDCLeft4x4( pSrcLeft+4*leftStep, pSrcAbove, pDst+4*dstStep, leftStep, dstStep, OMX_VC_LEFT, OMX_VC_UPPER);
        armVCM4P10_PredictIntraDC4x4( pSrcLeft+4*leftStep, pSrcAbove+4, pDst+4+4*dstStep, leftStep, dstStep, OMX_VC_LEFT, OMX_VC_UPPER);
        break;

    case 1:
        for (y=0; y<8; y++)
        {
            for (x=0; x<8; x++)
            {
                pDst[y*dstStep+x] = pSrcLeft[y*leftStep];
            }
        }
        break;

    case 2:
        for (y=0; y<8; y++)
        {
            for (x=0; x<8; x++)
            {
                pDst[y*dstStep+x] = pSrcAbove[x];
            }
        }
        break;

    case 3:
        H = 4*(pSrcAbove[7] - pSrcAboveLeft[0]);
        for (x=2; x>=0; x--)
        {
            H += (x+1)*(pSrcAbove[4+x] - pSrcAbove[2-x]);
        }
        V = 4*(pSrcLeft[7*leftStep] - pSrcAboveLeft[0]);
        for (y=2; y>=0; y--)
        {
            V += (y+1)*(pSrcLeft[(4+y)*leftStep] - pSrcLeft[(2-y)*leftStep]);
        }
        a = 16*(pSrcAbove[7] + pSrcLeft[7*leftStep]);
        b = (17*H+16)>>5;
        c = (17*V+16)>>5;
        for (y=0; y<8; y++)
        {
            for (x=0; x<8; x++)
            {
                Sum = (a + b*(x-3) + c*(y-3) + 16)>>5;
                pDst[y*dstStep+x] = Clip(0,255,Sum);

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
 if (Sum > b)
  return b;
 else
  return Sum;
}

void armVCM4P10_PredictIntraDC4x4(
     const unsigned char *pSrcLeft,
     const unsigned char *pSrcAbove,
     unsigned char *pDst,
     int leftStep,
     int dstStep,
     int OMX_VC_LEFT,
     int OMX_VC_UPPER
)
{
    int x, y, Sum = 0, Count = 0;
# 344 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode0.c"
    if (OMX_VC_LEFT)
    {





        for (y=0; y<4; y++)
        {
            Sum += pSrcLeft[y*leftStep];
        }

        Count++;
    }
    if (OMX_VC_UPPER)
    {





        for (x=0; x<4; x++)
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
        Sum = (Sum + 2) >> 2;
    }
    else
    {
        Sum = (Sum + 4) >> 3;
    }




    for (y=0; y<4; y++)
    {



        for (x=0; x<4; x++)
        {
            pDst[y*dstStep+x] = Sum;
        }

    }
}
