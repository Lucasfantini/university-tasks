.include "formas.s"
.include "stitch.s"

.ifndef acciones_s
.equ acciones_s, 0

    .equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480

//----------------------- STITCH ROSA -------------------------------------------
// no tiene parametros, solo cambia a stitch de color y le agrega las antenas
// como pre-condicion, debe estar stitch azul ya dibujado anteriormente
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


//-------------------------------------- CORAZONES CAYENDO ----------------------------
//como los corazones dependen de x15 y x16, los utilizo en esta funcion para usarla por cada corazon de la lluvia, de
//forma tal que no modifique la posicion de otros corazones a su misma posicion, lo que formaria una linea de corazones
corazon_cayendo_vel1:
    sub sp, sp, #40 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #32]
	stur x6, [sp, #24]
	stur x5, [sp, #16]
    stur x16, [sp, #8]
    stur x15, [sp]

    add x15, x15, x19

    bl corazon


    ldur lr, [sp, #32]
	ldur x6, [sp, #24]
	ldur x5, [sp, #16]
    ldur x16, [sp, #8]
    ldur x15, [sp]
	add sp, sp, #40

    br lr



//-- diferente velocidad para tener mas variedad (hacer una 3er vel si parece necesario para que quede mejor)
corazon_cayendo_vel2:
    sub sp, sp, #40 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #32]
	stur x6, [sp, #24]
	stur x5, [sp, #16]
    stur x16, [sp, #8]
    stur x15, [sp]

    add x15, x15, x17

    bl corazon


    ldur lr, [sp, #32]
	ldur x6, [sp, #24]
	ldur x5, [sp, #16]
    ldur x16, [sp, #8]
    ldur x15, [sp]
	add sp, sp, #40

    br lr


lluvia_corazones:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

    bl dibujar_fondo

    mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

	bl stitch_rosa

//--

    mov x15, -70
    mov x16, 0

    bl corazon_cayendo_vel2

    //--

    mov x15, -65
    mov x16, 550

    bl corazon_cayendo_vel2

    //--

    mov x15, -85
    mov x16, 65

    bl corazon_cayendo_vel2

    //--

    mov x15, -220
    mov x16, 25

    bl corazon_cayendo_vel1

    //--

    mov x15, -75
    mov x16, 185

    bl corazon_cayendo_vel2

    //--

    mov x15, -100
    mov x16, 215

    bl corazon_cayendo_vel2

    //--

    mov x15, -260
    mov x16, 240

    bl corazon_cayendo_vel1

    //--

    mov x15, -85
    mov x16, 300

    bl corazon_cayendo_vel2

    //--

    mov x15, -120
    mov x16, 335

    bl corazon_cayendo_vel1

    //--

    mov x15, -105
    mov x16, 410

    bl corazon_cayendo_vel2

    //--

    mov x15, -150
    mov x16, 0

    bl corazon_cayendo_vel1

    //--

    mov x15, -135
    mov x16, 125

    bl corazon_cayendo_vel1

    //--

    mov x15, -110
    mov x16, 465

    bl corazon_cayendo_vel1

    //--

    mov x15, -140
    mov x16, 275

    bl corazon_cayendo_vel1

    //--

    mov x15, -120
    mov x16, 300

    bl corazon_cayendo_vel1

    //--

    mov x15, -220
    mov x16, 355

    bl corazon_cayendo_vel1

    //--

    mov x15, -180
    mov x16, 375

    bl corazon_cayendo_vel1

    //--

    mov x15, -70
    mov x16, 110

    bl corazon_cayendo_vel1

    add x19, x19, 15
    add x17, x17, 11

//--

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

    br lr



//-------------------------------------- SANDIAS CAYENDO ----------------------------
//mismo caso que con los corazones, ya que estan programados para funcionar de la misma forma
sandia_cayendo_vel1:
    sub sp, sp, #40 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #32]
	stur x6, [sp, #24]
	stur x5, [sp, #16]
    stur x16, [sp, #8]
    stur x15, [sp]

    add x15, x15, x19

    bl sandia


    ldur lr, [sp, #32]
	ldur x6, [sp, #24]
	ldur x5, [sp, #16]
    ldur x16, [sp, #8]
    ldur x15, [sp]
	add sp, sp, #40

    br lr



//-- diferente velocidad para tener mas variedad (hacer una 3er vel si parece necesario para que quede mejor)
sandia_cayendo_vel2:
    sub sp, sp, #40 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #32]
	stur x6, [sp, #24]
	stur x5, [sp, #16]
    stur x16, [sp, #8]
    stur x15, [sp]

    add x15, x15, x17

    bl sandia


    ldur lr, [sp, #32]
	ldur x6, [sp, #24]
	ldur x5, [sp, #16]
    ldur x16, [sp, #8]
    ldur x15, [sp]
	add sp, sp, #40

    br lr


lluvia_sandias:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

    bl dibujar_fondo

    mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

    bl sandia_pixelada

//--

    mov x15, -70
    mov x16, 10

    bl sandia_cayendo_vel2

    //--

    mov x15, -65
    mov x16, 550

    bl sandia_cayendo_vel2

    //--

    mov x15, -85
    mov x16, 65

    bl sandia_cayendo_vel2

    //--

    mov x15, -220
    mov x16, 25

    bl sandia_cayendo_vel1

    //--

    mov x15, -75
    mov x16, 185

    bl sandia_cayendo_vel2

    //--

    mov x15, -100
    mov x16, 215

    bl sandia_cayendo_vel2

    //--

    mov x15, -260
    mov x16, 240

    bl sandia_cayendo_vel1

    //--

    mov x15, -85
    mov x16, 300

    bl sandia_cayendo_vel2

    //--

    mov x15, -120
    mov x16, 335

    bl sandia_cayendo_vel1

    //--

    mov x15, -105
    mov x16, 410

    bl sandia_cayendo_vel2

    //--

    mov x15, -150
    mov x16, 0

    bl sandia_cayendo_vel1

    //--

    mov x15, -135
    mov x16, 125

    bl sandia_cayendo_vel1

    //--

    mov x15, -110
    mov x16, 465

    bl sandia_cayendo_vel1

    //--

    mov x15, -140
    mov x16, 275

    bl sandia_cayendo_vel1

    //--

    mov x15, -120
    mov x16, 300

    bl sandia_cayendo_vel1

    //--

    mov x15, -220
    mov x16, 355

    bl sandia_cayendo_vel1

    //--

    mov x15, -180
    mov x16, 375

    bl sandia_cayendo_vel1

    //--

    mov x15, -70
    mov x16, 110

    bl sandia_cayendo_vel1

    add x19, x19, 15
    add x17, x17, 11

//--

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

    br lr



//----------------------- ENVIAR CORAZON ------------------------------

enviar_corazon:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

    mov x15, 300            // inicio del corazon
    mov x16, 300
    loop_enviar:

    bl dibujar_fondo

    mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

    bl corazon

//-- cuadrado para tapar el corazon cuando sale por el lado izq

    mov x5, #305
	mov x6, #0

	bl establecer_coordenadas

	movz x21, 61			  // largo
	movz x22, 75			  // ancho 
	
    movz x23, 0xFF, lsl 16
	movk x23, 0xEBCD, lsl 00	// esto es el color de fondo (para tapar lo que sale del corazon por la izq)

	bl rectangulo 			  // llamo a la funcion	

    add x16, x16, 5

    movz x27, 0x5FF, lsl 16			//-- delay para poder ver el corazones (por la velocidad de la computadora)
	bl delay

    cmp x16, 635
    b.ne loop_enviar

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

    br lr


//-------------------------------- RECIBIR CORAZON ------------------------------
recibir_corazon:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

    mov x15, 299            // inicio del corazon
    mov x16, 555
    loop_recibir:

    bl dibujar_fondo

    mov x1, 1				//	si x1 == 0  -> no pinta el ojo der
	mov x2, 1				//	si x2 == 0	-> no pinta el ojo izq
	mov x3, 1				//	si x3 == 0	-> no pinta la boca

	bl dibujar_stitch
	bl dibujar_ohana

    bl stitch_rosa

    bl corazon

//-- cuadrados para tapar el corazon cuando esta por el lado derecha (uso 2 cuadrados para no tapar el circulo del fondo
// lo cual es preferible ya que los circulos son mucho menos eficientes de generar)

//-- primer cuadrado
    mov x5, #309
	mov x6, #565

	bl establecer_coordenadas

	movz x21, 55			  // largo
	movz x22, 75			  // ancho 
	
    movz x23, 0xFF, lsl 16
	movk x23, 0xEBCD, lsl 00	// esto es el color de fondo (para tapar el corazon por la derecha)

	bl rectangulo 			  // llamo a la funcion	

//-- segundo cuadrado
    mov x5, #304
	mov x6, #575

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 65			  // ancho 
	
    movz x23, 0xFF, lsl 16
	movk x23, 0xEBCD, lsl 00	// esto es el color de fondo (para tapar el corazon por la derecha)

	bl rectangulo 			  // llamo a la funcion	

    add x16, x16, 5

    movz x27, 0x5FF, lsl 16			//-- delay para poder ver el corazones (por la velocidad de la computadora)
	bl delay

    cmp x16, 910
    b.ne loop_recibir

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

    br lr



.endif
