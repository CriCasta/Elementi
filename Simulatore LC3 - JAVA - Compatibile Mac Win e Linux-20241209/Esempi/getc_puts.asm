.ORIG x3000

GETC
ST R0, CHAR
LEA R0, CHAR
AND R1, R1, 0
STR R1, R0, 1

PUTS

HALT

CHAR .BLKW 2

.END
