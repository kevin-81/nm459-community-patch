
      LDA textPointer
      CLC
      ADC #$01
      STA textPointer

      LDA textPointer+1
      ADC #$00
      STA textPointer+1

      ;; "open shop" warps:
      LDA textQueued
      ORA #%00000100 ;; text warps
      STA textQueued

      LDA #$00
      STA textHandler

