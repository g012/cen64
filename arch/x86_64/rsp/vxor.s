//
// arch/x86_64/rsp/vxor.s
//
// CEN64: Cycle-Accurate Nintendo 64 Simulator.
// Copyright (C) 2014, Tyler J. Stachecki.
//
// This file is subject to the terms and conditions defined in
// 'LICENSE', which is part of this source code package.
//

#
# xmm1 = vs
# xmm0 = vt
# xmm5 = acc_lo
#

.ifdef __MINGW32__
.globl RSP_VXOR
.def RSP_VXOR; .scl 2; .type 32; .endef
.seh_proc RSP_VXOR
RSP_VXOR:
.else
.global RSP_VXOR
.type	RSP_VXOR, @function
RSP_VXOR:
.endif

RSP_VXOR:
  pxor %xmm1, %xmm0
  movdqa %xmm0, %xmm5
  retq

.ifdef __MINGW32__
.seh_endproc
.else
.size RSP_VXOR,.-RSP_VXOR
.endif

