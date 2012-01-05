/**
 * stub of file: cmr_8192_512_AHB_SDRM_p.out(cmr_8192_512_AHB_SDRM_p_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(cmr_8192_512_AHB_SDRM_p_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(cmr_8192_512_AHB_SDRM_p_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(cmr_8192_512_AHB_SDRM_p);

struct pacdsp_prog cmr_8192_512_AHB_SDRM_p = {
	.dsm_sz     = 0x0000d0,
	.tsm_sz     = 0x00281d,
	.ldm_sz     = 0x0020a0,
	.fname      = "cmr_8192_512_AHB_SDRM_p.out",
	.efname     = "cmr_8192_512_AHB_SDRM_p_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(cmr_8192_512_AHB_SDRM_p),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	8192	OBJECT	buffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(cmr_8192_512_AHB_SDRM_p, ldm_shared, buffer) = (0x200000a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(cmr_8192_512_AHB_SDRM_p);

