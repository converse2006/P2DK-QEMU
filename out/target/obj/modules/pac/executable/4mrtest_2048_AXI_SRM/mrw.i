# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c" 2

# 1 "/home/converse/virtual_platform1/src/p2sdk//lib/libpp/libpp_ccr.h" 1
# 4 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c" 2

extern uint32_t ccr_val[4];
extern uint8_t *ccr_start_addr;
extern uint8_t *ccr_stop_clear_addr;

int main()
{
    register int i;
    ;
    ;
    ;

    ;
# 28 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
    ;
# 38 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
    ;
# 49 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
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
    ;

    asm("operation_package_start:\n");



    asm("{\nmoviu r0, 2048;\nnop;\nnop;\nnop;\nnop;\n}\n");
# 111 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
    asm("{\nmoviu r1, 0x21000000;\nnop;\nnop;\nnop;\nnop;\n}\n");
# 121 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
    asm("operation_loop_start:\n");


    asm("{\nsw r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
    asm("{\nsw r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
    asm("{\nsw r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
    asm("{\nsw r2, r1, 4+;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n"
        "{\nnop;\nnop;\nnop;\nnop;\nnop;\n}\n");
# 171 "/home/converse/virtual_platform1/testsuit/standalone/ccr_mrw4/mrw.c"
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
    ;

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

    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    ;
    ;

    ;
    return 0;
}
