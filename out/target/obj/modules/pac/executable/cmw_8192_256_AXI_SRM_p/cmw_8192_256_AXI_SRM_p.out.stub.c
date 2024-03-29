/**
 * stub of file: cmw_8192_256_AXI_SRM_p.out(cmw_8192_256_AXI_SRM_p_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(cmw_8192_256_AXI_SRM_p_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(cmw_8192_256_AXI_SRM_p_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(cmw_8192_256_AXI_SRM_p);

struct pacdsp_prog cmw_8192_256_AXI_SRM_p = {
	.dsm_sz     = 0x0000d0,
	.tsm_sz     = 0x00281d,
	.ldm_sz     = 0x0020a0,
	.fname      = "cmw_8192_256_AXI_SRM_p.out",
	.efname     = "cmw_8192_256_AXI_SRM_p_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(cmw_8192_256_AXI_SRM_p),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	8192	OBJECT	buffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(cmw_8192_256_AXI_SRM_p, ldm_shared, buffer) = (0x200000a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(cmw_8192_256_AXI_SRM_p);

