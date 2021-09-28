;Escribir en programa en lenguaje Assembler para poner los contenidos de los registros como sigue: 
;R0 del banco 0 en un valor cualquiera (tal vez 3Fh). Mover el dato de registro en registro dentro 
;del banco y de banco en banco. En cada paso incrementar el valor del dato y mostrarlo por el puerto 1. 
;Utilice direccionamiento directo e indirecto según el caso.

	ORG 0000H
INICIO: 
	MOV R0,#1H ;CRGAMOS R0 <-- 1H
    MOV A,R0 ;A <-- RO = 1H 
	MOV P1,A ;P1 <-- A = 1H
    INC A ;A <-- A + 1 = 1H + 1 = 2H
    MOV R1,A ;R1 <-- A = 2H
	MOV P1,A ;P1 <-- A = 2H
    INC A ;A <-- A + 1 = 2H + 1 = 3H
	MOV R2,A ;R2 <-- A = 3H
	MOV P1,A ;P1 <-- A = 3H
    INC A ;... A = 4H 
	MOV R3,A ;... R3 = 4H
	MOV P1,A
    INC A
	MOV R4,A
	MOV P1,A
    INC A
	MOV R5,A
	MOV P1,A
    INC A
	MOV R6,A
	MOV P1,A
    INC A 
    MOV R7,A
	MOV P1,A
    INC A;CAMBIAMOS DEL BANCO 0 AL BANCO 1
	SETB RS0
	CLR RS1; RS0 = BANCO 1
	MOV R0,A
	MOV P1,A
    INC A 
    MOV R1,A
	MOV P1,A
    INC A
	MOV R2,A
	MOV P1,A
    INC A
	MOV R3,A
	MOV P1,A
    INC A
	MOV R4,A
	MOV P1,A
    INC A
	MOV R5,A
	MOV P1,A
    INC A
	MOV R6,A
	MOV P1,A
    INC A 
    MOV R7,A
	MOV P1,A
    INC A
	CLR RS0
    SETB RS1 ;CAMBIAMOS DEL BANCO 1 AL BANCO 2
	MOV R0,A
	MOV P1,A
    INC A 
    MOV R1,A
	MOV P1,A
    INC A
	MOV R2,A
	MOV P1,A
    INC A
	MOV R3,A
	MOV P1,A
    INC A
	MOV R4,A
	MOV P1,A
    INC A
	MOV R5,A
	MOV P1,A
    INC A
	MOV R6,A
	MOV P1,A
    INC A 
    MOV R7,A
	MOV P1,A
    INC A
	END
        
