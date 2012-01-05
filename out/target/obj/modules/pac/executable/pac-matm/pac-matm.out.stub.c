/**
 * stub of file: pac-matm.out(pac_matm_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(pac_matm_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(pac_matm_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(pac_matm);

struct pacdsp_prog pac_matm = {
	.dsm_sz     = 0x040110,
	.tsm_sz     = 0x002c8d,
	.ldm_sz     = 0x0000a0,
	.fname      = "pac-matm.out",
	.efname     = "pac_matm_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(pac_matm),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Data Section Memory(dsm_base: 00000000)
 * Address	Bytes	Name
 * 000200f0	20	OBJECT	ctrl_buffer
 * 00020104	65536	OBJECT	in_buffer
 * 00030104	65536	OBJECT	out_buffer
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_matm, dsm_shared, ctrl_buffer) = (0x000200f0 - 0x00000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_matm, dsm_shared, in_buffer) = (0x00020104 - 0x00000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_matm, dsm_shared, out_buffer) = (0x00030104 - 0x00000000);

__GEN_PACDSP_CTX_INIT_FN(pac_matm);

