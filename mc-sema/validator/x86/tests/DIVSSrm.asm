BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=
;TEST_FILE_META_END

; convert 7 to a double precision float and store in xmm0
mov ecx, 7
cvtsi2ss xmm0, ecx

;TEST_BEGIN_RECORDING
; load 1.5 (in double precision float form)
lea ecx, [esp-4]
mov DWORD [ecx], 0x3fc00000

divss xmm0, [ecx]
mov ecx, [ecx]
;TEST_END_RECORDING

xor ecx, ecx
cvtsi2sd xmm0, ecx

