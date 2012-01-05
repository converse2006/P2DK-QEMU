# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/pac.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/pac.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/pac.c" 2

# 1 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h" 1
# 4 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/pac.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/bitcount/bitops.h" 1
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
# 5 "/home/converse/virtual_platform1/testsuit/hybrid/bitcount/pac.c" 2



int __attribute__((section(".ldm"), aligned(4))) (* pBitCntFunc[7])(long) = {
    bit_count,
    bitcount,
    ntbl_bitcnt,
    ntbl_bitcount,

    BW_btbl_bitcount,
    AR_btbl_bitcount,
    bit_shifter
};

char __attribute__((section(".ldm"), aligned(4))) *text[7] = {
    "Optimized 1 bit/loop counter",
    "Ratko's mystery algorithm",
    "Recursive bit count by nybbles",
    "Non-recursive bit count by nybbles",

    "Non-recursive bit count by bytes (BW)",
    "Non-recursive bit count by bytes (AR)",
    "Shift and count bits"
};

int
main(int argc, char *argv[])
{
    struct mbox_msg msg;
    uint32_t cnt = 0;
    uint32_t i, j, n, seed;
    uint32_t ct, cmin, cmax, cminix, cmaxix;

    ;

    pp_wait_mbox(&msg);
    cnt = msg.data;

    ;
    ;
    ;

    ;

    cmin = 0;
    cmax = 0;
    for (i = 0; i < 7; i++) {



        for (j = n = 0, seed = 33664888; j < cnt; j++, seed += 13)
            n += pBitCntFunc[i](seed);



        if(cmin == cmax && cmin == 0) {
            cmin = ct;
            cminix = i;
            cmax = ct;
            cmaxix = i;
        }
        if (ct < cmin) {
            cmin = ct;
            cminix = i;
        }
        if (ct > cmax) {
            cmax = ct;
            cmaxix = i;
        }
        ;
        ;
        ;
        ;
        ;
        ;
    }
    ;
    ;
    ;
    ;
    ;
    puts("done\n");

    return 0;
}
