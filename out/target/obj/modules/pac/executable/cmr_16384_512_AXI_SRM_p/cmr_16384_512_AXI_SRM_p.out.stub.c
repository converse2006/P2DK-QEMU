/**
 * stub of file: cmr_16384_512_AXI_SRM_p.out(cmr_16384_512_AXI_SRM_p_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(cmr_16384_512_AXI_SRM_p_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(cmr_16384_512_AXI_SRM_p_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(cmr_16384_512_AXI_SRM_p);

struct pacdsp_prog cmr_16384_512_AXI_SRM_p = {
	.dsm_sz     = 0x0000d0,
	.tsm_sz     = 0x00281d,
	.ldm_sz     = 0x0040a0,
	.fname      = "cmr_16384_512_AXI_SRM_p.out",
	.efname     = "cmr_16384_512_AXI_SRM_p_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(cmr_16384_512_AXI_SRM_p),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	16384	OBJECT	buffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(cmr_16384_512_AXI_SRM_p, ldm_shared, buffer) = (0x200000a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(cmr_16384_512_AXI_SRM_p);

