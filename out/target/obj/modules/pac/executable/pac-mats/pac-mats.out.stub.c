/**
 * stub of file: pac-mats.out(pac_mats_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(pac_mats_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(pac_mats_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(pac_mats);

struct pacdsp_prog pac_mats = {
	.dsm_sz     = 0x040140,
	.tsm_sz     = 0x002d9d,
	.ldm_sz     = 0x0000a0,
	.fname      = "pac-mats.out",
	.efname     = "pac_mats_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(pac_mats),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Data Section Memory(dsm_base: 00000000)
 * Address	Bytes	Name
 * 00020130	8	OBJECT	ctrl_buffer
 * 00020138	65536	OBJECT	in_buffer
 * 00030138	65536	OBJECT	out_buffer
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_mats, dsm_shared, ctrl_buffer) = (0x00020130 - 0x00000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_mats, dsm_shared, in_buffer) = (0x00020138 - 0x00000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(pac_mats, dsm_shared, out_buffer) = (0x00030138 - 0x00000000);

__GEN_PACDSP_CTX_INIT_FN(pac_mats);

