# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_3.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_3.c"
# 9 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_3.c"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h" 1
# 19 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h"
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
# 20 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h" 2
# 46 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h"
void bitstring(char *str, long byze, int biz, int strwid);





unsigned int bstr_i(char *cptr);





int bit_count(long x);





int bitcount(long i);





int ntbl_bitcount(long int x);
int BW_btbl_bitcount(long int x);
int AR_btbl_bitcount(long int x);





int ntbl_bitcnt(long x);
int btbl_bitcnt(long x);




int bit_shifter(long int x);
# 10 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_3.c" 2





static char __attribute__((section(".ldm"), aligned(4))) bits[256] =
{
      0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4,
      1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
      1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
      1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
      2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
      3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
      3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
      4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8
};
# 42 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitcnt_3.c"
int ntbl_bitcount(long int x)
{
      return
            bits[ (int) (x & 0x0000000FUL) ] +
            bits[ (int)((x & 0x000000F0UL) >> 4) ] +
            bits[ (int)((x & 0x00000F00UL) >> 8) ] +
            bits[ (int)((x & 0x0000F000UL) >> 12)] +
            bits[ (int)((x & 0x000F0000UL) >> 16)] +
            bits[ (int)((x & 0x00F00000UL) >> 20)] +
            bits[ (int)((x & 0x0F000000UL) >> 24)] +
            bits[ (int)((x & 0xF0000000UL) >> 28)];
}







int BW_btbl_bitcount(long int x)
{
      union
      {
            unsigned char ch[4];
            long y;
      } U;

      U.y = x;

      return bits[ U.ch[0] ] + bits[ U.ch[1] ] +
             bits[ U.ch[3] ] + bits[ U.ch[2] ];
}







int AR_btbl_bitcount(long int x)
{
      unsigned char * Ptr = (unsigned char *) &x ;
      int Accu ;

      Accu = bits[ *Ptr++ ];
      Accu += bits[ *Ptr++ ];
      Accu += bits[ *Ptr++ ];
      Accu += bits[ *Ptr ];
      return Accu;
}
