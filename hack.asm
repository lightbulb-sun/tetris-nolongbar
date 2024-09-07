.memorymap
defaultslot 0
slotsize $4000
slot 0 $8000
slot 1 $c000
.endme

.rombankmap
bankstotal 7
banksize $10
banks 1
banksize $4000
banks 2
banksize $1000
banks 4
.endro

.background "tetris.nes"

.equ    NUM_TETROMINOES     6

.bank 1 slot 0
.orga $9910
        cmp     #NUM_TETROMINOES
        bcs     cont
.orga $991c
cont:

.orga $992a
        cmp     #NUM_TETROMINOES
.orga $992f
        sbc     #NUM_TETROMINOES
