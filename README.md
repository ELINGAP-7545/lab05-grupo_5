# Grupo 05
# Integrantes:
# DANIEL HERNANDEZ COD: 67632.
# LUIS FERNANDO GARCIA COD: 84948.
# lab05 : Unidad de suma, resta, multiplicación, división y visualización BCD

## descipción 
La unidad aritmética, es tal que cuenta con componentes para realizar operaciones aritméticas. cada operación aritmética es ejecutada acuerdo al código de la operación. 

Como ejercicio académico propuestó, se construyó una unidad ritmetica con 4 operaciones: suma, resta, multiplicación y división, el resultados se visualiza en dos display de siete segmentos. El flujo de datos y la selección de la operación se realiza acorde a la señal opcode, y segun la siguiente descripcion:
 

Opcode: 00,  operacion suma de enteros positivos. Opcode: 01,  operacion resta de enteros positivos. Opcode: 10,  operacion multiplicacion de enteros positivos. Opcode: 11,  operacion division de enteros positivos.
        

Por lo tanto, la unidad cuenta con:

1. Los dos puertos de entrada A y B. cada uno de  3 bits.
2. La señal `opcode` de dos bits, para configurar la operación que se realiza con los datos de `portA` y `portB`.
3. La visualización se presenta de forma dinamica en Quartus con 2 ánodos, `An`  y las 7 señales de los cátodos, `sseg`. En la Fpga virtual se presenta como una instancia de un mismo display, sin la visualizacion dinamica y por lo tanto sin las señales de los anodos.
4. Para las FSM  y las visualización dinámica de Quartus, se incluye la señal de `clk` de entrada.
5. la señal de reset del sistema.

## Diagrama de caja negra

Según las especificaciones anteriormente descrita, la caja funcional de la unidad aritmética propuesta es:

![caja negra](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/cajanegra.png)


## Diagrama estructural

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)

El diagrama estructural, se soporta en los componentes desarrollados en los anteriores laboratorios. De esta manera,  tanto el sumador, el multiplicador y el Display, son tomados de los lab2, lab5 y lab4  respectivamente. Adicional a la estructura de cada operación se encuentra el decodificador y el multiplexador.

## Entregables

1. Definir el diagrama estructurar interno de cada bloque funcionar 
2. Descargar la estructura propuesta de la  Unidad Aritmética del paquete de trabajo [WP05](https://classroom.github.com/g/dHrBou9a) Este proyecto cuenta con el archivo `alu.v` y, tiene la carpeta `src` que cuenta con las 5 carpetas de cada componente.
3. Implementar `alu.v` en la FPGA, y  comprobar el funcionamiento  de la suma la multiplicación y la visualización
4. Incluir el  HDL para le divisor  realizado en el ejercicio anterior, en la carpeta `src/divisor`  y, adicione los archivos e instanciar el bloque divisor.
5. Diseñar el bloque restador, adicionar dicho bloque a la respectiva carpeta e instanciar el modulo en `alu.v`.
6. Realizar el testbench del bloque alu.
7. implementar el sistema completo en la FPGA remota
8. hacer la documentación respectiva en el archivo README
  

 
