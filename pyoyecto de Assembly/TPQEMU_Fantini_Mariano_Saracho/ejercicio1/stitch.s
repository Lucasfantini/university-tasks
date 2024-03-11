.include "formas.s"

.ifndef stitch_s
.equ stitch_s, 0

// x1 == 0 -> no pinta ojo der
// x2 == 0 -> no pinta ojo izq
// x3 == 0 -> no pinta boca

dibujar_stitch:

	sub sp, sp, #16 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #8]
	stur x19, [sp]


	mov x19, x1
	mov x24, x2
	mov x25, x3

//---------------------STITCH NEGRO---------

	mov x5, #160
	mov x6, #260

	bl establecer_coordenadas

	movz x21, 205			  // largo
	movz x22, 120			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion	

	mov x5, #325
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 160			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #370
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 40			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #370
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #380
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 25			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #340
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 30			  // largo
	movz x22, 175			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #365
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 320 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #370
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			  	  // largo
	movz x22, 50 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #370
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 40 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #380
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 35 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #355
	mov x6, #410

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #315
	mov x6, #380

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 15 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #330
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #320
	mov x6, #395

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #310
	mov x6, #380

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 10 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #305
	mov x6, #380

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #315
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 10 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #310
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #320
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #205
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 70 			  // largo
	movz x22, 200 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #275
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 20 			  // largo
	movz x22, 165 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #275
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 185 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #295
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 145 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #285
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 175 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #275
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #185
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 20 			  // largo
	movz x22, 175 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #170
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 15 			  // largo
	movz x22, 150 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #200
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 190 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #195
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 185 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #180
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 160 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #175
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #165
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 135 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #160
	mov x6, #380

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #180
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #155
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 110 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #150
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 90 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #145
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 60 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #140
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 35 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #135
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 25 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion
	
	mov x5, #130
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #125
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #125
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #130
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//-------OREJA DERECHA----------

	mov x5, #210
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 60 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #190
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 70 			  // largo
	movz x22, 30 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #80
	mov x6, #435

	bl establecer_coordenadas

	movz x21, 175 			  // largo
	movz x22, 25 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #150
	mov x6, #430

	bl establecer_coordenadas

	movz x21, 40 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #75
	mov x6, #440

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 15 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #95
	mov x6, #460

	bl establecer_coordenadas

	movz x21, 135 			  // largo
	movz x22, 15 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #90
	mov x6, #460

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 10 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #85
	mov x6, #460

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #230
	mov x6, #460

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #110
	mov x6, #475

	bl establecer_coordenadas

	movz x21, 110 			  // largo
	movz x22, 10 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #220
	mov x6, #475

	bl establecer_coordenadas

	movz x21, 5 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #100
	mov x6, #475

	bl establecer_coordenadas

	movz x21, 10 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #125
	mov x6, #485

	bl establecer_coordenadas

	movz x21, 85 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #130
	mov x6, #490

	bl establecer_coordenadas

	movz x21, 60 			  // largo
	movz x22, 5 			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//-- ayuda a cande

	mov x5, #70					// coord y
	mov x6, #190				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 185					// largo
	movz x22, 15					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	//--

	bl rectangulo

	mov x5, #75					// coord y
	mov x6, #180				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 170					// largo
	movz x22, 10					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #85				// coord y
	mov x6, #170				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 150					// largo
	movz x22, 10					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #80				// coord y
	mov x6, #175				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 160					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #245					// coord y
	mov x6, #185				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 5					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #90				// coord y
	mov x6, #165				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 10					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #110				// coord y
	mov x6, #165				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 120					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #115				// coord y
	mov x6, #155				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 95					// largo
	movz x22, 10					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #210				// coord y
	mov x6, #160				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 10					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #120				// coord y
	mov x6, #150				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 80					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #135				// coord y
	mov x6, #145				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 45					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #80				// coord y
	mov x6, #205				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 30					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #175				// coord y
	mov x6, #205				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 90					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #255				// coord y
	mov x6, #195				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 5					// largo
	movz x22, 10					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #185				// coord y
	mov x6, #210				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 80					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

	//--

	mov x5, #195				// coord y
	mov x6, #215				// coord x

	bl establecer_coordenadas			// devuelve la coord x4 que uso en "rectangulo"

	movz x21, 75					// largo
	movz x22, 5					// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0		// negrou

	bl rectangulo

//------------------OREJA ROSA DERECHA------

	mov x5, #240
	mov x6, #435

	bl establecer_coordenadas

	movz x21, 15			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #80
	mov x6, #440

	bl establecer_coordenadas

	movz x21, 175			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #80
	mov x6, #445

	bl establecer_coordenadas

	movz x21, 170			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #80
	mov x6, #450

	bl establecer_coordenadas

	movz x21, 150			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #85
	mov x6, #455

	bl establecer_coordenadas

	movz x21, 140			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #90
	mov x6, #460

	bl establecer_coordenadas

	movz x21, 135			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #95
	mov x6, #465

	bl establecer_coordenadas

	movz x21, 130			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #105
	mov x6, #470

	bl establecer_coordenadas

	movz x21, 120			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #115
	mov x6, #475

	bl establecer_coordenadas

	movz x21, 100			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #125
	mov x6, #480

	bl establecer_coordenadas

	movz x21, 80			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #140
	mov x6, #485

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #245
	mov x6, #450

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

//-------------------OREJA ROSA IZQ---------

	mov x5, #80
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 30			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #75
	mov x6, #195

	bl establecer_coordenadas

	movz x21, 70			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #75
	mov x6, #190

	bl establecer_coordenadas

	movz x21, 175			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #80
	mov x6, #185

	bl establecer_coordenadas

	movz x21, 165			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #80
	mov x6, #180

	bl establecer_coordenadas

	movz x21, 160			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #85
	mov x6, #175

	bl establecer_coordenadas

	movz x21, 150			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #90
	mov x6, #170

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #115
	mov x6, #170

	bl establecer_coordenadas

	movz x21, 115			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #120
	mov x6, #165

	bl establecer_coordenadas

	movz x21, 100			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #120
	mov x6, #160

	bl establecer_coordenadas

	movz x21, 90			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #125
	mov x6, #155

	bl establecer_coordenadas

	movz x21, 70			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #140
	mov x6, #150

	bl establecer_coordenadas

	movz x21, 35			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #235
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 20			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #220
	mov x6, #195

	bl establecer_coordenadas

	movz x21, 35			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #250
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

//-------------------CUERPO AZUL OSCURO-----

	mov x5, #350
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 15			  // largo
	movz x22, 70			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #365
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #375
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 25			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #345
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 65			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #340
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 60			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #335
	mov x6, #260

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 40			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #330
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #325
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #320
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #315
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #310
	mov x6, #265

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--   brazo derecho

	mov x5, #305
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #310
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 15			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #315
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 25			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #320
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #325
	mov x6, #375

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #330
	mov x6, #385

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #330
	mov x6, #355

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #335
	mov x6, #390

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #335
	mov x6, #345

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #340
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 60			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #345
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 70			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #350
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 15			  // largo
	movz x22, 75			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #365
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 40			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #370
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion
	

//-------------------CUERPO AZUL CLARO------

	mov x5, #305
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 90			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #310
	mov x6, #280

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #310
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #315
	mov x6, #320

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 40			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #320
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #320
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #320
	mov x6, #285

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 25			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #325
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #325
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #330
	mov x6, #320

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #330
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 15			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #335
	mov x6, #305

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #340
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #345
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 20			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  // color

	bl rectangulo 			  // llamo a la funcion

//-----------------CABEZA AZUL OSCURO-------
	mov x5, #195
	mov x6, #430

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #215
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 35			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #220
	mov x6, #415

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #210
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 60			  // largo
	movz x22, 190			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #205
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 5			      // largo
	movz x22, 185			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #200
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 180			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #195
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 165			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #190
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 155			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #185
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #185
	mov x6, #375

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #185
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 95			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #180
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 105			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #175
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 145			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #170
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 135			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #165
	mov x6, #265

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 115			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #160
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 105			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #155
	mov x6, #280

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 85			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #150
	mov x6, #295

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 55			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #145
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 15			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #145
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #140
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #180
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #180
	mov x6, #395

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #210
	mov x6, #215

	bl establecer_coordenadas

	movz x21, 35			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #195
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #185
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #175
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 40			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #270
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 185			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #275
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 180			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	mov x5, #280
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 170			  // ancho 

	movz x23, 0x1E, lsl 16
	movk x23, 0x90FF, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

//-----------------CABEZA AZUL CLARO--------
	mov x5, #215
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 30			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo 	

	mov x5, #205
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 50			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo	

	mov x5, #200
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 65			  // largo
	movz x22, 15			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo	  

	mov x5, #195
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #265
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 35			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #190
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #185
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 80			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #195
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 70			  // largo
	movz x22, 10			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #200
	mov x6, #280

	bl establecer_coordenadas

	movz x21, 60			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #210
	mov x6, #355

	bl establecer_coordenadas

	movz x21, 45			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #200
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 65			  // largo
	movz x22, 5			      // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #195
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 75			  // largo
	movz x22, 10			      // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #185
	mov x6, #375

	bl establecer_coordenadas

	movz x21, 85			  // largo
	movz x22, 20			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #195
	mov x6, #395

	bl establecer_coordenadas

	movz x21, 70			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #200
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 60			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #205
	mov x6, #405

	bl establecer_coordenadas

	movz x21, 50			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #215
	mov x6, #410

	bl establecer_coordenadas

	movz x21, 30			  // largo
	movz x22, 5			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #190
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 30			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #280
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 10			  // largo
	movz x22, 165			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #290
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 145			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	mov x5, #295
	mov x6, #260

	bl establecer_coordenadas

	movz x21, 5			  // largo
	movz x22, 120			  // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0xBFFF, lsl 0	  

	bl rectangulo

	

// ------------------------NARIZ------------
	mov x5, #220
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 50			  // largo
	movz x22, 45			  // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	  // negrou

	bl rectangulo 			  // llamo a la funcion

	//--

	mov x5, #210
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 65			// largo
	movz x22, 25			// ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
	
	//--
	mov x5, #225
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 35			// largo
	movz x22, 60			// ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #235
	mov x6, #285

	bl establecer_coordenadas

	movz x21, 15			// largo
	movz x22, 70			// ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #260
	mov x6, #295

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5			// ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 40		// ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

    mov x5, #250
	mov x6, #350

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x29, lsl 16
	movk x23, 0x446C, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//ARRUGAS

    mov x5, #185
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 25		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #195
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 25		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #190
	mov x6, #305

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #200
	mov x6, #305

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #195
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #190
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #200
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #195
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #195
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou 29446C

	bl rectangulo 			// llamo a la funcion
    // REMARCADO
	//--
	mov x5, #235
	mov x6, #350

	bl establecer_coordenadas

	movz x21, 20		    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
    //--
	mov x5, #220
	mov x6, #345

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
    //--
	mov x5, #220
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
    //--
	mov x5, #215
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
    //--
	mov x5, #210
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 25		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

    //--
	mov x5, #215
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 10		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #220
	mov x6, #295

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--
	
	mov x5, #225
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 10			    // largo
	movz x22, 5     	        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--
	
	mov x5, #235
	mov x6, #285

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--
	mov x5, #250
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 10			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--
	
// FOSAS NASALES

	mov x5, #255
	mov x6, #295

	bl establecer_coordenadas

	movz x21, 10			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou 16243A

	bl rectangulo 			// llamo a la funcion    //--

    mov x5, #255
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 15		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #255
	mov x6, #345

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion    //--

	mov x5, #255
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 15			    // largo
	movz x22, 15		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou
   
	bl rectangulo 			// llamo a la funcion    //--
	
	mov x5, #270
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou
    bl rectangulo 			// llamo a la funcion    //--

	mov x5, #270
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		        // ancho 

	movz x23, 0x16, lsl 16
	movk x23, 0x243A, lsl 0	// negrou 0F1530

	bl rectangulo 			// llamo a la funcion    //--


//-------------------------BOCA-------------
cmp x25, 0
b.eq no_boca
	mov x5, #280
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 155		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #275
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #275
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #275
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #290
	mov x6, #300

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 45		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion
no_boca:
//---------------------OJO IZQUIERDO--------
cmp x24, 0
b.eq no_ojo_izq

	mov x5, #220
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 30			// largo
	movz x22, 45		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #210
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 25		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 35		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #250
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 40		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #205
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #260
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 20		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #255
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		    	// ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #260

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 10		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// blancou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #270

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// blancou

	bl rectangulo 			// llamo a la funcion
no_ojo_izq:
//---------------------OJO DERECHO----------
cmp x19, 0
b.eq no_ojo_der
	//--
	mov x5, #220
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 30			// largo
	movz x22, 45	    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #210
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 25		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #250
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 40		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #260
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 20		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #205
	mov x6, #375

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #215
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 35		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--
	mov x5, #255
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 5			    // largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	// negrou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 10		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// blancou

	bl rectangulo 			// llamo a la funcion

	//--

	mov x5, #215
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xFFFF, lsl 0	// blancou

	bl rectangulo 			// llamo a la funcion
no_ojo_der:


ldur lr, [sp, #8]
ldur x19, [sp]
add sp, sp, #16

br lr

dibujar_stitchrosa:

	sub sp, sp, #16 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #8]
	stur x7, [sp]


//CUADRADITO DEL COLOR DEL FONDO PARA TAPAR LOS PELOS DEL STITCH AZUL
    mov x5, #125
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 15			// largo
	movz x22, 30		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0xEBCD, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #325

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

//OREJA DERECHA DELINEADO

	mov x5, #130
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #125
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #125
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 20		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #120
	mov x6, #355

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 35		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #125
	mov x6, #385

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #395

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #135
	mov x6, #410

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #150
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #350

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 15 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 25 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #385

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #150
	mov x6, #390

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 10 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #155
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #405

	bl establecer_coordenadas

	movz x21, 10    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #170
	mov x6, #410

	bl establecer_coordenadas

	movz x21, 15    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #180
	mov x6, #415

	bl establecer_coordenadas

	movz x21, 25    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #275
	mov x6, #415

	bl establecer_coordenadas

	movz x21, 45    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #315
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 20    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #335
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 10    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #340
	mov x6, #430

	bl establecer_coordenadas

	movz x21, 5    		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #330
	mov x6, #445

	bl establecer_coordenadas

	movz x21, 10    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #325
	mov x6, #440

	bl establecer_coordenadas

	movz x21, 5    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #260
	mov x6, #435

	bl establecer_coordenadas

	movz x21, 70    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

//OREJA IZQUIERDA DELINEADO

	mov x5, #125
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 20   		// largo
	movz x22, 20 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #310

	bl establecer_coordenadas

	movz x21, 10   		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #120
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 25   		// largo
	movz x22, 35 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 5   		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #255

	bl establecer_coordenadas

	movz x21, 5   		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #125
	mov x6, #245

	bl establecer_coordenadas

	movz x21, 30   		// largo
	movz x22, 10 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #240

	bl establecer_coordenadas

	movz x21, 30   		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 40   		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #135
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 5   		// largo
	movz x22, 10 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 20   		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 15    		// largo
	movz x22, 30 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #155
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 5    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #150
	mov x6, #215

	bl establecer_coordenadas

	movz x21, 5    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #175
	mov x6, #230

	bl establecer_coordenadas

	movz x21, 10    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #180
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 20    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #265
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 15    		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #280
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 40    		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #320
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 20 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #325
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #330
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #330
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #340
	mov x6, #200

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 20 		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

// OREJA IZQUIERDA ROSA

	mov x5, #135
	mov x6, #305

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #280

	bl establecer_coordenadas

	movz x21, 15     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #125
	mov x6, #260

	bl establecer_coordenadas

	movz x21, 15     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 10 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #135
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 35 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 30 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #150
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #155
	mov x6, #215

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 20 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 20 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #170
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 15     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #170
	mov x6, #215

	bl establecer_coordenadas

	movz x21, 25     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #170
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 35     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #170
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #265
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 75     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #270
	mov x6, #215

	bl establecer_coordenadas

	movz x21, 65     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #275
	mov x6, #220

	bl establecer_coordenadas

	movz x21, 40     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #330
	mov x6, #205

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 10 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	//VIOLETA #BA55D3

	mov x5, #280
	mov x6, #210

	bl establecer_coordenadas

	movz x21, 35     		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0xBA, lsl 16
	movk x23, 0x55D3, lsl 0	 

	bl rectangulo

// OREJA ROSA DERECHA

	mov x5, #125
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #130
	mov x6, #340

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 55 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #135
	mov x6, #335

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 75 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #345

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #140
	mov x6, #385

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 35 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #145
	mov x6, #390

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 30 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #150
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #155
	mov x6, #405

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 25 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #410

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #415

	bl establecer_coordenadas

	movz x21, 20     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 50     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #160
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 30     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #270
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 5     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #260
	mov x6, #425

	bl establecer_coordenadas

	movz x21, 75     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #260
	mov x6, #430

	bl establecer_coordenadas

	movz x21, 80     		// largo
	movz x22, 5 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	mov x5, #330
	mov x6, #435

	bl establecer_coordenadas

	movz x21, 10     		// largo
	movz x22, 10 		    // ancho 

	movz x23, 0xFF, lsl 16
	movk x23, 0x69B4, lsl 0	 

	bl rectangulo

	//VIOLETA
	mov x5, #275
	mov x6, #420

	bl establecer_coordenadas

	movz x21, 40     		// largo
	movz x22, 15 		    // ancho 

	movz x23, 0xBA, lsl 16
	movk x23, 0x55D3, lsl 0	 

	bl rectangulo

//--
	
	ldur lr, [sp, #8] // recuperar la direccion de retorno de la llamada en el stack
    ldur x7, [sp]
	add sp, sp, #16

	br lr


//-------------------------------- OHANA -----------------------------------------
dibujar_ohana:

	sub sp, sp, #16 // guardar la direccion de retorno de la llamada en el stack
    stur lr, [sp, #8]
	stur x7, [sp]

    mov x5, #400
	mov x6, #225

	bl establecer_coordenadas

	movz x21, 30			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	

	bl rectangulo 	

	mov x5, #400
	mov x6, #250

	bl establecer_coordenadas

	movz x21, 30			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo	

	mov x5, #390
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo	

	mov x5, #430
	mov x6, #235

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #265

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #290

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #410
	mov x6, #275

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #305

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #330

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #410
	mov x6, #315

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #345

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #375

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #355

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #395
	mov x6, #360

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #400
	mov x6, #365

	bl establecer_coordenadas

	movz x21, 5			// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #405
	mov x6, #370

	bl establecer_coordenadas

	movz x21, 10		// largo
	movz x22, 5		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #390

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #415

	bl establecer_coordenadas

	movz x21, 50			// largo
	movz x22, 10		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #390
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo

	mov x5, #410
	mov x6, #400

	bl establecer_coordenadas

	movz x21, 10			// largo
	movz x22, 15		    // ancho 

	movz x23, 0x00, lsl 16
	movk x23, 0x0000, lsl 0	 

	bl rectangulo


	ldur lr, [sp, #8] // recuperar la direccion de retorno de la llamada en el stack
    ldur x7, [sp]
	add sp, sp, #16

	br lr


.endif
