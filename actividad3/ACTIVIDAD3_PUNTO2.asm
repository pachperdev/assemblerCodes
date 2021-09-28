;Escribir en programa en lenguaje Assembler para realizar temporizaciones más largas, como 10 segundos. 
;(Se espera obtener una onda cuadrada de 10segundos encendido y 10 segundos apagado)

				ORG 0000h
					MOV P1,#00000000H
inicio:
					MOV R0, #64H
Cambio: 			

					MOV TMOD,#00000001H ;Paso 1
					MOV TH0,#3cH ;Paso 2
					MOV TL0,#0B0H ;Paso 2
					SETB TR0 ;Paso 3
Delay: 			JNB TF0,Delay ;Paso 4
					CLR TR0 ;Paso 5
					CLR TF0 ;Paso 6

					MOV TH0,#3cH ;Paso 2
					MOV TL0,#0B0H ;Paso 2
					SETB TR0 ;Paso 3
					Delay2: JNB TF0,Delay2 ;Paso 4
					CLR TR0 ;Paso 5
					CLR TF0 ;Paso 6
					DJNZ R0, Cambio
					CPL P1.0
					ljmp inicio
				
