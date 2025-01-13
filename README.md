# Proyecto 1
Proyecto en pseudocodigo de la venta de productos. 
# Sistema de Cálculo de Costos de venta de Productos. En este ejemplo se presentan 2 productos.
Este proyecto consiste en un algoritmo en pseudocódigo que simula un sistema para calcular el costo final de un producto. El algoritmo toma en cuenta descuentos, impuestos, costos de envío y cantidad de productos comprados. Se desarrolló como un ejercicio práctico para aplicar conceptos básicos de programación y simulación de sistemas en pseudocódigo.

## Descripción del Proyecto

**El algoritmo realiza el cálculo del costo final de un producto siguiendo estos pasos:**

1. **Listar los dos productos en un menu para que el usuario escoja del catalogo (opcion 0:producto 1 y 1:producto 2).**
   El usuario podra ver los dos productos con sus principales descripciones:codigo, nombre, precio y peso.
2. **Aplicar un descuento por cupon.**  En el caso que el cliente tiene un cupón válido.
3. **Calcular impuestos** (IVA: 19%) sobre el precio con descuento.
4. **Aplicar un descuento por cantidad** si el cliente compra más de un artículo.
5. **Calcular el costo de envío**. Este dependera del destino y del peso del envio.
   Si cliente compra entre 10 y 20 kg, tendra un cargo adicional de $5000. Si compra entre 20 y 30 kg, tendra un cargo
adicional de $10000. Si compra mas de 30 kg, tendra un cargo adicional de $15000
6. **Calcular el costo final del producto**, Se suman todos los costos previamente nombrados anteriores.
7. **Desglosar y mostrar los resultados** , Se desgloza la boleta para el usuariocon informacion clara de comprender.

### Ejemplo de Entrada y Salida

**Entrada:**

- Codigo producto comprado :**0**
- Cantidad:**1**
- Se solicita saber si ingresara mas productos:**no**
- Se solicita saber si tiene cupo de descuento(5%):**si**
- Se solicita saber la zona de envío (0: norte, 1: centro, 2: sur, 3: local):**0**

**Salida:**
**------------ B O L E T A ------------**
Cantidad TOTAL de productos comprados: 1
Producto1: 1 unidad(es), Precio: $5000
Monto total de los productos comprados: $4750
Descuento aplicado: 5%
Monto total con IVA (19%): $5652.5
Costo de envío corresponde al monto de : $5500
Cargo adicional por peso: $0
Nota: Los cargos adicionales solo aplican en compras sobre 10 kg de peso en el gasto de compra total
Monto final a pagar: $11152.5
Total de kilos comprados en todos sus productos: 1 kg
## Requisitos del Algoritmo

**El sistema debe:**
-Leer la información básica del(los) producto(s):codigo,cantidad, cupón, zona de envio.
-Realizar cálculos en el siguiente orden:
-Aplicar descuentos pertinentes.
-Aplicar impuesto del 19%.
-Estimar el costo de envío.
-Mostrar los resultados.
## Estructura del Proyecto

El repositorio contiene los siguientes archivos:
- **`test12.psc`**: Archivo principal con la implementación del algoritmo en pseudocódigo.
- **`README.md`**: Este archivo contiene la descripción del proyecto.
- **`ejemplo_salida.txt`**: Ejemplo de ejecución del algoritmo con datos de entrada y salida. 

