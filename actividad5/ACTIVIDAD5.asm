;Escribir en programa en lenguaje Assembler que ejecute la siguiente secuencia:
;• Al iniciar, todos los LEDS del puerto 1 deben estar apagados (en color blanco)
;• Encender el LED 0 por 500ms
;• Esperar a que el SW 0 del simulador se oprima
;• Una vez se oprima SW0, Encender el LED 1 por 1 s
;(Usar 2 subrutinas distintas para la generación de los delays de 500ms y 1s)

				ORG 0000h
				MOV SP, #30H
                MOV A, #0FFH
Inicio:         MOV P1,A
                MOV A, #0FEH
                MOV P1, A
                ACALL SUBRUTINA_1 
                MOV A, #0FFH
                MOV P1,A
ESPERA_SW:      JB P2.0, ESPERA_SW
                MOV A, #0FDH
                MOV P1, A
                ACALL SUBRUTINA_2
                MOV A, #0FFH
                MOV P1, A
                FIN:
                SJMP FIN

SUBRUTINA_1: 
			mov R3,#04h   ; 1 ciclo de maquina
loop3:		mov R2,#0ffh  ; 1 ciclo de maquina
loop2:		mov R1,#0ffh  ; 1 ciclo de maquina
loop1:			
			djnz R1,loop1 ; 2 ciclo de maquina
			djnz R2,loop2 ; 2 ciclo de maquina
			djnz R3,loop3 ;	2 ciclo	de maquina		
			ret           ; 2 ciclo de maquina


SUBRUTINA_2:
			mov R3,#08h   ; 1 ciclo de maquina
loop_3:		mov R2,#0ffh  ; 1 ciclo de maquina
loop_2:		mov R1,#0ffh  ; 1 ciclo de maquina
loop_1:			
			djnz R1,loop_1 ; 2 ciclo de maquina
			djnz R2,loop_2 ; 2 ciclo de maquina
			djnz R3,loop_3 ; 2 ciclo	de maquina		
			ret           ;  2 ciclo de maquina