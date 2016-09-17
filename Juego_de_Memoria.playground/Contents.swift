/**
 * @project: Reto de la Semana 2 - Juego de Memoria
 * @description: Actividad de la semana 2 para el curso "Swift" dictado por Coursera
 * @autor: Christian Ceballos
 * @create: 17/09/2016
 */

import UIKit

//Array de Numeros hasta el 100 incluyendolo
var rango_de_numeros : [Int] = Array(0...100)

//Iteración con For para cada número
for numero in rango_de_numeros {
    
    //Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
    if (numero % 5 == 0) {
        //Print con interpolación de variables para la salida en consola.
        print("#\(numero) Bingo!!!")
    }
    
    //Si el número es par, imprime: # el número + “par!!!”
    if (numero % 2 == 0) {
        //Print con interpolación de variables para la salida en consola.
        print("#\(numero) Par!!!")
    } else { //Si el número es impar, imprime: # el número + “impar!!!”
        print("#\(numero) Impar!!!")
    }
    
    //Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
    if (numero >= 30 && numero <= 40) {
        //Print con interpolación de variables para la salida en consola.
        print("#\(numero) Viva Swift!!!")
    }
    
}

