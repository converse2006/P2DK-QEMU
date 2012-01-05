/**
 * stub of file: dbshap.out(dbshap_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(dbshap_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(dbshap_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(dbshap);

struct pacdsp_prog dbshap = {
	.dsm_sz     = 0x000150,
	.tsm_sz     = 0x00458d,
	.ldm_sz     = 0x008140,
	.fname      = "dbshap.out",
	.efname     = "dbshap_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(dbshap),
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
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbshap, ldm_shared, inbuffer0) = (0x20000100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbshap, ldm_shared, inbuffer1) = (0x20004100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbshap, ldm_shared, outbuffer0) = (0x20008100 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbshap, ldm_shared, outbuffer1) = (0x20008120 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(dbshap);

