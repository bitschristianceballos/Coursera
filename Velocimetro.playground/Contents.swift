/**
 * @project: Reto de la Semana 4 - Un velocímetro de un automóvil digital
 * @description: Actividad de la semana 4 para el curso "Swift" dictado por Coursera
 * @autor: Christian Ceballos
 * @create: 02/10/2016
 */

import UIKit


//Enumeración Velocidades de tipo entero "Int"
enum Velocidades : Int {
    //Elementos y valores definidos por el ejercicio
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    //Inicializador que recibe una velocidad
    init(velocidadInicial: Velocidades){
        //Asignación de velocidadInicial a self
        self = velocidadInicial
    }
    
}


//Clase Auto
class Auto {
    
    //Variable instancia de Velocidades
    var velocidad : Velocidades
    //Función Inicializadora de Auto con llamamiento a la función inicializadora de Velocidades
    init() {
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    //Función cambioDeVelocidad que devuelve una tupla con un entero y una cadena
    func cambioDeVelocidad() ->(actual: Int, velocidadEnCadena: String){
        //Constantes que se usan para el retorno de la función
        let actual : Int
        let velocidadEnCadena : String
        
        //Cambia la velocidad según la propiedad actual, cargando primeramente los valores de retorno en
        //las respectivas constantes y posteriormente cambiando la velocidad a la siguiente, menos en el caso de VelocidadAlta
        switch(velocidad){
        //Caso apagado
        case Velocidades.Apagado:
            actual = velocidad.rawValue
            velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
            break
        //Caso de Velocidad Baja
        case Velocidades.VelocidadBaja:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Baja"
            self.velocidad = Velocidades.VelocidadMedia
            break
        //Caso de Velocidad Media
        case Velocidades.VelocidadMedia:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Media"
            self.velocidad = Velocidades.VelocidadAlta
            break
        //Caso de Velocidad Alta
        case Velocidades.VelocidadAlta:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
            break
        }
        //Retornar tupla con velocidad actual, y cadena indicando la velocidad
        return (actual, velocidadEnCadena)
    }
}

//Instancia de la clase Auto
var auto = Auto()

//Bucle for para iterar 20 veces
for i in 1...20 {
    //Variable para recoger la tupla devuelta por la función cambioDeVelocidad
    var tupla = auto.cambioDeVelocidad()
    //Mostrado por consola de los valores formateados con interpolación de variables
    print("\(i). \(tupla.actual), \(tupla.velocidadEnCadena)")
}

