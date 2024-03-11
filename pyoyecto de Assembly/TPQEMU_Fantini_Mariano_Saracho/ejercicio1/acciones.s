.include "formas.s"
.include "stitch.s"



.ifndef acciones_s
.equ acciones_s, 0

    .equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480

//----------------------- STITCH ROSA ----------------------------------------
// no tiene parametros, solo cambia a stitch de color
stitch_rosa:
	sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

	//--
		movz x12, 0xFF, lsl 16
		movk x12, 0x69B4, lsl 00			// color a reemplazar

		movz x23, 0xFE, lsl 16
		movk x23, 0xB5C0, lsl 00			// color nvo
	
		bl cambiar_color

	//--
		movz x12, 0x1E, lsl 16
		movk x12, 0x90FF, lsl 00			// color a reemplazar

		movz x23, 0xFF, lsl 16
		movk x23, 0x69B4, lsl 00			// color nvo
	
		bl cambiar_color

	//--
		movz x12, 0x00, lsl 16
		movk x12, 0xBFFF, lsl 0	 			// color a reemplazar

		movz x23, 0xFF, lsl 16
		movk x23, 0xB6C1, lsl 00			// color nvo
	
		bl cambiar_color

	//--
		movz x12, 0x29, lsl 16
		movk x12, 0x446C, lsl 00			// color a reemplazar

		movz x23, 0x48, lsl 16
		movk x23, 0x3D8B, lsl 00			// color nvo
	
		bl cambiar_color

	//--
		movz x12, 0x16, lsl 16
		movk x12, 0x243A, lsl 00			// color a reemplazar

		movz x23, 0x37, lsl 16
		movk x23, 0x2C7A, lsl 00			// color nvo

		bl cambiar_color


		bl dibujar_stitchrosa

		movz x27, 0xFFF, lsl 16
		bl delay

		ldur lr, [sp]
   		add sp, sp, #8

	br lr


// si el stitch actual es rosa, volver al azul
stitch_azul:
	sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

	bl dibujar_fondo

	mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch

	bl dibujar_ohana

		movz x27, 0xFFF, lsl 16
		bl delay

		ldur lr, [sp]
    	add sp, sp, #8

br lr



//--------------------------- CAMBIAR COLORES -----------------------------------
// parametros: x23 = color nvo, x12 = color a reemplazar
cambiar_color:
    sub sp, sp, #16 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #8]
	stur x20, [sp]

	mov x0, x20

	mov x2, SCREEN_HEIGH         // Y Size
loop_analisis_pantalla0:
	mov x1, SCREEN_WIDTH         // X Size
loop_analisis_pantalla1:
	ldur x13, [x0]

	cmp w13, w12
	b.ne skip_cambiar_color
	stur w23,[x0]  // Colorear el pixel N
	skip_cambiar_color:
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop_analisis_pantalla1  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop_analisis_pantalla0  // Si no es la última fila, salto

    ldur lr, [sp, #8]
    ldur x20, [sp]
    add sp, sp, #16

    br lr

//------------------------------------ DELAY ----------------------------------
// parametros: x27 = tpo de delay 
// crea delay en el programa
delay:
	sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

	mov x13, x27

delay_loop:
	sub x13, x13, 1
	cbnz x13, delay_loop

	mov x13, x27

	ldur lr, [sp] // recuperar la direccion de retorno de la llamada en el stack
    add sp, sp, #8
br lr

.endif
