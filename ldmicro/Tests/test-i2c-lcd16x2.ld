LDmicro0.2
MICRO=Atmel AVR ATmega16 40-PDIP
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x0
CRYSTAL=8000000 Hz
BAUD=9600 Hz, RATE=100000 Hz, SPEED=100000 Hz
COMPILED=D:\Programmation\Ladder\Programmes\Tests\AvrGcc\AvrStudio\Src\i2c-lcd16x2.c

VAR LIST
    1 bytes Cbool 	Inutilisť actuellement !!!
    1 bytes Ccount 	Inutilisť actuellement !!!
    1 bytes Cdigit 	Inutilisť actuellement !!!
    2 bytes Cnew 	Inutilisť actuellement !!!
    2 bytes Cstate 	Inutilisť actuellement !!!
    2 bytes Hello 	Inutilisť actuellement !!!
    2 bytes I2C 	Inutilisť actuellement !!!
    2 bytes I2C1 	Inutilisť actuellement !!!
    2 bytes I2C2 	Inutilisť actuellement !!!
    2 bytes SPI 	Inutilisť actuellement !!!
    2 bytes SPI1 	Inutilisť actuellement !!!
    2 bytes SPI2 	Inutilisť actuellement !!!
    1 bytes T1 	Inutilisť actuellement !!!
    1 bytes T2 	Inutilisť actuellement !!!
    1 bytes Tdelai1 	Inutilisť actuellement !!!
    1 bytes Tdelai2 	Inutilisť actuellement !!!
    1 bytes Tdelay 	Inutilisť actuellement !!!
    1 bytes Tnew 	Inutilisť actuellement !!!
    1 bytes Toff 	Inutilisť actuellement !!!
    1 bytes Ton 	Inutilisť actuellement !!!
    1 bytes Tonce 	Inutilisť actuellement !!!
    2 bytes Tosc_off 	Inutilisť actuellement !!!
    2 bytes Tosc_on 	Inutilisť actuellement !!!
    2 bytes Ttempo 	Inutilisť actuellement !!!
    2 bytes alpha 	Inutilisť actuellement !!!
    2 bytes bool 	Inutilisť actuellement !!!
    2 bytes char 	Inutilisť actuellement !!!
  129 bytes char7seg 	Inutilisť actuellement !!!
    1 bytes char7seg[0] 	Inutilisť actuellement !!!
    2 bytes code 	Inutilisť actuellement !!!
    2 bytes count 	Inutilisť actuellement !!!
    2 bytes cycle 	Inutilisť actuellement !!!
    2 bytes decade 	Inutilisť actuellement !!!
    2 bytes dest 	Inutilisť actuellement !!!
    2 bytes digit 	Inutilisť actuellement !!!
    2 bytes digit0 	Inutilisť actuellement !!!
    2 bytes digit1 	Inutilisť actuellement !!!
    2 bytes duty_cycle 	Inutilisť actuellement !!!
    2 bytes hou 	Inutilisť actuellement !!!
    2 bytes i
    2 bytes inch 	Inutilisť actuellement !!!
    2 bytes index 	Inutilisť actuellement !!!
    2 bytes min 	Inutilisť actuellement !!!
    7 bytes name
    1 bytes name[0]
    2 bytes outch 	Inutilisť actuellement !!!
    2 bytes recv 	Inutilisť actuellement !!!
    2 bytes sec 	Inutilisť actuellement !!!
    2 bytes send 	Inutilisť actuellement !!!
    2 bytes src 	Inutilisť actuellement !!!
    2 bytes tab
    2 bytes totototo 	Inutilisť actuellement !!!
    2 bytes totototoffg 	Inutilisť actuellement !!!
    2 bytes units 	Inutilisť actuellement !!!
    2 bytes var 	Inutilisť actuellement !!!
    2 bytes x06 	Inutilisť actuellement !!!
    2 bytes x3F 	Inutilisť actuellement !!!
END

IO LIST
    I2C_SCL at 22 0 0
    I2C_SDA at 23 0 0
END

PROGRAM
RUNG 1
  CONTACTS Ronce 1 0
  LOOK_UP_TABLE tab i 7 1 72 101 108 108 111 32 33 name
END
RUNG 2
  CONTACTS Ronce 1 0
  I2C_WR I2C tab - Master 0x20 255 MSB 100000
  ADD i i 1
END
RUNG 3
  GRT i 6
  COIL Ronce 0 1 0 0
END
RUNG 4
  CONTACTS Ronce 0 0
  I2C_WR I2C 0xA0 - Master 0x20 255 MSB 100000
  I2C_WR I2C '0' - Master 0x20 255 MSB 100000
  COIL Rshow 1 0 0 0
END
