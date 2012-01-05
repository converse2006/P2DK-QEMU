/**
 * stub of file: dbcrc32p.out(dbcrc32p_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(dbcrc32p_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(dbcrc32p_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(dbcrc32p);

struct pacdsp_prog dbcrc32p = {
	.dsm_sz     = 0x000170,
	.tsm_sz     = 0x00317d,
	.ldm_sz     = 0x00f4d0,
	.fname      = "dbcrc32p.out",
	.efname     = "dbcrc32p_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(dbcrc32p),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200004b0	30720	OBJECT	inbuffer0
 * 20007cb0	30720	OBJECT	inbuffer1
 * 2000f4b0	16	OBJECT	outbuffer0
 * 2000f4c0	16	OBJECT	outbuffer1
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbcrc32p, ldm_shared, inbuffer0) = (0x200004b0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbcrc32p, ldm_shared, inbuffer1) = (0x20007cb0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbcrc32p, ldm_shared, outbuffer0) = (0x2000f4b0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbcrc32p, ldm_shared, outbuffer1) = (0x2000f4c0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(dbcrc32p);

