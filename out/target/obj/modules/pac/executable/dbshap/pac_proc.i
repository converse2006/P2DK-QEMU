# 1 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c"

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
# 3 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c" 2

# 1 "/home/converse/virtual_platform1/testsuit/hybrid/sha/mem.h" 1
# 5 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c" 2
# 1 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac.h" 1






extern uint8_t inbuffer0[16384];
extern uint8_t inbuffer1[16384];
extern uint8_t outbuffer0[32];
extern uint8_t outbuffer1[32];




int task_start(uint32_t d);




int task_process(uint8_t *in, uint8_t *out, uint16_t nr, uint16_t sz);




int task_end(uint32_t *d);
# 6 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c" 2





# 1 "/home/converse/virtual_platform1/testsuit/hybrid/sha/sha.h" 1
# 11 "/home/converse/virtual_platform1/testsuit/hybrid/sha/sha.h"
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
# 12 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c" 2
# 34 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c"
void *memset_imp(void *s, int c, int n)
{
    int i;
    BYTE *data = (BYTE*)s;
    for(i = 0; i < n; i++) {
        data[i] = c;
    }
    return s;
}

void *memcpy_imp(void *dest, const void *src, int n)
{
    int i;
    BYTE *d = (BYTE*)dest, *s = (BYTE*)src;
    for(i = 0; i < n; i++) {
        d[i] = s[i];
    }
    return dest;
}


static void sha_transform(SHA_INFO *sha_info)
{
    int i;
    LONG temp, A, B, C, D, E, W[80];

    for (i = 0; i < 16; ++i) {
    W[i] = sha_info->data[i];
    }
    for (i = 16; i < 80; ++i) {
    W[i] = W[i-3] ^ W[i-8] ^ W[i-14] ^ W[i-16];



    }
    A = sha_info->digest[0];
    B = sha_info->digest[1];
    C = sha_info->digest[2];
    D = sha_info->digest[3];
    E = sha_info->digest[4];
# 95 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c"
    for (i = 0; i < 20; ++i) {
    temp = ((A << 5) | (A >> (32 - 5))) + ((B & C) | (~B & D)) + E + W[i] + 0x5a827999L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    for (i = 20; i < 40; ++i) {
    temp = ((A << 5) | (A >> (32 - 5))) + (B ^ C ^ D) + E + W[i] + 0x6ed9eba1L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    for (i = 40; i < 60; ++i) {
    temp = ((A << 5) | (A >> (32 - 5))) + ((B & C) | (B & D) | (C & D)) + E + W[i] + 0x8f1bbcdcL; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }
    for (i = 60; i < 80; ++i) {
    temp = ((A << 5) | (A >> (32 - 5))) + (B ^ C ^ D) + E + W[i] + 0xca62c1d6L; E = D; D = C; C = ((B << 30) | (B >> (32 - 30))); B = A; A = temp;
    }

    sha_info->digest[0] += A;
    sha_info->digest[1] += B;
    sha_info->digest[2] += C;
    sha_info->digest[3] += D;
    sha_info->digest[4] += E;
}




static void byte_reverse(LONG *buffer, int count)
{
    int i;
    BYTE ct[4], *cp;


    count >>= 2;
    cp = (BYTE *) buffer;
    for (i = 0; i < count; ++i) {
   ct[0] = cp[0];
   ct[1] = cp[1];
   ct[2] = cp[2];
   ct[3] = cp[3];
   cp[0] = ct[3];
   cp[1] = ct[2];
   cp[2] = ct[1];
   cp[3] = ct[0];
   cp += sizeof(LONG);
    }
}




void sha_init(SHA_INFO *sha_info)
{
    sha_info->digest[0] = 0x67452301L;
    sha_info->digest[1] = 0xefcdab89L;
    sha_info->digest[2] = 0x98badcfeL;
    sha_info->digest[3] = 0x10325476L;
    sha_info->digest[4] = 0xc3d2e1f0L;
    sha_info->count_lo = 0L;
    sha_info->count_hi = 0L;
}


void sha_update(SHA_INFO *sha_info, BYTE *buffer, int count)
{

    if ((sha_info->count_lo + ((LONG) count << 3)) < sha_info->count_lo) {
        ++sha_info->count_hi;
    }
    sha_info->count_lo += (LONG) count << 3;
    sha_info->count_hi += (LONG) count >> 29;
    while (count >= 64) {
        memcpy_imp(sha_info->data, buffer, 64);

        byte_reverse(sha_info->data, 64);

        sha_transform(sha_info);
        buffer += 64;
        count -= 64;
    }
    memcpy_imp(sha_info->data, buffer, count);

}


void sha_final(SHA_INFO *sha_info)
{
    int count;
    LONG lo_bit_count, hi_bit_count;

    lo_bit_count = sha_info->count_lo;
    hi_bit_count = sha_info->count_hi;
    count = (int) ((lo_bit_count >> 3) & 0x3f);
    ((BYTE *) sha_info->data)[count++] = 0x80;
    if (count > 56) {
        memset_imp((BYTE *) &sha_info->data + count, 0, 64 - count);

        byte_reverse(sha_info->data, 64);

        sha_transform(sha_info);
        memset_imp(&sha_info->data, 0, 56);
    } else {
        memset_imp((BYTE *) &sha_info->data + count, 0, 56 - count);
    }

    byte_reverse(sha_info->data, 64);

    sha_info->data[14] = hi_bit_count;
    sha_info->data[15] = lo_bit_count;
    sha_transform(sha_info);

}

SHA_INFO __attribute__((section(".ldm"), aligned(4))) sha_info;




int task_start(uint32_t d)
{
    ;
    sha_init(&sha_info);
    return 0;
}






int task_process(uint8_t *in, uint8_t *out, uint16_t nr, uint16_t sz)
{
# 233 "/home/converse/virtual_platform1/testsuit/hybrid/sha/pac_proc.c"
    SHA_INFO *sha_info_cache = &sha_info;
    int i,j;
    BYTE data[8192];

    for(i = 0, j=0 ; i < sz; i++) {

        data[j] = in[i];
        j += 1;

        if( j == 8192) {
            sha_update(sha_info_cache, data, 8192);
            j = 0;
        }
    }
    if(j != 0) {
        sha_update(sha_info_cache, data, j);
    }

    return 0;
}




int task_end(uint32_t *d)
{
    SHA_INFO *sha_info_cache = &sha_info;
    uint32_t *obuf032 = (uint32_t)outbuffer0;

    ;

    sha_final(sha_info_cache);

 obuf032[0] = sha_info_cache->digest[0];
 obuf032[1] = sha_info_cache->digest[1];
 obuf032[2] = sha_info_cache->digest[2];
 obuf032[3] = sha_info_cache->digest[3];
 *d = obuf032[4] = sha_info_cache->digest[4];

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
