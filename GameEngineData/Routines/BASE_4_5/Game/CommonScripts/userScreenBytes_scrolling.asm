
;; This script allows you to implement user screen bytes by
;; just adding them to either Zero Page or Overflow RAM.


    ;; #187 - User Screen Byte 0
    LDY #187

.ifdef userScreenByte0
    LDA (temp16),y
    STA userScreenByte0
.endif

    ;; #188 - User Screen Byte 1
    INY

.ifdef userScreenByte1
    LDA (temp16),y
    STA userScreenByte1
.endif

    ;; #189 - User Screen Byte 2
    INY

.ifdef userScreenByte2
    LDA (temp16),y
    STA userScreenByte2
.endif

    ;; #190 - User Screen Byte 3
    INY

.ifdef userScreenByte3
    LDA (temp16),y
    STA userScreenByte3
.endif

    ;; #191 - User Screen Byte 4
    INY

.ifdef userScreenByte4
    LDA (temp16),y
    STA userScreenByte4
.endif

;; #192 - User Screen Byte 5
INY

.ifdef userScreenByte5
    LDA (temp16),y
    STA userScreenByte5
.endif

;; #193 - User Screen Byte 6
INY

.ifdef userScreenByte6
    LDA (temp16),y
    STA userScreenByte6
.endif

    ;; #194 - User Screen Byte 7
    INY

.ifdef userScreenByte7
    LDA (temp16),y
    STA userScreenByte7
.endif

