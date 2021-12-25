# KIMuino
Arduino based KIM-1 emulator

# Memory layout
    0x0000 - 0x16FF    5888 bytes RAM Arduino Mega (Uno & Nano: 1024 bytes)
    0x1700 - 0x17FF     256 bytes RAM 6530 RIOT chips (I/O, Timers)
    0x1800 - 0x1FFF    2048 bytes ROM 6530 RIOT chips (KIM operating system)
    0x2000 - 0x28FF    2304 bytes ROM Tiny Basic by Tom Pittman
    0x2900 - 0x38FF    4096 bytes EEPROM Arduino Mega (Uno & Nano: 1024 bytes)
    0x4000 - 0x405F      95 bytes ROM Movit utility
    0x4060 - 0x408A      43 bytes ROM Save utility
    0x408B - 0x40B5      43 bytes ROM Load utility
    0xFFFA - 0xFFFF       6 bytes ROM IRQ table

# MOVIT utility from the 1st book of KIM is used for this purpose
 - Enter original start adress of the program to move in $00D0 (LSB) and $00D1 (MSB),
 - Enter original end adress of the program to move in $00D2 (LSB) and $00D3 (MSB),
 - Enter new start adress of the program to move in $00D4 (LSB) and $00D5 (MSB),
 - Press 4000 [GO].

# SAVE 512 bytes $0200-$03FF from RAM to $2900-$2AFF EEPROM
 - Press 4060 [GO]
This will init addresses $D0-$D5 and call MOVIT

# LOAD 512 bytes $2900-$2AFF EEPROM from EEPROM to $0200-$03FF RAM
 - Press 408B [GO]
This will init addresses $D0-$D5 and call MOVIT

# Run BASIC
 - Go to serial mode
 - Type in: 2000 [Space] (Cold start)
 - Type in: 2003 [Space] (Warm start, after LOAD/SAVE)
 - Type in: Shift + [G]

# LOAD/SAVE BASIC user program
    >A=USR(S)        // this will call SAVE at $4060
    >A=USR(L)        // this will call LOAD at $408B
    >A=(USR(16480))  // SAVE if you've overwritten variable S
    >A=(USR(16513))  // SAVE if you've overwritten variable L







