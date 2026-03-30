
    LDA #$02
    STA screenTransitionType

    LDA gameHandler
    ORA #%10000000
    STA gameHandler ;; this will set the next game loop to update the screen.

    ChangeActionStep player1_object, #$00

    LDX player1_object
    LDA #$00000000
    STA Object_direction,x

