# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h" 1
# 37 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h"
extern uint32_t ccr_val[4];
# 3 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c" 2

extern uint32_t ccr_val[4];
extern uint8_t *ccr_start_addr;
extern uint8_t *ccr_stop_clear_addr;

int main()
{
    register int i;
    register int iteration=0;

    int stride_length=0;

    int totalMemSize=0;

    puts("\n\nMemory Read/Write TEST! ");

    puts("1024/32K ");
    iteration = 10000;





    puts("AXI_DDR2 ");
# 40 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
    puts("READ\n");
# 52 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
    stride_length =4;
# 75 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
    asm(
        "internal_stack_push:\n"
        "{\nsw r0,  r8, (-4)+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nsw r1,  r8, (-4)+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nsw r2,  r8, (-4)+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
    );

    asm(
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
    );

    asm("ccr_start_addr:\n");
    do { asm("{\nmoviu sr7," "0x01010004" ";\nnop;\nnop;\nnop;\nnop;\n}\n");; } while(0);;

    asm("operation_package_start:\n");



    asm("{\nmoviu r0, 10000;\nnop;\nnop;\nnop;\nnop;\n}\n");






    asm("{\nmoviu r1, 0x3f000000;\nnop;\nnop;\nnop;\nnop;\n}\n");
# 144 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
    asm("operation_loop_start:\n");



        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
        asm("{\nlb r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
            "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
# 579 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw8_stride_4/mrw.c"
    asm("{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nlbcb r0, operation_loop_start;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
    );
    asm("operation_package_end:\n");

    asm("ccr_stop_clear_addr:\n");
    do { asm("{\nmoviu sr7," "0x03010004" ";\nnop;\nnop;\nnop;\nnop;\n}\n");; } while(0);;

    asm(
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
    );

    asm(
        "internal_stack_pop:\n"
        "{\naddi  r0, r0, 4;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nlw r2,  r8, 4+ ;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nlw r1,  r8, 4+ ;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nlw r0,  r8, 4+ ;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
    );

    do { asm("{\nmoviu sr13, 3;\nnop;\nnop;\nnop;\nnop;\n}\n");; asm( "CCR_TEST." "2" "." "i" "." "627" ":\n" "{\ntest p1,p2,2,2;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\n(p2)B CCR_TEST." "2" "." "i" "." "627" ";\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n" "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");; i = ccr_val[1]; } while(0);
    puts("get ccr complete\ntotal cycles cost are: 0x");
    puth(i);
    puts(" cycles\n");
    puts("from 0x");
    puth(&ccr_start_addr);
    puts(" to 0x");
    puth(&ccr_stop_clear_addr);
    puts("\n");
    puts("total ");
    puth(((uint32_t)&ccr_stop_clear_addr) - ((uint32_t)&ccr_start_addr));
    puts(" byte(s)\n");

    puts("\nThe number of memory accesses: 0x");
    puth(iteration);
    puts("\n");

    puts("The stride length: 0x");
    puth(stride_length);
    puts("\n");

    totalMemSize = iteration * stride_length;
    puts("The range of memory being accessed: 0x");
    puth(totalMemSize);
    puts("\n");


    return 0;
}
