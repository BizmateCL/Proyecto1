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
3. **Calcular impuestos (IVA: 19%) ** . Se aplica impuesto sobre el precio con descuento.
4. **Aplicar un descuento por cantidad** si el cliente compra 3 artículos o mas de 3, se aplica descuento de 3%.
Nota:En caso que cliente tenga ambos tipos de descuento, este algoritmo permite que ambos descuentos se apliquen a la venta.   
5. **Calcular el costo de envío.** Este dependerá del destino zona norte, zona sur , zona centro o local (envio gratis) y ademas del peso del envío:
   - Si el cliente compra entre 10 y 20 kg, tendrá un cargo adicional de $5000.
   - Si compra entre 20 y 30 kg, tendrá un cargo adicional de $10000.
   - Si compra más de 30 kg, tendrá un cargo adicional de $20000.
6. **Calcular el costo final del producto.** Se suman todos los costos previamente mencionados.
7. **Desglosar y mostrar los resultados.** Se desglosa la boleta para el usuario con información de la venta.

### Ejemplo de Entrada y Salida

**Entrada:**

- Código producto comprado: **0**
- Cantidad: **1**
- Se solicita saber si ingresará más productos: **no**
- Se solicita saber si tiene cupón de descuento (5%): **sí**
- Se solicita saber la zona de envío (0: norte, 1: centro, 2: sur, 3: local): **0**

**Salida:**
**------------ B O L E T A ------------**
- Cantidad TOTAL de productos comprados: 1
- Producto 1: 1 unidad(es), Precio: $5000
- Monto total de los productos comprados: $4750
- Descuento aplicado: 5%
- Monto total con IVA (19%): $5652.5
- Costo de envío: $5500
- Cargo adicional por peso: $0
**Nota:** Los cargos adicionales solo aplican en compras sobre 10 kg de peso en el gasto de compra total.
- Monto final a pagar: $11152.5
- Total de kilos comprados en todos sus productos: 1 kg

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

