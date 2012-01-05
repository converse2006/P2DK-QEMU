/**
 * stub of file: pp2sha.out(pp2sha_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(pp2sha_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(pp2sha_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(pp2sha);

struct pacdsp_prog pp2sha = {
	.dsm_sz     = 0x000190,
	.tsm_sz     = 0x00477d,
	.ldm_sz     = 0x008140,
	.fname      = "pp2sha.out",
	.efname     = "pp2sha_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(pp2sha),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 20000100	16384	OBJECT	inbuffer0
 * 20004100	16384	OBJECT	inbuffer1
 * 20008100	32	OBJECT	outbuffer0
 * 20008120	32	OBJECT	outbuffer1
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pp2sha, ldm_shared, inbuffer0) = (0x20000100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pp2sha, ldm_shared, inbuffer1) = (0x20004100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pp2sha, ldm_shared, outbuffer0) = (0x20008100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pp2sha, ldm_shared, outbuffer1) = (0x20008120 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(pp2sha);

