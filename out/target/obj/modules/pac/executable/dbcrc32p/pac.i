# 1 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c"


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
# 4 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/mem.h" 1
# 5 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.h" 1






extern uint8_t inbuffer0[30720];
extern uint8_t inbuffer1[30720];
extern uint8_t outbuffer0[16];
extern uint8_t outbuffer1[16];




int task_start(uint32_t d);




int task_process(uint8_t *in, uint8_t *out, uint16_t nr, uint16_t sz);




int task_end(uint32_t *d);
# 6 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c" 2

uint8_t __attribute__((section(".ldm_shared"), aligned(4))) inbuffer0[30720];
uint8_t __attribute__((section(".ldm_shared"), aligned(4))) inbuffer1[30720];
uint8_t __attribute__((section(".ldm_shared"), aligned(4))) outbuffer0[16];
uint8_t __attribute__((section(".ldm_shared"), aligned(4))) outbuffer1[16];
# 38 "/home/converse/virtual_platform1/testsuit/hybrid/dbcrc32/pac.c"
int main(int argc, char *argv[])
{
    struct mbox_msg msg;

    ;
    do {
        ;
        do { ; pp_wait_mbox(&msg); ; ; ; ; ; } while(0);;

        if(msg.cmd == 0x00000007) {
            ;
            return 0;
        } else if(msg.cmd != 0x00000001) {
            do { puts("Error: "); puts("Protocal error"); puts(", exist\n"); return -1; } while(0);
        } else {
            ;
            if(task_start(msg.data) < 0)
                do { puts("Error: "); puts("start works fail"); puts(", exist\n"); return -1; } while(0);
        }

        do {
            do { ; pp_wait_mbox(&msg); ; ; ; ; ; } while(0);;

            if(msg.cmd == 0x00000006) {
                task_end(&msg.data);
                do { ; ; ; ; pp_send_mbox(&msg); ; } while(0);;
                break;
            } else if(msg.cmd == 0x00000002) {
                if(task_process(
                    inbuffer0, outbuffer0,
                    ((msg.data & 0xffff0000) >> 16), (msg.data & 0x0000ffff)) < 0) {
                    do { puts("Error: "); puts("task process 0 fail"); puts(", exist\n"); return -1; } while(0);
                }
                msg.cmd = 0x00000004;
                do { ; ; ; ; pp_send_mbox(&msg); ; } while(0);;
            } else if(msg.cmd == 0x00000003) {
                if(task_process(
                    inbuffer1, outbuffer1,
                    ((msg.data & 0xffff0000) >> 16), (msg.data & 0x0000ffff)) < 0) {
                    do { puts("Error: "); puts("task process 1 fail"); puts(", exist\n"); return -1; } while(0);
                }
                msg.cmd = 0x00000005;
                do { ; ; ; ; pp_send_mbox(&msg); ; } while(0);;
            } else {
                do { puts("Error: "); puts("unknow package, exit"); puts(", exist\n"); return -1; } while(0);
                break;
            }
        } while(1);
    } while (1);

    return 0;
}
