# See LICENSE for license details.

#*****************************************************************************
# llb.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

TEST_LD_OP(2, ld, 0x0000000000001234, 0, tdat);
TEST_LD_OP(3, ld, 0x0000000000005678, 0, tdat);

TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

tdat:
tdat1:  .dword 0x0000000000001234

RVTEST_DATA_END
