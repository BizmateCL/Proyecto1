# Proyecto 1
Proyecto en pseudocódigo de la venta de productos:Poleras y gorros.
Nota: Se trabaja con pesos chilenos: $
## Sistema de Cálculo de Costos de Venta de Productos
Este proyecto consiste en un algoritmo en pseudocódigo que simula un sistema para calcular el costo final de la venta de 2 tipos de producto. El algoritmo toma en cuenta descuentos, impuestos, costos de envío y cantidad.

## Descripción del Proyecto

**El algoritmo realiza el cálculo del costo final de un producto siguiendo estos pasos:**

1. **Listar los dos productos en un menú para que el usuario escoja del catálogo (opción 0: producto 1 y 1: producto 2).**
   El usuario podrá ver los dos productos con sus principales descripciones: código, nombre, precio y peso.Para esto se utiliza una matriz bidimensional.
2. **Aplicar un descuento por cupón.** En el caso de que el cliente tenga un cupón válido, se aplicará este descuento.
3. **Calcular impuestos (IVA: 19%)** Se aplica impuesto sobre el precio con descuento.
4. **Aplicar un descuento por cantidad** si el cliente compra 3 artículos o mas de 3, se aplica descuento de 3%.
Nota:En caso que cliente tenga ambos tipos de descuento, este algoritmo permite que ambos descuentos se apliquen a la venta.   
5. **Calcular el costo de envío.** Este dependerá del destino zona norte, zona sur , zona centro o local (envio gratis) y ademas del peso del envío:
   - Si el cliente compra entre 10 y 20 kg, tendrá un cargo adicional de $5000.
   - Si compra entre 20 y 30 kg, tendrá un cargo adicional de $10000.
   - Si compra más de 30 kg, tendrá un cargo adicional de $20000.
6. **Calcular el costo final del producto.** Se suman todos los costos previamente mencionados.
7. **Desglosar y mostrar los resultados.** Se desglosa la boleta para el usuario con información de la venta.

### Ejemplo de Entrada y Salida ( desde la linea 26 a la 150, es el mismo texto de ejemplo salida

EJEMPLO CON ENVIO LOCAL (GRATIS)
*** Ejecución Iniciada. ***
------------C A T A L O G O  ------------
Bienvenido a nuestro catálogo de productos
Código: 0
Nombre del producto: Polera
Precio del producto: $ 5000
Peso del producto: 0.2 kg
Código: 1
Nombre del producto: Gorro
Precio del producto: $ 3000
Peso del producto: 0.3 kg
Ingrese el código del producto que desea comprar (0 o 1):
> 0
Ingrese la cantidad de productos que desea comprar:
> 300
Nombre del producto: Polera
Precio del producto: $ 5000
En su carro tiene un monto total de 1500000
En su carro tiene 60 kilos de productos
Desea comprar otro producto? Indicar si o no
> NO
Usted tiene algún CUPON de descuento? (5% Adicional). Indicar si o no
> NO
Usted no tiene un descuento con CUPON
Usted tiene un descuento adicional de un 3%
Ingrese la zona de envío (0: norte, 1: centro, 2: sur, 3: local):
> 3
Zona de envío no válida.
------------ B O L E T A ------------
Cantidad TOTAL de productos comprados: 300 unidades
Producto1: 300 unidad(es), Precio: $1500000
Monto total de los productos comprados: $1455000
Descuento aplicado: 3%
Monto total con IVA (19%): $1731450
Costo de envío corresponde al monto de : $0
Cargo adicional por peso: $0
Nota: Los cargos adicionales solo aplican en compras sobre 10 kg de peso en el gasto de compra total
Monto final a pagar: $1731450
Total de kilos comprados en todos sus productos: 60 kg
*** Ejecución Finalizada. ***

---------------------------------------------------------------------------------------------------------------------------
EJEMPLO CON TODOS LOS DESCUENTOS APLICADOS, SE COMPRAN AMBOS PRODUCTOS, 200 UNIDADES POR CADA TIPO DE PRODUCTO

*** Ejecución Iniciada. ***
------------C A T A L O G O  ------------
Bienvenido a nuestro catálogo de productos
Código: 0
Nombre del producto: Polera
Precio del producto: $ 5000
Peso del producto: 0.2 kg
Código: 1
Nombre del producto: Gorro
Precio del producto: $ 3000
Peso del producto: 0.3 kg
Ingrese el código del producto que desea comprar (0 o 1):
> si
Ingrese el código del producto que desea comprar (0 o 1):
> 1
Ingrese la cantidad de productos que desea comprar:
> 200
Nombre del producto: Gorro
Precio del producto: $ 3000
En su carro tiene un monto total de 1600000
En su carro tiene 100 kilos de productos
Desea comprar otro producto? Indicar si o no
> no
Usted tiene algún CUPON de descuento? (5% Adicional). Indicar si o no
> si
Usted tiene un descuento adicional de un 5%
Usted tiene un descuento adicional de un 3%
Ingrese la zona de envío (0: norte, 1: centro, 2: sur, 3: local):
> 0
------------ B O L E T A ------------
Cantidad TOTAL de productos comprados: 400 unidades
Producto1: 200 unidad(es), Precio: $1000000
Producto2: 200 unidad(es), Precio: $600000
Monto total de los productos comprados: $1472000
Descuento aplicado: 8%
Monto total con IVA (19%): $1751680
Costo de envío corresponde al monto de : $205000
Cargo adicional por peso: $20000
Nota: Los cargos adicionales solo aplican en compras sobre 10 kg de peso en el gasto de compra total
Monto final a pagar: $1976680
Total de kilos comprados en todos sus productos: 100 kg
*** Ejecución Finalizada. ***


--------------------------------------------------------------------------------------------------------------------
EJEMPLO CON LA COMPRA DE UN SOLO PRODUCTO , CON ENVIO A LA ZONA CENTRO

*** Ejecución Iniciada. ***
------------C A T A L O G O  ------------
Bienvenido a nuestro catálogo de productos
Código: 0
Nombre del producto: Polera
Precio del producto: $ 5000
Peso del producto: 0.2 kg
Código: 1
Nombre del producto: Gorro
Precio del producto: $ 3000
Peso del producto: 0.3 kg
Ingrese el código del producto que desea comprar (0 o 1):
> 0
Ingrese la cantidad de productos que desea comprar:
> 1
Nombre del producto: Polera
Precio del producto: $ 5000
En su carro tiene un monto total de 5000
En su carro tiene 0.2 kilos de productos
Desea comprar otro producto? Indicar si o no
> no
Usted tiene algún CUPON de descuento? (5% Adicional). Indicar si o no
> no
Usted no tiene un descuento con CUPON
Ingrese la zona de envío (0: norte, 1: centro, 2: sur, 3: local):
> 1
------------ B O L E T A ------------
Cantidad TOTAL de productos comprados: 1 unidades
Producto1: 1 unidad(es), Precio: $5000
Monto total de los productos comprados: $5000
Descuento aplicado: 0%
Monto total con IVA (19%): $5950
Costo de envío corresponde al monto de : $5200

## Requisitos del Algoritmo

**El sistema debe:**
- Leer la información básica del(los) producto(s): código, cantidad, cupón, zona de envío.
- Realizar cálculos en el siguiente orden:
  - Aplicar descuentos pertinentes.
  - Aplicar impuesto del 19%.
  - Estimar el costo de envío.
- Mostrar los resultados.

## Estructura del Proyecto

El repositorio contiene los siguientes archivos:
- **`test12.psc`**: Archivo principal con la implementación del algoritmo en pseudocódigo.
- **`README.md`**: Este archivo contiene la descripción del proyecto.
- **`ejemplo_salida.txt`**: Ejemplo de ejecución del algoritmo con datos de entrada y salida en pseint.

