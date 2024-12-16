.ORIG x3000
     AND R1,R1,x0  ; cancella R1 usato per memorizzare la somma
     AND R4,R4,x0  ; cancella R4 usato come contatore
     ADD R4,R4,xA  ; carica in R4 il valore 10 (contatore)
     LEA R2,x0FC   ; mette in R2 l’indirizzo di partenza dei dati
LOOP LDR R3,R2,x0  ; carica il numero da aggiungere
     ADD R2,R2,x1  ; incrementa il puntatore
     ADD R1,R1,R3  ; aggiunge il numero corrente alla somma
     ADD R4,R4,x-1 ; decrementa il contatore
     BRp LOOP      ; se il contatore non è zero torna a LOOP
     HALT
.END