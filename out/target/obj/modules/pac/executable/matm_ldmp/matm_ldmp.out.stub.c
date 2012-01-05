/**
 * stub of file: matm_ldmp.out(matm_ldmp_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(matm_ldmp_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(matm_ldmp_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(matm_ldmp);

struct pacdsp_prog matm_ldmp = {
	.dsm_sz     = 0x0000f0,
	.tsm_sz     = 0x002c9d,
	.ldm_sz     = 0x0040c0,
	.fname      = "matm_ldmp.out",
	.efname     = "matm_ldmp_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(matm_ldmp),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200020a0	20	OBJECT	ctrl_buffer
 * 200020b4	4096	OBJECT	in_buffer
 * 200030b4	4096	OBJECT	out_buffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(matm_ldmp, ldm_shared, ctrl_buffer) = (0x200020a0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(matm_ldmp, ldm_shared, in_buffer) = (0x200020b4 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(matm_ldmp, ldm_shared, out_buffer) = (0x200030b4 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(matm_ldmp);

