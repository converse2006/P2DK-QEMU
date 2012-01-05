# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr/icache.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr/icache.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/standalone/ccr/icache.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h" 1
# 37 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h"
extern uint32_t ccr_val[4];
# 3 "/home/converse/virtual_platform1/testsuit/standalone/ccr/icache.c" 2

extern uint32_t ccr_val[4];
extern uint8_t *icache_ccr_start;
extern uint8_t *icache_ccr_stop_clear;
extern uint8_t *nop_packages_start;
extern uint8_t *nop_packages_end;



int main()
{
    volatile unsigned int *addr = (0xb00afda0);
    volatile int *ptr=0xb00a1000;
    register int i;
    puts("\n\nhello world!\n");
# 27 "/home/converse/virtual_platform1/testsuit/standalone/ccr/icache.c"
    puts("start ccr\n");
    asm("icache_ccr_start:\n");
    do { asm("{\nmoviu sr7," "0x01010004" ";\nnop;\nnop;\nnop;\nnop;\n}\n");; } while(0);;

    asm("nop_packages_start:");
    asm("{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n"
    "{\nNOP;\nNOP;\nNOP;\nNOP;\nNOP;\n}\n");
    asm("nop_packages_end:");

    asm("icache_ccr_stop_clear:\n");
    do { asm("{\nmoviu sr7," "0x03010004" ";\nnop;\nnop;\nnop;\nnop;\n}\n");; } while(0);;
    do { asm("{\nmoviu sr13, 3;\nnop;\nnop;\nnop;\nnop;\n}\n");; asm( "CCR_TEST." "2" "." "i" "." "189" ":\n" "{\ntest p1,p2,2,2;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\n(p2)B CCR_TEST." "2" "." "i" "." "189" ";\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");; i = ccr_val[1]; } while(0);
    puts("get ccr complete\ntotal cycles cost are: 0x");
    puth(i);
    puts(" cycles\n");
    puts("from 0x");
    puth(&icache_ccr_start);
    puts(" to 0x");
    puth(&icache_ccr_stop_clear);
    puts("\n");
    puts("total ");
    puth(((uint32_t)&icache_ccr_stop_clear) - ((uint32_t)&icache_ccr_start));
    puts(" byte(s)\n");
    i = ((uint32_t)&nop_packages_end) -
        ((uint32_t)&nop_packages_start);
    i = i >> 1;
    puts("total 0x");
    puth(i);
    puts(" nop package(s), 0x");
    puth(i + 2);
    puts(" instr. package(s), \n");


    return 0;
}
