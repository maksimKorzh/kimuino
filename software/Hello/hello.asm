OUTCH       .EQU $1EA0
LOAD        .ORG $0200

START        LDX #$00
PRINT        LDA HELLO,X
             BEQ EXIT
             JSR OUTCH
             INX
             JMP PRINT
EXIT         BRK

HELLO       .BYTE $0D, $0A, $0D, $0A
            .BYTE "Hello, World!"
            .BYTE $0D, $0A
            .BYTE $00

