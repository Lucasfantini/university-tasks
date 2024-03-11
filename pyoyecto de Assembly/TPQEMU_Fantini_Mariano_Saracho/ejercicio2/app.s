.include "formas.s"
.include "stitch.s"
.include "acciones.s"
.include "inputs.s"

	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32

	.equ GPIO_BASE,    0x3f200000
	.equ GPIO_GPFSEL0, 0x00
	.equ GPIO_GPLEV0,  0x34



	.globl main


main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20

	bl dibujar_fondo

//-- stitch inicial

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	movz x27, 0xDFFF, lsl 16			//-- delay para DURACION DE NO PESTAÑEAR
	bl delay

//-- pestañea

	mov x1, 0				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 0				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl ojo_der_cerrado

	bl ojo_izq_cerrado

	movz x27, 0xEFF, lsl 16				//-- delay para duracion del pestañeo
	bl delay

//-- abre ojos

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana


	movz x27, 0x3FF, lsl 16				//-- delay para DURACION DE NO PESTAÑEAR
	bl delay

//-- pestañea

	mov x1, 0				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 0				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl ojo_der_cerrado

	bl ojo_izq_cerrado


	movz x27, 0xEFF, lsl 16				//-- delay para duracion del pestañeo
	bl delay

//-- abre ojos

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana


	movz x27, 0xFFFF, lsl 16			//-- delay para DURACION DE NO PESTAÑEAR
	movk x27, 0xFFFF, lsl 0
	bl delay

//-- pestañea

	mov x1, 0				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 0				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl ojo_der_cerrado

	bl ojo_izq_cerrado


	movz x27, 0xFFF, lsl 16				//-- delay para duracion del pestañeo
	bl delay

//-- abre ojos

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana


	movz x27, 0xFFFF, lsl 16			//-- delay para DURACION DE NO PESTAÑEAR
	bl delay

	movz x27, 0x3FFF, lsl 0			//-- delay para DURACION DE NO PESTAÑEAR
	bl delay

//-- pestañea

	mov x1, 0				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 0				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl ojo_der_cerrado

	bl ojo_izq_cerrado

	movz x27, 0x3FFF, lsl 16			//-- delay para duracion del pestañeo
	bl delay

//-- abre ojos

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	movz x27, 0xFFF, lsl 16	
	bl delay

//-- enviar corazon

	bl enviar_corazon

	movz x27, 0x2FFF, lsl 16	
	bl delay

//-- cambio a Angel

	bl stitch_rosa

	movz x27, 0x3FFF, lsl 16					// esperar un poco para que el envio no sea brusco
	bl delay

//-- recibir corazon

	bl recibir_corazon

	movz x27, 0x7FFF, lsl 16	
	bl delay


//-- lluvia de corazones para angel
	mov x18, 0x37
lluvia_c:

    bl lluvia_corazones

	sub x18, x18, 1

	movz x27, 0x5FF, lsl 16			//-- delay para poder ver los corazones (por la velocidad de la computadora)
	bl delay

cbnz x18, lluvia_c



//-- mantener un rato para que el cambio no sea brusco

	movz x27, 0x5FF, lsl 16			
	bl delay


//-- vuelta a stitch

	bl dibujar_fondo

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	movz x27, 0x4FFF, lsl 16			
	bl delay

//-- guiño de stitch a angel luego de que reciba el corazon

//-- pestañea

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 0				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl ojo_izq_cerrado

	movz x27, 0x3FFF, lsl 16			//-- delay para duracion del guiño
	bl delay

//-- abre los ojos

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	movz x27, 0x3FFF, lsl 16			
	bl delay


//--------------------------------- FINAL DE ANIMACION DE INICIO -----------------------------------



//----------------------------------------- USO DE GPIOs -------------------------------------------
	mov x9, GPIO_BASE

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]


	mov x16, xzr					// posiciones (x,y)	iniciales de la sandia		
	mov x15, xzr

	mov x7, xzr						// toggle del juego empieza desactivado
loopGPIO:
	// Lee el estado de los GPIO 0 - 31 y lo guarda en x10
	ldr w10, [x9, GPIO_GPLEV0]

	
	bl detectar_tecla

	//------------------------------ CONDICION Y FINAL DE JUEGO ---------------------------

	cmp x15, 295
	b.gt and1_win_y
	cmp x15, 260
	b.lt and2_win_y
	cmp x16, 320
	b.gt and1_win_x
	cmp x16, 270
	b.lt and2_win_x

	mov x15, xzr				// reinicio posiciones de inicio de sandia (evita que se repita la win condition)
	mov x16, xzr

	mov x7, xzr					// desactivo el toggle del juego para que el espacio no se pueda usar durante un juego

	movz x27, 0xFFFF, lsl 16
		bl delay

	bl dibujar_fondo

//-- stitch inicial

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl sandia_pixelada

	//----------------------------- LLUVIA DE SANDIA COMO RECOMPENSA! ------------------

	mov x18, 0x37
	mov x19, xzr
	mov x17, xzr
lluvia_s:

    bl lluvia_sandias

	sub x18, x18, 1

	movz x27, 0x5FF, lsl 16			
	bl delay

cbnz x18, lluvia_s



	mov x15, xzr					// reinicio la posicion inicial de juego
	mov x16, xzr

	movz x27, 0xFFF, lsl 16
		bl delay

no_win:

and1_win_y:
and2_win_y:
and1_win_x:
and2_win_x:

		movz x27, 0x3FF, lsl 16
		bl delay

b loopGPIO

	//---------------------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
