
;; This script allows you to implement user screen bytes by
;; just adding them to either Zero Page or Overflow RAM.


.ifdef userScreenByte0
    ;; #187 - User Screen Byte 0
    LDY #187
    LDA (temp16),y
    STA userScreenByte0
.endif


.ifdef userScreenByte1
    ;; #188 - User Screen Byte 1
    LDY #188
    LDA (temp16),y
    STA userScreenByte1
.endif

.ifdef userScreenByte2
    ;; #189 - User Screen Byte 1
    LDY #189
    LDA (temp16),y
    STA userScreenByte2
.endif

.ifdef userScreenByte3
    ;; #190 - User Screen Byte 3
    LDY #190
    LDA (temp16),y
    STA userScreenByte3
.endif


.ifdef userScreenByte4
    ;; #191 - User Screen Byte 4
    LDY #191
    LDA (temp16),y
    STA userScreenByte4
.endif


.ifdef userScreenByte5
    ;; #192 - User Screen Byte 5
    LDY #192
    LDA (temp16),y
    STA userScreenByte5
.endif


.ifdef userScreenByte6
    ;; #193 - User Screen Byte 6
    LDY #193
    LDA (temp16),y
    STA userScreenByte6
.endif

.ifdef userScreenByte7
    ;; #194 - User Screen Byte 7
    LDY #194
    LDA (temp16),y
    STA userScreenByte7
.endif

