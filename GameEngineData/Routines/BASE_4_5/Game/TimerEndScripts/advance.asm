
    LDA Object_frame,x
    LSR
    LSR
    LSR
    AND #%00000111
    CLC
    ADC #$01
    AND #%00000111
    STA tempB

    LDA tempB
    ASL
    ASL
    ASL
    STA tempC

    LDA Object_frame,x
    AND #%11000111
    ORA tempC
    STA Object_frame,x

    STX tempA
    DoObjectAction tempA, tempB

