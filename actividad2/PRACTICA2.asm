;Escribir un programa con bucles anidados que permita temporizaciones de ½ segundo para encender y apagar un LED del puerto 1. 
;(500ms en alto, 500ms en bajo). La generación de los ciclos de alto y bajo en la señal puede ejecutarse indefinidamente o puede ejecutarse una sola vez.

			org 0000h
inicio:		
			clr P1.0      ; 1 ciclo de maquina
			lcall retardo ; 2 ciclo de maquina
			setb P1.0     ; 1 ciclo de maquina
			lcall retardo ; 2 ciclo de maquina
			sjmp inicio   ; 2 ciclo de maquina
retardo:
			mov R3,#04h   ; 1 ciclo de maquina
loop3:		mov R2,#0ffh  ; 1 ciclo de maquina
loop2:		mov R1,#0ffh  ; 1 ciclo de maquina
loop1:			
			djnz R1,loop1 ; 2 ciclo de maquina
			djnz R2,loop2 ; 2 ciclo de maquina
			djnz R3,loop3 ;	2 ciclo	de maquina		
			ret           ; 2 ciclo de maquina
			end

; se generan 255*255*4 numero de instrucciones, sabemos que cada 
; decremento(djnz) cosume 2 ciclos de maquina por lo que queda
; (255*255*4)*2 = 520 ms aproximadamente.
