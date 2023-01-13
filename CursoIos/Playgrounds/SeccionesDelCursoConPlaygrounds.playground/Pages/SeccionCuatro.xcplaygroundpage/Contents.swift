import Foundation

//--Strings--

//String en una linea

let myString = "Sección 4 del curso"

//String vacio
var emptyString = ""
var emptyString2 = String()

//String en lineas múltiples

let multipleString = """
Bienvenidos al curso de Swift
soy Nicolás Pepe
"""
//--Caracteres--

//Caracter
let myCaracter = "\u{E9}"
let myCaracter2 = "\u{24}"

//Caracter especial
let myString2 = "Bienvenidos \nsoy Nicolás Pepe"

// Emojis
let myEmoji = "\u{1F496}"

//--Concatenación e Interpolación--

//Concatenación
var myString3 = "Bienvenidos" + " " + "soy "
myString3 += "Nicolás Pepe"

//Interpolación
let fullName = "Nicolás Pepe"
let myPersonalInfo = "Mi nombre es \(fullName)"

//--Comparación--

let name1 = "Nico"
let name2 = "Guillermo"
let name3 = "Nico"
let content = "Mi nombre es \(name1)"

//No iguales - False
name1 == name2

//Iguales - True
name1 == name3

//Contenido
content.contains(name1)

//Vacía
emptyString.isEmpty

//Recorrido
for valor in content {
    print(valor)
}
