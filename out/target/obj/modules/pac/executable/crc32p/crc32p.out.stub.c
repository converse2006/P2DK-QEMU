/**
 * stub of file: crc32p.out(crc32p_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(crc32p_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(crc32p_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(crc32p);

struct pacdsp_prog crc32p = {
	.dsm_sz     = 0x0000f0,
	.tsm_sz     = 0x002c5d,
	.ldm_sz     = 0x0044c0,
	.fname      = "crc32p.out",
	.efname     = "crc32p_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(crc32p),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

/**
 * Shared Local Data Memory(ldm_base: 20000000)
 * Address	Bytes	Name
 * 200004b0	16384	OBJECT	inbuffer
 * 200044b0	4	OBJECT	outbuffer
 *
 **/
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(crc32p, ldm_shared, inbuffer) = (0x200004b0 - 0x20000000);
const p2sdk_shmm_idx  __GEN_SHARED_IDX_NAME(crc32p, ldm_shared, outbuffer) = (0x200044b0 - 0x20000000);

__GEN_PACDSP_CTX_INIT_FN(crc32p);

