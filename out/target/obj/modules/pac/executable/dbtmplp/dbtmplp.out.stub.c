/**
 * stub of file: dbtmplp.out(dbtmplp_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(dbtmplp_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(dbtmplp_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(dbtmplp);

struct pacdsp_prog dbtmplp = {
	.dsm_sz     = 0x000240,
	.tsm_sz     = 0x00355d,
	.ldm_sz     = 0x0040a0,
	.fname      = "dbtmplp.out",
	.efname     = "dbtmplp_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(dbtmplp),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	4096	OBJECT	inbuffer0
 * 200010a0	4096	OBJECT	inbuffer1
 * 200020a0	4096	OBJECT	outbuffer0
 * 200030a0	4096	OBJECT	outbuffer1
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbtmplp, ldm_shared, inbuffer0) = (0x200000a0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbtmplp, ldm_shared, inbuffer1) = (0x200010a0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbtmplp, ldm_shared, outbuffer0) = (0x200020a0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(dbtmplp, ldm_shared, outbuffer1) = (0x200030a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(dbtmplp);

