.MODEL SMALL
.STACK 64


.DATA
    DATA_IN  DB 1DH,1EH,1FH
    BYK    DB  ?


.CODE
    MOV AX,@DATA
    MOV DS,AX
    MOV SI,OFFSET DATA_IN
    MOV CX,3
    MOV AL,[SI]
    
AGAIN:
        
       CMP AL,[SI]
       JA BUYUK
       
       MOV AL,[SI]

BUYUK:  
       INC SI
       LOOP AGAIN
    
    MOV BYK,AL
   
MOV AH,4CH
INT 21H

ENDP