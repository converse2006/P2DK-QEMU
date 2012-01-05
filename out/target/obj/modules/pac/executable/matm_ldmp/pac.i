# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c"
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
# 2 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/matrix.h" 1
# 3 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c" 2


uint32_t __attribute__((section(".ldm_shared"), aligned(4))) ctrl_buffer[5];
uint32_t __attribute__((section(".ldm_shared"), aligned(4))) in_buffer[((32) * (32))];
uint32_t __attribute__((section(".ldm_shared"), aligned(4))) out_buffer[((32) * (32))];
uint32_t __attribute__((section(".ldm"), aligned(4))) *min[((32) * (32))];
uint32_t __attribute__((section(".ldm"), aligned(4))) *mout[((32) * (32))];
# 18 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c"
int main(int argc, char **argv)
{
    uint32_t *in;
    struct hw_info *info;
    struct mbox_msg msg;
    uint32_t i, j, k, tmp;
    uint32_t *itr1, *itr2;
    uint32_t nr, st, en;
    int type;

    info = pp_get_hw_info();

    if(argc < 2) {
        ;
            return -1;
    } else {
        if(argv[1][0] == 'm') {
            ;
            type = 0;
        } else if(argv[1][0] == 'w') {
            ;
            type = 1;
        } else {
            ;
            return -1;
        }
    }

    if(type == 0) {
        ;
        msg.data = in = in_buffer;
        pp_send_mbox(&msg);
    } else {
        in = (uint32_t*)ctrl_buffer[2];
    }
    nr = ctrl_buffer[1];
    st = ctrl_buffer[3];
    en = ctrl_buffer[4];

    ;
    ;
    ;
    ;

    itr1 = in;
    itr2 = out_buffer;
    for(i = 0; i < nr; i++) {
        min[i] = itr1;
        mout[i] = itr2;
        itr1 += nr;
        itr2 += nr;
    }
# 83 "/home/converse/virtual_platform1/testsuit/hybrid/matrix_mul/matm/pac.c"
    for(i = st; i < en; i++) {
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
