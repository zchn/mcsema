BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=
;TEST_FILE_META_END
    ; ADD16rr
    mov cx, 0x4
    mov dx, 0x5
    ;TEST_BEGIN_RECORDING
    add cx, dx
    ;TEST_END_RECORDING

