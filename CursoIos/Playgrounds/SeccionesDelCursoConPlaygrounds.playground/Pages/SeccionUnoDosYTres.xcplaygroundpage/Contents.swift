/*
 En esta hoja de playground se encuentra todo lo relacionado a las secciones 1, 2 y 3 del curso de Swift.
  -Sección 1
    -Introducción
  -Sección 2
    -Xcode
    -Playgrounds
  -Sección 3
    -Bases de Swift
    -Palabras reservadas
    -Comentarios
    -Constantes y variables
    -Declaraciones Múltiples
    -Tipos de datos comunes desde 0
    -Asignación implícita y explicita
*/

import Foundation

//--Constantes y variables--

//Variables
var str = "Hello, playground"
str = "Otro valor"

//Constantes
let stringConstante = "Una constante"

/*
 stringConstante = "Otro valor en constante"
 No permite ya que es una constante y no una variable, habria que cambiarlo de let a var.
*/

//--Declaraciones múltiples--

let myDate = "19-11-1994", myName = "Nicolás Pepe", myPlace = "Argentina", aInt = 0

//--Tipos de datos comunes--

//Enteros
var x = 18

//Double
var y =  18.8

//Caracteres aritméticos
var addInt = x + 2
var substractDouble = y - 2
var multiplyInt = x * 2
var divideInt = x / 2

//Casteo
var addCast = Double(x) + y

//--Asignación explicita e implícita--

var w: Double = 2.2
var z: Int = 2
var text: String = "Asignación explicita"
