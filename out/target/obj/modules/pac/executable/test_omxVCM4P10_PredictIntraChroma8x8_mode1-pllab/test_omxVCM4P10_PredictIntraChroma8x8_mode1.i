# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
# 25 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
# 1 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h" 1
# 24 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef char int8_t;
typedef short int16_t;
typedef int int32_t;





struct pac_plat_desc {
 uint32_t pac_base_addr;
 uint32_t pac_vic_addr;
 uint32_t mbox_addr;
 uint32_t mpu_trap_irq;

 uint32_t mpu_mbox_irq;
 uint32_t pac_mbox_irq;
 uint32_t mpu_mbox_off;
 uint32_t pac_mbox_off;
};

struct pacdsp_mdesc {
 uint32_t pac_base;
 uint32_t pac_indx;
 uint32_t dsm_base;
 uint32_t dsm_size;
 uint32_t tsm_base;
 uint32_t tsm_size;
 uint32_t ldm_base;
 uint32_t ldm_size;
};

struct hw_info {
    struct pac_plat_desc desc;
    struct pacdsp_mdesc mdesc;
    uint32_t stack_start;
};

struct mbox_msg {
    uint32_t cmd;
    uint32_t data;
};
# 76 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp.h"
void putc(const char c);
void puts(const char * const str);
void puth(const uint32_t hex);
void putb(const uint8_t byte);
void putm(const char *src, const uint32_t sz);







void *pp_memcpy(void *dest, const void *src, int n);
void *pp_strcpy(char *dest, const char *src);

struct hw_info* pp_get_hw_info(void);

void pp_mbox_recv_w(struct mbox_msg* msg);
void pp_mbox_send_w(struct mbox_msg* msg);
int pp_mbox_send_c(struct mbox_msg* msg);


static inline void pp_wait_mbox(struct mbox_msg *msg)
{pp_mbox_recv_w(msg);}

static inline void pp_send_mbox(struct mbox_msg *msg)
{pp_mbox_send_w(msg);}
# 26 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c" 2

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
# 28 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c" 2
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
# 92 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
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
# 157 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
void omxVCM4P10_PredictIntraChroma8x8(const unsigned char *, const unsigned char *, const unsigned char *, unsigned char *, int ,int, int, int ,int);

const unsigned char pSrcLeft[8] = {0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8};
const unsigned char pSrcAbove[8] = {0x18, 0x2, 0x4, 0x4, 0x6, 0x6, 0x8, 0x8};
const unsigned char pSrcAboveLeft[1] = {0x2};
int leftStep = 1;
int dstStep = 8;
int predMode = 1;
int OMX_VC_LEFT = 0;
int OMX_VC_UPPER = 1;

unsigned char pDst[64];


int main()
{
 checksum_t sum ;
 omxVCM4P10_PredictIntraChroma8x8(pSrcLeft, pSrcAbove, pSrcAboveLeft, pDst, leftStep, dstStep, predMode, OMX_VC_LEFT, OMX_VC_UPPER);

 ck_init(&sum) ;
 ck_adda_8(&sum, pDst, 64) ;

 do { puts("# " "ck_out(&sum)" ": "); puth(ck_out(&sum)); putc('\n'); } while(0) ;
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

    int x, y, Sum;
    int H, V, a, b, c;
# 207 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
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
            for (x=0; x<2; x++)
            {
# 231 "/home/converse/virtual_platform1/testsuit/standalone/nthu/H264/test_omxVCM4P10_PredictIntraChroma8x8_mode1.c"
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
