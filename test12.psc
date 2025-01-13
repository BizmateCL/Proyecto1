Algoritmo test
    // Definir un arreglo bidimensional para almacenar códigos, nombres de productos, precios y pesos(kg)
    dimension productos[2, 4] 
    definir descuento_preg, zona_envio, continuar, codigoProducto Como caracter
    definir cantidadProductos, cantidad, cantidadProducto1, cantidadProducto2 Como entero
    definir descuentocupon, descuentocant, descuento_combinado, totalMonto, montoConIVA, zona_norte, zona_sur, zona_centro, costoEnvio, IVA, costoFijoEnvio, costoEnvioTotal, acumkilos, cargoAdicional Como real
    definir cantidadValida Como Logico
    
    // Inicializar variables
    IVA <- 0.19
    costoFijoEnvio <- 5000
    totalMonto <- 0
    cantidadProductos <- 0
    cantidadProducto1 <- 0
    cantidadProducto2 <- 0
    descuentocupon <- 0
    descuentocant <- 0
    descuento_combinado <- 0
    montoConIVA <- 0
    zona_norte <- 500
    zona_sur <- 300
    zona_centro <- 200
    costoEnvio <- 0
    acumkilos <- 0
    cargoAdicional <- 0
    
    // Asignar índices, nombres, precios y pesos a los productos
    productos[0, 0] <- "0"
    productos[0, 1] <- "Polera"
    productos[0, 2] <- "5000"
    productos[0, 3] <- "1" // Peso en kg
    productos[1, 0] <- "1"
    productos[1, 1] <- "Gorro"
    productos[1, 2] <- "3000"
    productos[1, 3] <- "5" // Peso en kg
    
    // Mostrar el listado de productos y precios, con su identificador único al inicio
    Escribir "------------C A T A L O G O  ------------"
    Escribir "Bienvenido a nuestro catálogo de productos"
    Para i <- 0 Hasta 1 Hacer // es de 0 a 1 porque son 2 productos
        Escribir "Código: ", productos[i, 0]
        Escribir "Nombre del producto: ", productos[i, 1]
        Escribir "Precio del producto: ", productos[i, 2]
        Escribir "Peso del producto: ", productos[i, 3], " kg"
    FinPara
    
    // Ciclo para preguntar al cliente cuántos productos quiere
    continuar <- "si"
    Mientras continuar = "si" Hacer
        // Leer la opción del usuario
        Escribir "Ingrese el código del producto que desea comprar (0 o 1): "
        Leer codigoProducto
        
        // Validar el código del producto
        Si codigoProducto <> "0" Y codigoProducto <> "1" Entonces
            Escribir "Ingrese un código válido."
        SiNo
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
                    cantidadProducto1 <- cantidadProducto1 + cantidad
                    acumkilos <- acumkilos + (ConvertirANumero(productos[0, 3]) * cantidad)
                Caso "1":
                    Escribir "Nombre del producto: ", productos[1, 1]
                    Escribir "Precio del producto: ", productos[1, 2]
                    totalMonto <- totalMonto + (ConvertirANumero(productos[1, 2]) * cantidad)
                    cantidadProductos <- cantidadProductos + cantidad
                    cantidadProducto2 <- cantidadProducto2 + cantidad
                    acumkilos <- acumkilos + (ConvertirANumero(productos[1, 3]) * cantidad)
            FinSegun
        FinSi
        // Informar al usuario cuanto lleva gastado en productos
        Escribir "En su carro tiene un monto total de ", totalMonto
        Escribir "En su carro tiene ", acumkilos, " kilos de productos"
        // Preguntar si desea continuar comprando
        Escribir "Desea comprar otro producto? Indicar si o no"
        Leer continuar
    FinMientras
    
    // Solo preguntar por el código de descuento si se compraron productos
    Si cantidadProductos > 0 Entonces
        Escribir "Usted tiene algún CUPON de descuento? (5% Adicional). Indicar si o no"
        Leer descuento_preg
        
        Si(descuento_preg = "si" O descuento_preg = "SI") Entonces
            Escribir "Usted tiene un descuento adicional de un 5%"
            descuentocupon <- 0.05
        SiNo
            Escribir "Usted no tiene un descuento con CUPON"
        FinSi
        
        // Descuento por cantidad > 3
        Si cantidadProductos >= 3 Entonces
            Escribir "Usted tiene un descuento adicional de un 3%"
            descuentocant <- 0.03
        FinSi
        
        // Descuento combinado si tiene cupon y además compra más de 3 productos
        Si cantidadProductos >= 3 Y (descuento_preg = "si" O descuento_preg = "SI") Entonces
            descuento_combinado <- descuentocant + descuentocupon
        SiNo
            descuento_combinado <- descuentocant + descuentocupon
        FinSi
        
        // Aplicar el descuento combinado
        totalMonto <- totalMonto * (1 - descuento_combinado)
    FinSi
    
    // Calcular el monto con IVA
    montoConIVA <- totalMonto * (1 + IVA)
    
    // Preguntar por la zona de envío
    Escribir "Ingrese la zona de envío (0: norte, 1: centro, 2: sur, 3: local): "
    Leer zona_envio
    
    // Calcular el costo de envío
    Segun zona_envio Hacer
        Caso "0":
            costoEnvio <- zona_norte * cantidadProductos
        Caso "1":
            costoEnvio <- zona_centro * cantidadProductos
        Caso "2":
            costoEnvio <- zona_sur * cantidadProductos 
			//Caso "3":
			//  costoEnvio <- 0 // Free shipping
        De Otro Modo:
            Escribir "Zona de envío no válida."
    FinSegun
    costoEnvioTotal <- costoEnvio + costoFijoEnvio
    Si zona_envio = "3" Entonces
        costoEnvioTotal <- 0
    FinSi
	
    // Calcular el cargo adicional por peso
    Si acumkilos > 10 Y acumkilos <= 20 Entonces
        cargoAdicional <- 5000
		Si acumkilos > 20 Y acumkilos <= 30 Entonces
			cargoAdicional <- 10000
			Si acumkilos > 30 Entonces
				cargoAdicional <- 20000
			fin si
		fin si
	FinSi
			
			// Mostrar la boleta
			Escribir "------------ B O L E T A ------------"
			Escribir "Cantidad TOTAL de productos comprados: ", cantidadProductos
			Si cantidadProducto1 > 0 Entonces
				Escribir "Producto1: ", cantidadProducto1, " unidad(es), Precio: $", ConvertirANumero(productos[0, 2]) * cantidadProducto1
			FinSi
			Si cantidadProducto2 > 0 Entonces
				Escribir "Producto2: ", cantidadProducto2, " unidades, Precio: $", ConvertirANumero(productos[1, 2]) * cantidadProducto2
			FinSi
			Escribir "Monto total de los productos comprados: $", totalMonto
			Escribir "Descuento aplicado: ", descuento_combinado * 100, "%"
			Escribir "Monto total con IVA (19%): $", montoConIVA
			Escribir "Costo de envío corresponde al monto de : $", costoEnvioTotal
			Escribir "Cargo adicional por peso: $", cargoAdicional
			Escribir "Nota: Los cargos adicionales solo aplican en compras sobre 10 kg de peso en el gasto de compra total "
			Escribir "Monto final a pagar: $", montoConIVA + costoEnvioTotal + cargoAdicional
			Escribir "Total de kilos comprados en todos sus productos: ", acumkilos, " kg"
FinAlgoritmo