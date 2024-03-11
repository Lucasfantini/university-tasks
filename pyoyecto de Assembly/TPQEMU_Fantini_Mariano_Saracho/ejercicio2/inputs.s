.include "formas.s"
.include "acciones.s"

.ifndef modul_s
.equ modul_s, 0

    .equ ID_w,			0b00000010
	.equ ID_a,			0b00000100
	.equ ID_s,			0b00001000
	.equ ID_d,			0b00010000
	.equ ID_espacio,	0b00100000


detectar_tecla:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]


	//------------------- checkea si se activo el juego con espacio -----------------------
	cbz x7, no_game


	//------------------- checkea si se presiono la tecla W -------------------------------
	and w11, w10, ID_w
    cbz w11, no_w

	bl dibujar_fondo

//

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 0				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl boca_con_lengua

	sub x15, x15, 4

	bl establecer_coordenadas

	bl sandia 			  // llamo a la funcion	



	no_w:



	//------------------- checkea si se presiono la tecla A -------------------------------
	and w11, w10, ID_a
	cbz w11, no_presiona_a

	bl dibujar_fondo

//

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 0				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl boca_con_lengua

	sub x16, x16, 4

	bl establecer_coordenadas

	bl sandia 			  // llamo a la funcion	

	no_presiona_a:



	//------------------- checkea si se presiono la tecla S -------------------------------
	and w11, w10, ID_s
	cbz w11, no_presiona_s

	bl dibujar_fondo

//

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 0				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl boca_con_lengua

	add x15, x15, 4

	bl establecer_coordenadas

	bl sandia 			  // llamo a la funcion	


	no_presiona_s:



	//------------------- checkea si se presiono la tecla D -------------------------------
	and w11, w10, ID_d
	cbz w11, no_presiona_d

	bl dibujar_fondo

//

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 0				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl boca_con_lengua

mov x0, x20

	add x16, x16, 4

	bl establecer_coordenadas

	bl sandia 			  // llamo a la funcion	

	no_presiona_d:



no_game:


	cbnz x7, game_on

	//------------------- checkea si se presiono la tecla ESPACIO -------------------------------
	and w11, w10, ID_espacio
	cbz w11, no_presiona_espacio

	bl dibujar_fondo

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 0				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl boca_con_lengua

	bl sandia

	mov x7, 1								// permite que se pueda volvera iniciar el juego luego de terminar el activo

	no_presiona_espacio:

game_on:

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

    br lr

.endif
