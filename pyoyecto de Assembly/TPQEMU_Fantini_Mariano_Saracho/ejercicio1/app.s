.include "formas.s"
.include "stitch.s"
.include "acciones.s"


	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ BITS_PER_PIXEL, 32

	.equ GPIO_BASE,    0x3f200000
	.equ GPIO_GPFSEL0, 0x00
	.equ GPIO_GPLEV0,  0x34

	.equ ID_w,			0b00000010

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20

bl dibujar_fondo



	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

bl dibujar_stitch



bl dibujar_ohana

//------------------------------ USO DE GPIOs ----------------------------------------
	mov x9, GPIO_BASE

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]

	mov x7, xzr
loopGPIO:

	// Lee el estado de los GPIO 0 - 31 y lo guarda en x10
	ldr w10, [x9, GPIO_GPLEV0]

	// checkea si se presiono la tecla W
	and w11, w10, ID_w
	cbz w11, no_w

	cbnz x7, pinto_azul					// si x7 = 0, significa que actualmente se muestra a Angel en pantalla

	add x7, x7, 1						// pinto a Angel si Stitch esta actualmente en pantalla

	bl stitch_rosa
	b no_w

pinto_azul:								// pinto a Stitch si Angel esta actualmente en pantalla
	mov x7, xzr

	bl stitch_azul

	no_w:


	// delay (porque lee muy rapido y puede generar problemas)
	movz x27, 0x3FF, lsl 16
	bl delay

b loopGPIO

	//---------------------------------------------------------------
	// Infinite Loop

InfLoop:
	b InfLoop
