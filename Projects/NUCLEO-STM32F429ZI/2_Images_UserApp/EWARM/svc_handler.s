;*******************************************************************************
;* File Name          : svc_handler.s
;* Author             : MCD Application Team
;* Description        : Wrapper for SE isolation with MPU.
;*******************************************************************************
;*
;* Copyright (c) 2017 STMicroelectronics.
;* All rights reserved.
;*
;* This software is licensed under terms that can be found in the LICENSE file in
;* the root directory of this software component.
;* If no LICENSE file comes with this software, it is provided AS-IS.
;*
;*******************************************************************************
;
;
;
; Cortex-M version
;
      SECTION .text:CODE:NOROOT:REORDER(2)
      EXPORT SVC_Handler
SVC_Handler
        IMPORT MPU_SVC_Handler
        MRS r0, PSP
        B MPU_SVC_Handler
        END
