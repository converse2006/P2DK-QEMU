# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c"
# 21 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c"
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
# 22 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpe32/drow.h" 1
# 23 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c" 2
# 1 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/inc/hal.h" 1



# 1 "/home/converse/virtual_platform1/src/kernel/linux-2.6-pac/include/linux/pacdsp_ctrlregs.h" 1
# 5 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/inc/hal.h" 2


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
# 24 "/home/converse/virtual_platform1/src/p2sdk/lib/libpp/libpp.c" 2




struct __attribute__ ((weak)) hw_info hw_info;



struct hw_info* pp_get_hw_info(void)
{
    return &hw_info;
}

void *pp_memcpy(void *dest, const void *src, int n)
{
    int i;
    uint8_t *d = (uint8_t*)dest, *s = (uint8_t*)src;
    for(i = 0; i < n; i++) {
        d[i] = s[i];
    }
    return dest;
}

void *pp_strcpy(char *dest, const char *src)
{
    int i = 0;
    uint8_t *d = (uint8_t*)dest, *s = (uint8_t*)src;
    while(s[i] != '\0') {
        d[i] = s[i];
        i+=1;
    }
    return dest;
}

void inline putc(const char c)
{
    const uint32_t u4 = (0x50030000);
    uint32_t lsr;

    do {
        lsr = ({ uint32_t __v = *((volatile uint32_t*)(u4 + 0x14)); __v; });
    } while((lsr & 0x20) == 0);
    asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(c),"R"(u4));;
    if(c == '\n') {
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('\r'),"R"(u4));;
    }
}

void puts(const char * const str)
{
    const uint32_t u4 = (0x50030000);
    const char *c = str;

    if(str == (char*)0 || str == (char*)(~0)) {
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('('),"R"(u4));;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('n'),"R"(u4));;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('u'),"R"(u4));;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('l'),"R"(u4));;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"('l'),"R"(u4));;
        asm( "{\nsw %0, %1, 0;\n nop;\n nop;\n nop;\n nop;\n}\n" "{\n nop;\n nop;\n nop;\n nop;\n nop;\n}\n" ::"R"(')'),"R"(u4));;
    }
    for(c = str; *c != '\0'; c++) {
        putc(*c);
    }
}

void puth(const uint32_t hex)
{
    unsigned int i = 0;
    unsigned int mask = 0xffffffff;
    unsigned int tmp;

    i = 28;
    while(mask != 0) {
        tmp = ((hex & mask) >> i);
        if(tmp >=0 && tmp <= 9) {
            putc('0' + tmp);
        } else if ( tmp >=10 && tmp <= 16){
            putc('a' + tmp - 10);
        } else {
            putc('X');
        }
        i -= 4;
        mask >>= 4;
    }
}

void putb(const uint8_t byte)
{
    unsigned int i = 0;
    unsigned int mask = 0xff;
    unsigned int tmp;

    i = 4;
    while(mask != 0) {
        tmp = ((byte & mask) >> i);
        if(tmp >=0 && tmp <= 9) {
            putc('0' + tmp);
        } else if ( tmp >=10 && tmp <= 16){
            putc('a' + tmp - 10);
        } else {
            putc('X');
        }
        i -= 4;
        mask >>= 4;
    }
}

void putm(const char *src, const uint32_t sz)
{
    int i;
    for(i = 0; i < sz; i++) {
        putb(*((uint8_t*)(src+i)));
        putc(' ');
    }
}
