.ORIG x3000
LD R0, VAR1
LD R1, VAR2
LD R2, VAR3

JSR SOTTRAZIONE

ADD R0, R3, 0
ADD R1, R2, 0

JSR SOTTRAZIONE

ST R3, RISULTATO
HALT

;funzione che fa la sottrazione tra R2 <-- R0 - R1
;R0 contiene il primo valore
;R1 contiene il valore da sottrarre
;R2 contiene il risultato di R0 - R1

SOTTRAZIONE
	NOT R1, R1
	ADD R1, R1, #1 ;COMPLEMENTO A 2 DI R1
	ADD R3, R0, R1 ;SOTTRAZIONE TRA R0 E R1
	RET
	
VAR1		.FILL 0040
VAR2		.FILL 0015
VAR3		.FILL 0026

RISULTATO 	.FILL 0
.END
