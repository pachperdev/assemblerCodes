;Efectuar un programa que permita temporizaciones de 100 milisegundos para encender y apagar un LED del puerto 1 
;sin utilizar temporizaciones por software. Utilice los diversos modos de operación de los TC. 
;(Se espera obtener una onda cuadrada de 100ms en alto y 100ms en bajo.)


ORG 0000h
				MOV P1,#00000000H
inicio:
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
Delay2:         JNB TF0,Delay2 ;Paso 4
				CLR TR0 ;Paso 5
				CLR TF0 ;Paso 6
				CPL P1.0
				ljmp inicio
	
