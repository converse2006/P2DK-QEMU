# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/pac.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/pac.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/pac.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/matrix.h" 1
# 3 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/pac.c" 2

uint32_t __attribute__((section(".shared"), aligned(4))) ctrl_buffer[2];
uint32_t __attribute__((section(".shared"), aligned(4))) in_buffer[(128*128)];
uint32_t __attribute__((section(".shared"), aligned(4))) out_buffer[(128*128)];
uint32_t *min[(128*128)];
uint32_t *mout[(128*128)];

int main(int argc, char **argv)
{
    struct hw_info *info;
    struct mbox_msg msg;
    uint32_t i, j, k, tmp;
    uint32_t *itr1, *itr2;
    uint32_t nr = 0;

    info = pp_get_hw_info();

    puts("argc = ");
    puth(argc);
    puts("\n");

    for(i = 0; i < argc; i++) {
        puts("arg: ");
        puts(argv[i]);
        putc('\n');
    }

    puts("hello world! at ");
    puth(info->mdesc.pac_base);
    puts("\n");

    pp_wait_mbox(&msg);

    puts("mbox receive!\n");
    puts("\tcmd:");
    puth(msg.cmd);
    putc('\n');
    puts("\tdata:");
    puth(msg.data);
    putc('\n');

    nr = msg.data;

    itr1 = in_buffer;
    itr2 = out_buffer;
    for(i = 0; i < nr; i++) {
        min[i] = itr1;
        mout[i] = itr2;
        itr1 += nr;
        itr2 += nr;
    }
# 67 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/mats/pac.c"
    for(i = 0; i < nr; i++) {
        for(j = 0; j < nr; j++) {
            tmp = 0;
            for(k = 0; k < nr; k++) {
                tmp += min[i][k] * min[k][j];
            }
            mout[i][j] = tmp;

        }
    }

    puts("calculate done, bye\n");

 return 0;
}
