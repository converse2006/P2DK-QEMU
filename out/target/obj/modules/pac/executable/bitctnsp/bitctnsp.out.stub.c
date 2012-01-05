/**
 * stub of file: bitctnsp.out(bitctnsp_out)
 *
 **/

#include "libpap.h"
#include "libpap_stub.h"

extern uint8_t __GEN_OBJCOPY_BIN_START_FULL(bitctnsp_out)[];
extern uint8_t __GEN_OBJCOPY_BIN_END_FULL(bitctnsp_out)[];

__GEN_PACDSP_CTX_INIT_FN_DECLAR(bitctnsp);

struct pacdsp_prog bitctnsp = {
	.dsm_sz     = 0x0001c0,
	.tsm_sz     = 0x0039ed,
	.ldm_sz     = 0x0002e0,
	.fname      = "bitctnsp.out",
	.efname     = "bitctnsp_out",
	.init       = __GEN_PACDSP_CTX_INIT_FN_NAME(bitctnsp),
	.init_done  = PACDSP_PROG_NOT_INIT,
	.type       = PACDSP_PROG_STUB,
};

__GEN_PACDSP_CTX_INIT_FN(bitctnsp);

