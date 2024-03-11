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

//----------------------------- PINTAR FONDO -------------------------------------

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
// usando matematica sé que determina si un punto en un grafico esta dentro de un circulo, es decir:
// ||(x, y)-(xmid, ymid)|| <= r^2   -> osea, sucede si: la dist. entre el punto y el medio es menor al radio al cuadrado
// tal que (x,y) = punto actual,  (xmid, ymid) = punto del centro del circulo, r = radio

// se puede mejorar usando matematica para realizar las operaciones mas rapido, obteniendo lo siguiente:
// (x - xmid)^2 + (y, ymid)^2 = r^2

circulo:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x19, [sp, #8]
    stur x15, [sp]

// preparacion de variables temporales
    mov x0, x20
    add x0, x4, x0               // direccion del cuad contenedor

    mov x12, x5                 // guardo en x12 la coord y del centro
    mov x13, x6                 // guardo en x13 la coord x del centro
    mul x19, x3, x3             // guardo en x19 el radio al cuadrado
    
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

    ldur lr, [sp, #16]
	ldur x19, [sp, #8]
    ldur x15, [sp]
    add sp, sp, #24

br lr


//------------------------------------ TRIANGULO --------------------------------
// parametros: x4 = direccion del cuad cont, x5 = largo de la base, x23 = color
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


sandia:

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]


//-- parte verde

    add x5, x15, 2
    add x6, x16, 0

	bl establecer_coordenadas

	movz x21, 6			  // largo
	movz x22, 60			  // ancho 

	movz x23, 0x22, lsl 16
	movk x23, 0x8B22, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 0
    add x6, x16, 14

	bl establecer_coordenadas

	movz x21, 6			  // largo
	movz x22, 32			  // ancho 

	movz x23, 0x22, lsl 16
	movk x23, 0x8B22, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

//-- verdes mas claros

    add x5, x15, 1
    add x6, x16, 5

	bl establecer_coordenadas

	movz x21, 6			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x90, lsl 16
	movk x23, 0xEE90, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 1
    add x6, x16, 45

	bl establecer_coordenadas

	movz x21, 6			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x90, lsl 16
	movk x23, 0xEE90, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 0
    add x6, x16, 25

	bl establecer_coordenadas

	movz x21, 6			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x90, lsl 16
	movk x23, 0xEE90, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

//-- parte "roja"

    add x5, x15, 8
    add x6, x16, 0

	bl establecer_coordenadas

	movz x5, 30			  // tam de base

	movz x23, 0xDC, lsl 16
	movk x23, 0x143C, lsl 0	  // color

	bl triang_eq_hacia_abajo 			  // llamo a la funcion	

    //--

    add x5, x15, 6
    add x6, x16, 14

	bl establecer_coordenadas

	movz x21, 1			  // largo
	movz x22, 32			  // ancho 

	movz x23, 0xDC, lsl 16
	movk x23, 0x143C, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 7
    add x6, x16, 7

	bl establecer_coordenadas

	movz x21, 1			  // largo
	movz x22, 46			  // ancho 

	movz x23, 0xDC, lsl 16
	movk x23, 0x143C, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

//-- semillas

    add x5, x15, 12
    add x6, x16, 15

	bl establecer_coordenadas

	movz x21, 4			  // largo
	movz x22, 2			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 12
    add x6, x16, 45

	bl establecer_coordenadas

	movz x21, 4			  // largo
	movz x22, 2			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 10
    add x6, x16, 30

	bl establecer_coordenadas

	movz x21, 4			  // largo
	movz x22, 2			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 18
    add x6, x16, 37

	bl establecer_coordenadas

	movz x21, 4			  // largo
	movz x22, 2			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

    //--

    add x5, x15, 18
    add x6, x16, 23

	bl establecer_coordenadas

	movz x21, 4			  // largo
	movz x22, 2			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion	

//--    

    ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

br lr


//----------------------------------- CORAZON --------------------------------------

corazon: 

    sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

    // aca construi el corazon con los add para parametrizar la posicion del corazon entero

//CORAZON NEGRO DELINEADO

    add x5, x15, 5
    add x6, x16, 20

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 20		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 5
    add x6, x16, 55

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 20		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 10
    add x6, x16, 15

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 30		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 10
    add x6, x16, 50

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 30		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 15
    add x6, x16, 10

	bl establecer_coordenadas

	movz x21, 15			// largo
	movz x22, 75		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 30
    add x6, x16, 15

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 65		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 35
    add x6, x16, 20

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 55		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 40
    add x6, x16, 25

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 45		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 45
    add x6, x16, 30

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 35		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 50
    add x6, x16, 35

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 25		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 55
    add x6, x16, 40

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

    add x5, x15, 60
    add x6, x16, 45

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo

//CORAZON ROJO PINTADO  E61A1A

    add x5, x15, 10
    add x6, x16, 20

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 20		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 10
    add x6, x16, 55

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 20		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 15
    add x6, x16, 15

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 30		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 15
    add x6, x16, 50

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 30		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 20
    add x6, x16, 15

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 65		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 30
    add x6, x16, 20

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 55		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 35
    add x6, x16, 25

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 45		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 40
    add x6, x16, 30

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 35		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 45
    add x6, x16, 35

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 25		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 50
    add x6, x16, 40

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 15		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    add x5, x15, 55
    add x6, x16, 45

	bl establecer_coordenadas

	movz x21, 5 			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xE6, lsl 16
	movk x23, 0x1A1A, lsl 0	

	bl rectangulo

    
// BRILLITO BLANCO

    add x5, x15, 15
    add x6, x16, 30

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 5	    	    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	

	bl rectangulo

    add x5, x15, 20
    add x6, x16, 25

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 5	    	    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	

	bl rectangulo

//--

	ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24


br lr


//-------------------------------------- SANDIA PIXELADA --------------------------------

sandia_pixelada:


	sub sp, sp, #24 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #16]
	stur x6, [sp, #8]
	stur x5, [sp]

//--

    mov x5, #335
	mov x6, #150

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 35		        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #320
	mov x6, #165

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 25		        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #315
	mov x6, #170

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 20		        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
	
	mov x5, #310
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 10	        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #305
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #340
	mov x6, #145

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #330
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 10	        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #325
	mov x6, #160

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0xD3, lsl 16
	movk x23, 0x0830, lsl 0	// negrou D30830
    bl rectangulo 			// llamo a la funcion    //--


// segunda parte
    mov x5, #330
	mov x6, #185

	bl establecer_coordenadas
	
	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
    
   	mov x5, #335
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
  	
	mov x5, #340
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #345
	mov x6, #170

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

   	mov x5, #335
	mov x6, #190

	bl establecer_coordenadas
	
	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
    
   	mov x5, #340
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
  	
	mov x5, #345
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

    mov x5, #350
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--


	
   	mov x5, #340
	mov x6, #190

	bl establecer_coordenadas
	
	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
    
   	mov x5, #345
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
  	
	mov x5, #350
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--




	mov x5, #315
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 20			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

	
	mov x5, #310
	mov x6, #190

	bl establecer_coordenadas

	movz x21, 25			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
	
    mov x5, #335
	mov x6, #185

	bl establecer_coordenadas
	
	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
    
   	mov x5, #340
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
  	
	mov x5, #345
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #350
	mov x6, #170

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

	
	mov x5, #310
	mov x6, #195

	bl establecer_coordenadas

	movz x21, 25			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
	

	

	

	mov x5, #350
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 25	        // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// negrou00
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #360
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 25	        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--


	

	

	mov x5, #355
	mov x6, #150

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 30	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--



	mov x5, #310
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 10	        // ancho 

	movz x23, 0xEE, lsl 16
	movk x23, 0x714F, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

    mov x5, #305
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0xEE, lsl 16
	movk x23, 0x714F, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--
	


    mov x5, #305
	mov x6, #190

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #300
	mov x6, #190

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--


	mov x5, #300
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--




    mov x5, #305
	mov x6, #195

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--


	mov x5, #300
	mov x6, #190

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 295E08

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

 
    mov x5, #345
	mov x6, #140

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

    mov x5, #350
	mov x6, #145

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--


    mov x5, #355
	mov x6, #150

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	

 	mov x5, #350
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xF000, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--

    mov x5, #350
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x5E08, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
   




    mov x5, #340
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--



	mov x5, #335
	mov x6, #165

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--



	mov x5, #325
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--


	mov x5, #315
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

//--

	ldur lr, [sp, #16]
	ldur x6, [sp, #8]
	ldur x5, [sp]
	add sp, sp, #24

br lr


.endif
