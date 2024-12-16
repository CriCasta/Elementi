.ORIG x3000

; Creare un ciclo in cui carico un carattere (maiuscolo) e lo trasformo
; in minuscolo , finchè il carattere non è quello di INVIo (ASCII x0A)

GETC
ST R0, CHAR
LD R1, THIRTYTWO
ADD R0, R0, R1
ST R0, CHAR
LEA R0, CHAR
AND R1, R1, 0
STR R1, R0, 1

PUTS

HALT

CHAR .BLKW 2
THIRTYTWO .FILL 32


.END
