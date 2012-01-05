/**
 * stub of file: hhwp.out(hhwp_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(hhwp_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(hhwp_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(hhwp);

struct pacdsp_prog hhwp = {
	.dsm_sz     = 0x000150,
	.tsm_sz     = 0x002b2d,
	.ldm_sz     = 0x0000c0,
	.fname      = "hhwp.out",
	.efname     = "hhwp_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(hhwp),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Data Section Memory(dsm_base: 00000000)
 * Address	Bytes	Name
 * 00000130	32	OBJECT	fname
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(hhwp, dsm_shared, fname) = (0x00000130 - 0x00000000);

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200000a0	32	OBJECT	sname
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(hhwp, ldm_shared, sname) = (0x200000a0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(hhwp);

