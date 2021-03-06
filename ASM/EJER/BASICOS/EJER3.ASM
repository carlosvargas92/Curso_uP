;***************************************************************************
; Nombre del programa:   EJER3.ASM
; Objetivo           :   Desplegar una cadena
;***************************************************************************
; COMANDO DE ENSAMBLE    : MASM EJER3;
; COMANDO DE ENLACE      : LINK EJER3;
; COMANDO DE EJECUCION   : EJER3 [Enter]
;***************************************************************************
;
; Define el modelo de memoria
;
     .MODEL    TINY          		; Modelo de memoria
     .CODE                    		; Area de c�digo

Empieza:                      		; Etiqueta de comienzo de programa

     mov  Ax, @Data           		; Inicializa DS con la
     mov  Ds, Ax              		; direcci�n de @Data
     mov  Dx, Offset Mensaje  		; Direcci�n de Mensaje
     mov  Ah, 9               		; en Dx para poder desplegarlo
     Int  21h                 		; a trav�s de la Int 21 de MS-DOS.
     mov  ax,4c00h            		; Regresa a MS-DOS por medio de la
     int  21h                 		; funci�n 4c.
	 
    .DATA                     		; Segmento de datos
     Mensaje DB 'Hola, que tal !.$' ; Cadena a desplegar

    .STACK                   		; Se necesita una PILA.
     END  Empieza             		; Fin del programa