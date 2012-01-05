/**
 * stub of file: pongp.out(pongp_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(pongp_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(pongp_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(pongp);

struct pacdsp_prog pongp = {
	.dsm_sz     = 0x0000f0,
	.tsm_sz     = 0x0028bd,
	.ldm_sz     = 0x0008b0,
	.fname      = "pongp.out",
	.efname     = "pongp_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(pongp),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	2048	OBJECT	inbuffer
 * 200008a0	4	OBJECT	outbuffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pongp, ldm_shared, inbuffer) = (0x200000a0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pongp, ldm_shared, outbuffer) = (0x200008a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(pongp);

