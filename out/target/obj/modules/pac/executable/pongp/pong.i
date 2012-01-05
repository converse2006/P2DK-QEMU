# 1 "/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pingpong.h" 1
# 3 "/home/converse/virtual_platform1/testsuit/hybrid/pingpong/pong.c" 2

char __attribute__((section(".ldm_shared"), aligned(4))) inbuffer[2048];
char __attribute__((section(".ldm_shared"), aligned(4))) outbuffer[4];

void process_crc32(int val)
{
    ;
    ;
    ;
    return;
}

int
main(int argc, char *argv[])
{
    struct mbox_msg msg;
    uint32_t cnt = 1;

    ;
    ;
    pp_wait_mbox(&msg);
    if(msg.cmd != 0x00000003) {
        ;
        return 0;
    } else {
        ;
    }

    do {
        ;
        pp_wait_mbox(&msg);
        ;
        ;
        ;

        if(msg.cmd == 0x00000006) {
            if(msg.data != 0)
                process_crc32(msg.data);
            ;
            break;
        } else if(msg.cmd == 0x00000004) {
            process_crc32(msg.data);
        } else {
            ;
            msg.cmd=0x00000006;
            msg.data=0xfb;
            pp_send_mbox(&msg);
            break;
        }
        msg.cmd=0x00000005;
        msg.data -= 1;
        pp_send_mbox(&msg);
        cnt += 1;
    } while (1);

    puth(cnt);
    puts(" ping-pong iterations, bye!\n");

    return 0;
}
