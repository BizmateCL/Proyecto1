Algoritmo test1
    // Definir un arreglo bidimensional para almacenar nombres, precios y pesos de productos
    dimension productos[5, 3] 
	
    // Asignar índices, nombres, precios y pesos a los productos
    productos[0, 0] <- "0"
    productos[0, 1] <- "Producto1"
    productos[0, 2] <- "100"
    productos[0, 3] <- "2" // Peso en kilos
    productos[1, 0] <- "1"
    productos[1, 1] <- "Producto2"
    productos[1, 2] <- "200"
    productos[1, 3] <- "3" // Peso en kilos
    productos[2, 0] <- "2"
    productos[2, 1] <- "Producto3"
    productos[2, 2] <- "300"
    productos[2, 3] <- "1.5" // Peso en kilos
    productos[3, 0] <- "3"
    productos[3, 1] <- "Producto4"
    productos[3, 2] <- "400"
    productos[3, 3] <- "4" // Peso en kilos
    productos[4, 0] <- "4"
    productos[4, 1] <- "Producto5"
    productos[4, 2] <- "500"
    productos[4, 3] <- "2.5" // Peso en kilos
	
    // Inicializar variables
    totalMonto <- 0
    cantidadProductos <- 0
    acumkilos <- 0
	
    // Mostrar el listado de productos y precios
    Para i <- 0 Hasta 4 Hacer
        Escribir "Codigo: ", productos[i, 0]
        Escribir "Nombre del producto: ", productos[i, 1]
        Escribir "Precio del producto: ", productos[i, 2]
        Escribir "Peso del producto (kg): ", productos[i, 3]
    FinPara
	
    // Leer la opción del usuario
    Escribir "Ingrese el código del producto que desea ver: "
    Leer codigoProducto
	
    // Validar la cantidad de productos. negativos o 0 no...
    cantidadValida <- FALSO
    Mientras cantidadValida = FALSO Hacer
        Escribir "Ingrese la cantidad de productos que desea comprar: "
        Leer cantidad
        Si cantidad > 0 Entonces
            cantidadValida <- VERDADERO
        SiNo
            Escribir "Ingrese una cantidad válida (mayor que 0)."
        FinSi
    FinMientras
	
    // Mostrar la información del producto seleccionado y calcular el total
    Segun codigoProducto Hacer
        Caso "0":
            Escribir "Nombre del producto: ", productos[0, 1]
            Escribir "Precio del producto: ", productos[0, 2]
            totalMonto <- totalMonto + (ConvertirANumero(productos[0, 2]) * cantidad)
            cantidadProductos <- cantidadProductos + cantidad
            acumkilos <- acumkilos + (ConvertirANumero(productos[0, 3]) * cantidad)
        Caso "1":
            Escribir "Nombre del producto: ", productos[1, 1]
            Escribir "Precio del producto: ", productos[1, 2]
            totalMonto <- totalMonto + (ConvertirANumero(productos[1, 2]) * cantidad)
            cantidadProductos <- cantidadProductos + cantidad
            acumkilos <- acumkilos + (ConvertirANumero(productos[1, 3]) * cantidad)
        Caso "2":
            Escribir "Nombre del producto: ", productos[2, 1]
            Escribir "Precio del producto: ", productos[2, 2]
            totalMonto <- totalMonto + (ConvertirANumero(productos[2, 2]) * cantidad)
            cantidadProductos <- cantidadProductos + cantidad
            acumkilos <- acumkilos + (ConvertirANumero(productos[2, 3]) * cantidad)
        Caso "3":
            Escribir "Nombre del producto: ", productos[3, 1]
            Escribir "Precio del producto: ", productos[3, 2]
            totalMonto <- totalMonto + (ConvertirANumero(productos[3, 2]) * cantidad)
            cantidadProductos <- cantidadProductos + cantidad
            acumkilos <- acumkilos + (ConvertirANumero(productos[3, 3]) * cantidad)
        Caso "4":
            Escribir "Nombre del producto: ", productos[4, 1]
            Escribir "Precio del producto: ", productos[4, 2]
            totalMonto <- totalMonto + (ConvertirANumero(productos[4, 2]) * cantidad)
            cantidadProductos <- cantidadProductos + cantidad
            acumkilos <- acumkilos + (ConvertirANumero(productos[4, 3]) * cantidad)
        De Otro Modo:
            Escribir "Código de producto no válido."
    FinSegun
	
    // Informar al usuario cuanto lleva gastado en productos
    Escribir "En su carro tiene un monto total de ", totalMonto
    Escribir "Ha comprado un total de ", acumkilos, " kilos de productos."
FinAlgoritmo