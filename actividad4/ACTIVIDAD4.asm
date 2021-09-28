;Escriba un programa que use uno de los TIMERS del 8051 para conteo de eventos externos (Hasta 256 eventos) 
;y que la cuenta se refleje en el puerto P1 del sistema de desarrollo. 
;Una vez se alcancen los 256 eventos el programa se detendrá.
;El evento a contar es un tren de pulsos generado por el mismo programa y que direccionará al pin T0 o T1, 
;dependiendo del TIMER que se use para el conteo. Se puede usar el otro TIMER o buques para generar este tren de pulsos.

			org 0000h
			mov tmod, #01010000b
			setb tr1
contador:	
			clr p3.5
			mov a, tl1
			mov p1,a
			setb p3.5
			cjne a,#0,contador
			clr tr1
			mov tl1,#0
			end 