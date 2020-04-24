# Grupo 05
# Integrantes:
# DANIEL HERNANDEZ COD: 67632.
# LUIS FERNANDO GARCIA COD: 84948.
# lab05 : Unidad de suma, resta, multiplicación, división y visualización BCD

## descipción 
La unidad aritmética, es tal que cuenta con componentes para realizar operaciones aritméticas. cada operación aritmética es ejecutada acuerdo al código de la operación. 

Opcode:Las posibles operaciones arimeticas que se pueden ejecutar en la ALU.

![Tabla operaciones](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/TABLA.png)

EL diagrama de estructura de cada uno de los bloques operacionales de nuestra unidad armetica son los siguientes:
        

## Suma 
## Diagrama estructural de la suma:
![Suma](https://raw.githubusercontent.com/ELINGAP-7545/lab05-grupo_5/master/IMAGENES/ESTRUCTURAL%20SUM4.bmp)

## Simulacion Fpga:
![imagen](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/simulacion%20fpga/suma.png)

## Resta
## Diagrama estructural de la resta:
![resta](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/REST.png)
## Simulacion Fpga:
![imagen](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/simulacion%20fpga/restapositiva.png)

En la siguiente imagen se muestra como el producto de la resta si llega hacer negativo el resultado se muestra en el display
mientras se enciende un led para resaltar que este producto es negativo:
## Resta negativa:
![imagen](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/simulacion%20fpga/resta.png)

## Multiplicacion
## Diagrama estructural de la multiplicacion:
![multiplicacion](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/estructural%20multiplicador.jpg).

## Simulacion Fpga:
![imagen](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/simulacion%20fpga/multiplicacion.png)

## División
## Diagrama estructural de la división
![division](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/DIV.png)

## Simulacion Fpga:
![imagen](https://github.com/ELINGAP-7545/lab05-grupo_5/blob/master/IMAGENES/simulacion%20fpga/division.png)
        
la unidad cuenta con:

1. Los dos puertos de entrada A y B. cada uno de  3 bits.
2. La señal `opcode` de dos bits, para configurar la operación que se realiza con los datos de `portA` y `portB`.
3. Una señal reset para reestablecer valores en las operaciones.
4. Para las FSM  y las visualización dinámica, se incluye la señal de `clk` de entrada.


## Diagrama de caja negra

Según las especificaciones anteriormente descrita, la caja funcional de la unidad aritmética propuesta es:

![caja negra](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/cajanegra.png)


## Diagrama estructural

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)



  

 
