/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 5 del curso de Swift.
  -Seccion 6
    -Funciones
    -Funciones sin parámetro
    -Funciones de un solo parámetro
    -Funciones con múltiples parámetros y valor de retorno
    -Definir valores por default
    -Valores múltiples de retorno en una función Swift
    -Añadir nombre a parámetros externos
    -Closures
*/

import Foundation

//--Funciones--

//Funciones simples

func hi(){
    print("Hi")
}

hi()

//Funciones con un parámetro

func sqareNumber(number:Int){
    let square = number * number
    print(square)
}

sqareNumber(number:12)


//Funciones con múltiples parámetros y valor de retorno

func Cube(number:Int) -> Int{
    let cube = number * number * number
    return cube
}

let result = Cube(number: 4)

print(result)

func hiHuman(name:String,msg:String){
    print("Hola \(name) \(msg)")
}

hiHuman(name: "Nicolás", msg: "buenas tardes")

//Definir valores por default

func hiHuman2(name:String,msg:String = "te damos la bienvenida al curso de Swift"){
    print("Hola \(name) \(msg)")
}

hiHuman2(name: "Nicolás")

//Valores múltiples de retorno en una función Swift

func namesList() -> [String]{
        let namesArray = ["Nicolás","Nahuel","Marcos"]
        return namesArray
}

var names = namesList()

print(names)
print(names[0])

//Añadir nombre a parámetros externos

func averageMark(math one: Double, phy two: Double, chem three: Double) -> Double {
    return (one+two+three)/3
}

let myGrade = averageMark(math: 80, phy: 44, chem: 49)

print(myGrade)

//--Introducción a Closures--
//Bloque de código que se puede almacenar en variable o constante.

/*
Estructura:
{
(parametros) -> tipo-valor-retorno in
    codigo
}
*/

let myFirstClosure = {
    ( one: Double, two: Double, three: Double) -> Double in
    return (one+two+three)/3
}
