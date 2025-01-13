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

### Ejemplo de Entrada y Salida

**Ver el documento llamado ejemplo_salida.txt.**
Se generan 3 ejemplos de entrada y salida:
-EJEMPLO CON ENVIO LOCAL (GRATIS)
-EJEMPLO CON TODOS LOS DESCUENTOS APLICADOS, SE COMPRAN AMBOS PRODUCTOS, 200 UNIDADES POR CADA TIPO DE PRODUCTO
-EJEMPLO CON LA COMPRA DE UN SOLO PRODUCTO , CON ENVIO A LA ZONA CENTRO

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

