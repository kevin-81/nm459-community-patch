
;; This script allows you to implement user screen bytes by
;; just adding them to either Zero Page or Overflow RAM.
;;
;; Note that they need to be added sequentially; you can't
;; use userScreenByte2 without adding byte 0 and 1 as well,
;; for example.

.ifdef userScreenByte0
    ;; #187 - User Screen Byte 0
    LDY #187
    LDA (temp16),y
    STA userScreenByte0

    .ifdef userScreenByte1
        ;; #188 - User Screen Byte 1
        INY
        LDA (temp16),y
        STA userScreenByte1

        .ifdef userScreenByte2
            ;; #189 - User Screen Byte 2
            INY
            LDA (temp16),y
            STA userScreenByte2

            .ifdef userScreenByte3
                ;; #190 - User Screen Byte 3
                INY
                LDA (temp16),y
                STA userScreenByte3

                .ifdef userScreenByte4
                    ;; #191 - User Screen Byte 4
                    INY
                    LDA (temp16),y
                    STA userScreenByte4
    
                    .ifdef userScreenByte5
                        ;; #192 - User Screen Byte 5
                        INY
                        LDA (temp16),y
                        STA userScreenByte5

                        .ifdef userScreenByte6
                            ;; #193 - User Screen Byte 6
                            INY
                            LDA (temp16),y
                            STA userScreenByte6

                            .ifdef userScreenByte7
                                ;; #194 - User Screen Byte 7
                                INY
                                LDA (temp16),y
                                STA userScreenByte7
                            .endif
                        .endif
                    .endif
                .endif
            .endif
        .endif
    .endif
.endif

