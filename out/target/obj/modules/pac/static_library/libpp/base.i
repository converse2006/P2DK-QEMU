# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c"
# 21 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c"
# 1 "/home/converse/virtual_platform1/src/kernel/linux-2.6-pac/include/linux/pacdsp_ctrlregs.h" 1
# 22 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.h" 1
# 24 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.h"
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
# 76 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.h"
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
# 23 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpe32/drow.h" 1
# 24 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/inc/hal.h" 1






# 1 "/home/converse/virtual_platform1/src/kernel/linux-2.6-pac/arch/arm/include/asm/hardware/vic.h" 1
# 8 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/inc/hal.h" 2
# 52 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/inc/hal.h"
void enable_int(void);
void disable_int(void);


int pp_enable_irq(const int nr);
int pp_disable_irq(const int nr);
int pp_register_isr(const uint8_t nr, void (*fn)(void));

void pp_mbox_init(void);
void asm_wait_int(void);
# 25 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c" 2





extern const struct hw_info hw_info;
struct __attribute__((section(".ldm"), aligned(4))) hw_info hwi;
extern int main(int argc, char **argv);
extern void irq_isr(void);
static void __attribute__((section(".ldm"), aligned(4))) (*isr_fns[32])(void) = {(~0)};

int drow_main(int argc, char **argv)
{
    disable_int();
    hwi = hw_info;
    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(irq_isr),"R"(hwi.desc.pac_base_addr + 0x00028));

                                      ;

    return main(argc, argv);
}

static void mailbox_in_isr(void);
void dbg_int(void)
{
    uint32_t raw_status;

    raw_status = ({ uint32_t __v = *((volatile uint32_t*)(hwi.desc.pac_vic_addr + 0x08)); __v; })
                                               ;
    do { puts("# " "raw_status" ": "); puth(raw_status); putc('\n'); } while(0);
    return;
}

static struct mbox_msg __attribute__((section(".ldm"), aligned(4))) _msg = {0};
# 76 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/base.c"
void pp_mbox_recv_w(struct mbox_msg* msg)
{
    volatile uint32_t pac_mbox_flag;
    const uint32_t mbox_in_base =
        hwi.desc.mbox_addr +
        hwi.desc.pac_mbox_off;

    ;
    do {
        pac_mbox_flag = ({ uint32_t __v = *((volatile uint32_t*)(mbox_in_base + 0x20)); __v; })
                                         ;
        ;
        if((pac_mbox_flag) != 0) {
            break;
        }
    } while(1);
    mailbox_in_isr();
    msg->data = _msg.data;
    msg->cmd = _msg.cmd;



    return;
}


void pp_mbox_send_w(struct mbox_msg* msg)
{
    volatile uint32_t mpu_mbox_flag;
    const uint32_t mbox_out_base =
        hwi.desc.mbox_addr +
        hwi.desc.mpu_mbox_off;

    ;
    do {
        mpu_mbox_flag = ({ uint32_t __v = *((volatile uint32_t*)(mbox_out_base + 0x20)); __v; })
                                          ;
        ;
        if((mpu_mbox_flag) == 0) {
            break;
        }
    } while(1);

    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(msg->data),"R"(hwi.desc.mbox_addr + hwi.desc.mpu_mbox_off + 0x10));;
    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(msg->cmd),"R"(hwi.desc.mbox_addr + hwi.desc.mpu_mbox_off + 0x0));;
    return;
}

int pp_mbox_send_c(struct mbox_msg* msg)
{
    volatile uint32_t mpu_mbox_flag;
    const uint32_t mbox_out_base =
        hwi.desc.mbox_addr +
        hwi.desc.mpu_mbox_off;

    ;
    mpu_mbox_flag = ({ uint32_t __v = *((volatile uint32_t*)(mbox_out_base + 0x20)); __v; })
                                      ;
    ;
    if((mpu_mbox_flag) == 0) {
        return -1;
    }

    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(msg->data),"R"(hwi.desc.mbox_addr + hwi.desc.mpu_mbox_off + 0x10));;
    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(msg->cmd),"R"(hwi.desc.mbox_addr + hwi.desc.mpu_mbox_off + 0x0));;
    return 0;
}

static void mailbox_in_isr(void)
{
    const uint32_t mbox_in_base =
        hwi.desc.mbox_addr +
        hwi.desc.pac_mbox_off;

    _msg.data = ({ uint32_t __v = *((volatile uint32_t*)(mbox_in_base + 0x10)); __v; });
    _msg.cmd = ({ uint32_t __v = *((volatile uint32_t*)(mbox_in_base + 0x0)); __v; });


}

void pp_mbox_init(void)
{

    pp_register_isr(0, mailbox_in_isr);
    pp_enable_irq(0);
}

int pp_enable_irq(const int nr)
{
    uint32_t enable;
    uint32_t select;
    uint32_t mask;

    if(nr > 32)
        return -1;
    mask = 1 << nr;
    select = ({ uint32_t __v = *((volatile uint32_t*)(hwi.desc.pac_vic_addr + 0x0c)); __v; })
                                               ;
    if((select & mask) != 0) {
        select &= (~mask);
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(select),"R"(hwi.desc.pac_vic_addr + 0x0c));
                                                           ;
    }
    enable = ({ uint32_t __v = *((volatile uint32_t*)(hwi.desc.pac_vic_addr + 0x10)); __v; });
    if((enable & mask) == 0) {
        enable |= mask;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(enable),"R"(hwi.desc.pac_vic_addr + 0x10));
                                                           ;
    }
}

int pp_disable_irq(const int nr)
{
    uint32_t enable;
    uint32_t mask;

    if(nr > 32)
        return -1;
    mask = 1 << nr;
    enable = ({ uint32_t __v = *((volatile uint32_t*)(hwi.desc.pac_vic_addr + 0x10)); __v; });
    if((enable & mask) != 0) {
        enable &= (~mask);
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(enable),"R"(hwi.desc.pac_vic_addr + 0x10));
                                                           ;
    }
}

int pp_register_isr(const uint8_t nr, void (*fn)(void))
{
    if(nr > 32)
        return -1;
    isr_fns[nr] = fn;
}

void irq_c_handler(void)
{
    uint32_t irq_status;
    uint8_t nr;

    ;
    irq_status = ({ uint32_t __v = *((volatile uint32_t*)(hwi.desc.pac_vic_addr + 0x00)); __v; })
                                               ;

    if(irq_status == 0)
        return;

    nr = 0;
    while(irq_status != 0) {
        nr+=1;
        irq_status >>= 1;
    }

    nr -= 1;

    if(nr > 32)
        return;

    if(isr_fns[nr] == (~0))
        return;

    isr_fns[nr]();

    return;
}
