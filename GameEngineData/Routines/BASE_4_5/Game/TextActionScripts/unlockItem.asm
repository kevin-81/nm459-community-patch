
      ;; Unlock item script

      ;; Get the memory address of the item to unlock
      LDA textPointer
      CLC
      ADC #$01
      STA textPointer
      LDA textPointer+1
      ADC #$00
      STA textPointer+1

      ;; Load the item to unlock from memory
      LDY #$00
      LDA (textPointer),y

      ;; (the accumulator now holds the item to get)

      ;; Unlock the item
      TAY
      LDA ValToBitTable_inverse,y
      ORA weaponsUnlocked
      STA weaponsUnlocked

      ;; Trigger the current screen
      TriggerScreen currentNametable

