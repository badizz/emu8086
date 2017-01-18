.MODEL SMALL
.STACK 64

.DATA
 STRING1 DB 'Microprocessors','$'


.CODE
   MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    MOV ES,AX
    
    CLD         
    MOV CX,15
    
    MOV SI,OFFSET STRING1
    BACK:LODSB
    INC DI 
    CMP AL,'s'
    JNE OVER
   
    
    MOV AL,01H
    DEC DI
    STOSB
    
    
OVER:LOOP BACK
       
             
EXIT:
             
   MOV AH,4CH
   INT 21H
ENDP
END MAIN