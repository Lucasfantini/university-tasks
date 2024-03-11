// "libreria" con las formas que se utilizaran

// el proposito de esta libreria es poder hacer formas de distintos tamaños, colores, grosores(para lineas), etc.
// de forma modularizada, asi cuando queramos dibujar algo simplemente usamos las formas definidas aca de la forma mas
// conveniente, por ej., un sol seria un cuadrado amarillo un poco oscuro, un circulo amarillo mas claro encima, y 4
// triangulos del mismo color que el cuadrado para hacer las otras puntas.

// quizas se pueda hacer una funcion donde se le permita establecer un angulo al cuadrado, utilizando 2 triang esc iguales
// en angulos opuestos entre si

.ifndef formas_s
.equ formas_s, 0

    .equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480

dibujar_fondo:
	sub sp, sp, #16 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #8]
	stur x7, [sp]

//POSICIONO EL FRAMEBUFFER AL INICIO

	mov x0, x20


//COLOR FONDO
	movz x23, 0xFF, lsl 16
	movk x23, 0xEBCD, lsl 00	// esto es el color de fondo

    	mov x2, SCREEN_HEIGH         // Y Size
    loop1:
    	mov x1, SCREEN_WIDTH         // X Size
    loop0:
	    stur w23,[x0]  // Colorear el pixel N
	    add x0,x0,4    // Siguiente pixel
	    sub x1,x1,1    // Decrementar contador X
	    cbnz x1,loop0  // Si no terminó la fila, salto
    	sub x2,x2,1    // Decrementar contador Y
    	cbnz x2,loop1  // Si no es la última fila, salto


//PRIMERA LINEA

	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#60				// coord y central del circulo
	mov x6,	#90					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo


	//---

	// posicion del circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#60 				// coord y central del circulo
	mov x6,	#250					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

	//---

	// posicion del circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#60 				// coord y central del circulo
	mov x6,	#400					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

	//---

	// posicion del circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#60 				// coord y central del circulo
	mov x6,	#555					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo
	
//SEGUNDA LINEA
	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#170				// coord y central del circulo
	mov x6,	#10					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#170				// coord y central del circulo
	mov x6,	#640					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

//TERCER LINEA
	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#280				// coord y central del circulo
	mov x6,	#90					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

	//---

	// posicion del circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#280 				// coord y central del circulo
	mov x6,	#555					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo


//CUARTA LINEA
	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#400				// coord y central del circulo
	mov x6,	#10					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo
	
	
	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#400				// coord y central del circulo
	mov x6,	#160					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo


	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#400				// coord y central del circulo
	mov x6,	#480					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

	// posicion del cuadrado que contiene al circulo (x4)
	mov x5, #0				// coord y para conseguir x4 
	mov x6, #0				// coord x para conseguir x4 (en este caso para saber donde poner el cuad. cont)

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "circulo"

	// radio del circulo
	mov x3, #30					// radio del circulo que quiero pintar	

	// (xmid,ymid = centro del circulo)
	mov x5,	#400				// coord y central del circulo
	mov x6,	#640					// coord x central del circulo

	// color
	movz x23, 0xAD, lsl 16
	movk x23, 0xFF2F, lsl 0		// color

	// pinto el circulo con las caracteristicas anteriores
	bl circulo

//--

    ldur lr, [sp, #8] // recuperar la direccion de retorno de la llamada en el stack
    ldur x7, [sp]
	add sp, sp, #16

br lr

//----------------------------- COORDENADAS EN MATRIZ ----------------------------
// parametros:  x5 = coordenada Y, x6 = coordenada X
// devuelve: x4 = coordenada en la matriz
establecer_coordenadas:
    sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

    movz x22, #640, lsl 0                       // x22 = 640
	mov x23, x5                  // uso x5       // x23 = Y
	mul x21, x23, x22                           // x21 =  Y * 640
	add x21, x21, x6            // uso x6       // x21 = (Y * 640) + X
	movz x22, #4                                // x22 = 4
	mul x21, x21, x22                           // x21 = 4 * ((Y * 640) + X)
	add x4, x20, x21                            // x4 = x20 + 4 * ((Y * 640) + X)  -> x20 es la posicion de inicio

    ldur lr, [sp] // recuperar la direccion de retorno de la llamada en el stack
    add sp, sp, #8

    br lr

//----------------------------- RECTANGULO --------------------------------------
// parametros:  x21 = largo, x22 = ancho, x23 = color, x4 = posicion dada
// no devuelve nada (solo pinta el rectangulo, tambien es util para lineas y cuadrados, modificando ancho y largo a gusto)
rectangulo:
        sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
        stur lr, [sp, #16]
        stur x1, [sp, #8]
        stur x2, [sp]

        add x0, x4, 0

        mov x2, x21             // ej. x21 = 10         -> 10 pixeles de largo
    largo_rec:
        mov x1, x22             // ej. x22 = 10         -> 10 pixeles de ancho
    ancho_rec:
        stur w23, [x0]
        add x0, x0, 4
        sub x1, x1, 1
        cbnz x1, ancho_rec
        sub x2, x2, 1
        add x4, x4, 2560
        mov x0, x4
        cbnz x2, largo_rec

        ldur lr, [sp, #16]
        ldur x1, [sp, #8]
        ldur x2, [sp] // recuperar la direccion de retorno de la llamada en el stack
        add sp, sp, #24
    br lr

//------------------------   CIRCULOS  ---------------------------------------
// parametros:  x3 = radio, x5 = coord y del centro, x6 coord x del centro, x23 = color, ??x4 = dir de cuadrado contenedor??
// no devuelve nada (solo pinta el circulo)

// idea de funcionamiento:
// uso la formula matematica que determina si un punto en un grafico esta dentro de un circulo, es decir:
// ||(x, y)-(xmid, ymid)|| <= r^2   -> osea, sucede si: la dist. entre el punto y el medio es menor al radio al cuadrado
// tal que (x,y) = punto actual,  (xmid, ymid) = punto del centro del circulo, r = radio

// se puede mejorar matematicamente para realizar las operaciones mas rapido, obteniendo lo siguiente:
// (x - xmid)^2 + (y, ymid)^2 = r^2

circulo:

    sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

// preparacion de variables temporales
    add x0, x4, 0               // direccion del cuad contenedor

    mov x12, x5                 // guardo en x12 la coord y del centro
    mov x13, x6                 // guardo en x13 la coord x del centro
    mul x19, x3, x3             // guardo en x16 el radio al cuadrado
    
// funcion para pintar el circulo
    mov x2, 0                   // 1er pixel y del cuadrado contenedor
recorrer_largo_cuad:
    mov x1, 0                   // 1er pixel x del cuadrado contenedor
recorrer_ancho_cuad:
    sub x14, x1, x13            // x14 = x - xmid
    mul x14, x14, x14           // x14 = x14^2 = (x - xmid)^2
    sub x15, x2, x12            // x15 = y - ymid
    mul x15, x15, x15           // x15 = x15^2 = (y - ymid)^2
    add x21, x14, x15           // x21 = (x - xmid)^2 + (y - ymid)^2
    cmp x21, x19
    b.gt no_pintar_circ         // comparo: (x - xmid)^2 + (y - ymid)^2 >= r^2  // true -> pinto el pixel
        stur w23, [x0]                                                          // false -> no pinto y continuo
    no_pintar_circ:
    
    add x1, x1, 1               // aumento la cant. de pixeles en x ya considerados
    add x0, x0, 4               // avanzo al sig. pixel
    cmp x1, x19
    b.ne recorrer_ancho_cuad    // comparo: si la cant de pix. es distinta de r^2 (ancho del cuad. cont.) // true -> repito
                                                                                                          // false -> sigo
    add x2, x2, 1               // aumento la cant. de pixeles en y ya considerados
    add x4, x4, 2560
    mov x0, x4                  // avanzo al 1er pixel de la siguiente linea
    cmp x2, x19
    b.ne recorrer_largo_cuad    // comparo: si la cant de pix. es distinta de r^2 (largo del cuad. cont.) // true -> repito
                                                                                                          // false -> sigo

    ldur lr, [sp] // recuperar la direccion de retorno de la llamada en el stack
    add sp, sp, #8

br lr


//------------------------------------ TRIANGULO --------------------------------
// parametros: x4 = direccion del cuad cont, x5 = largo de los lados, x23 = color
triang_eq_hacia_abajo:

    sub sp, sp, #8 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp]

// preparacion de registros temporales
    add x0, x4, 0               // direccion del cuad contenedor

    add x12, x5, x5

    mov x2, x5             // ej. x5 = 10          -> 10 pixeles de largo
triang_y:
    mov x1, x12             // ej. x5 = 10          -> 10 pixeles de ancho
triang_x:
    stur w23, [x0]
    add x0, x0, 4
    sub x1, x1, 1
    cbnz x1, triang_x
    sub x12, x12, 2
    sub x2, x2, 1
    add x4, x4, 2564
    mov x0, x4
    cbnz x2, triang_y

    ldur lr, [sp] // recuperar la direccion de retorno de la llamada en el stack
    add sp, sp, #8

br lr


.endif
