# 1 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha_driver.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha_driver.c"
# 1 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha.h" 1



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
# 5 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha.h" 2






typedef uint8_t BYTE;
typedef uint32_t LONG;




typedef struct {
    LONG digest[5];
    LONG count_lo, count_hi;
    LONG data[16];
} SHA_INFO;

void sha_init(SHA_INFO *);
void sha_update(SHA_INFO *, BYTE *, int);
void sha_final(SHA_INFO *);

void sha_stream(SHA_INFO *sha_info);
void sha_result(SHA_INFO *sha_info);


void sha_dbg_print(SHA_INFO*);
# 43 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha.h"
extern unsigned char _binary_input_tiny6_bin_start[];
extern unsigned char _binary_input_tiny6_bin_end[];
extern unsigned char sha_result_start[];
extern unsigned char sha_result_end[];
# 2 "/home/converse/virtual_platform1/testsuit/standalone/sha-input_8/sha_driver.c" 2


void sha_dbg_print(SHA_INFO *sha_info)
{
    puts("# ");
    puth(sha_info->digest[0]);
    puts(" ");
    puth(sha_info->digest[1]);
    puts(" ");
    puth(sha_info->digest[2]);
    puts(" ");
    puth(sha_info->digest[3]);
    puts(" ");
    puth(sha_info->digest[4]);
    puts("\n");
}


int main(int argc, char **argv)
{
    SHA_INFO sha_info;

    puts("# file: " "input_tiny6.bin" "\n");

    sha_stream(&sha_info);
    sha_result(&sha_info);

 return sha_info.digest[0];
}
