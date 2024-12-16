; Devo realizzare il seguente codice:

; int A[20]={1,2,3,4,5,6,7,8,9,10,11,12,-1,0,0,0,0,0,0,0};
; int i=0;
; int r=0;
; while(A[i]>0){
;    r=r+A[i];
;    i++;
; }

.ORIG x3000

	LEA R1, A
	AND R3, R3, 0
	
iniziowhile
	LDR R4, R1, 0
	BRnz finewhile

	ADD R3, R3, R4
	ADD R1, R1, 1    
	BRnzp iniziowhile

finewhile
	ST R3, r
	HALT

A	.FILL  0001
	.FILL  0002
	.FILL  0003
	.FILL  0004
	.FILL  0005
	.FILL  0006
	.FILL  0007
	.FILL  0008
	.FILL  0009
	.FILL  0010
	.FILL  0011
	.FILL  0012
	.FILL  -1
	.BLKW  7
r	.FILL 0

.END
