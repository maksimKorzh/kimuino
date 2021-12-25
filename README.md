# KIMuino
Arduino based KIM-1 emulator

# Memory layout
    0x0000 - 0x16FF    5888 bytes RAM Arduino Mega (Uno & Nano: 1024 bytes)
    0x1700 - 0x17FF     256 bytes RAM 6530 RIOT chips (I/O, Timers)
    0x1800 - 0x1FFF    2048 bytes ROM 6530 RIOT chips (KIM operating system)
    0x2000 - 0x28FF    2304 bytes ROM Tiny Basic by Tom Pittman
    0x2900 - 0x38FF    4096 bytes EEPROM Arduino Mega (Uno & Nano: 1024 bytes)
    0xFFFA - 0xFFFF       6 bytes ROM IRQ table
