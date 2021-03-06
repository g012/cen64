//
// arch/arm/rsp/vnand.h
//
// This file is subject to the terms and conditions defined in
// 'LICENSE', which is part of this source code package.
//

#include "common.h"
#include <arm_neon.h>

static inline uint16x8_t rsp_vnand(
  uint16x8_t vs, uint16x8_t vt, uint16x8_t zero) {
  return vmvnq_u16(vandq_u16(vs, vt));
}

