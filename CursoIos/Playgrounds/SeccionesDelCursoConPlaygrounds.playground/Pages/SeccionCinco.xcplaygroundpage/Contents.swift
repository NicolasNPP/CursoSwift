/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 5 del curso de Swift.
  -Seccion 5
    -Boleanos y valores lógicos
    -Colecciones Desde Cero
    -Arreglos : Declaración, Acceso, Añadir, Reemplazar y Borras Datos
    -Diccionarios
    -Tuplas
    -Enums
    -Range operator
    -Estructuras de control desde 0
    -Operadores en Swift desde 0
    -Operadores lógicos desde 0
    -If - else
    -Condicionales anidadas
    -Switch
    -Estructuras repetitivad
    -Bucles o Ciclos desde Cero
    -Bucle o ciclo for in
    -Bucle o ciclo while
    -Bucle o ciclo repeat while.
*/

import Foundation

//--Boleanos--

var estudios = "Grado"

var cedulaProfesional = true
var cedulaMaestria = false
var salario = 0

if cedulaProfesional {
    salario = 9000
} else {
    salario = 8000
}
 
print(salario)

//--Colecciones--

//Arreglos

var numArray = [1,2,3]
let inmutableArray = [3,2,1]

    //Agregar valores a arreglos
numArray.append(5)
numArray.insert(4, at: 3)

print(numArray)

    //Eliminar valores a arreglos

numArray.removeLast()
numArray.remove(at: 3)

print(numArray)

    //Eliminar todo el arreglo

numArray.removeAll()

print(numArray)

    //Arreglo vacio de tipo Int

var intArray:[Int] = []

print(intArray)

//Diccionarios

var myClassicDictionary = Dictionary<Int, String>()
var myModernDictionary = [Int: String]()

    //Añadir datos
myModernDictionary = [001:"Nicolas", 002:"Raul"]

    //Añadir un solo dato
myModernDictionary[003] = "Ana"
myModernDictionary[004] = "Sara"
myModernDictionary[005] = "Pedro"

    //Acceso a un dato
myModernDictionary[002]

    //Cambiar dato especifico
myModernDictionary[002] = "Pepe"
myModernDictionary[002]

    //Borrar un dato
myModernDictionary[002] = nil

//--Tuplas-- (Permite varios tipos de dato a la vez)

var person = ("Nicolas","Pepe",28,1.86)

print(person.0)

//Declaracion de variables independientes
var (name, surname, date, hight) = person

print(name)

var personNamedTuples = (name: "Nicolas",surname: "Pepe",date: 28, hight: 1.86)

print(personNamedTuples.name)

//--Enums--

enum PersonalData{
    case name
    case surname
    case address
    case phone
}

var currentData: PersonalData = .name
var input = "Nicolás"

currentData = .phone
input = "111212112"

// Enums con valores asociados

enum ComplexPersonalData{
    case name(String)
    case surname(String, String)
    case address(String, Int)
    case phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Nicolás")

complexCurrentData = .address("Calle Test", 5)

// Enums con el mismo valor

enum RawPersonalData: String {
    case name
    case surname
    case address
    case phone
}

RawPersonalData.name.rawValue

//--Operadores de rango--

var exampleArray = [0,1,2,3,4,5,6,7,8,9]

//Operador de rango doble lado

var subSetArray = exampleArray[1...3]
var subSetArray2 = exampleArray[1..<5]

//Operador de rango lado único

var subSetArray3 = exampleArray[...3]
var subSetArray4 = exampleArray[5...]

//Operador de rango cerrado

var subSetArray5 = exampleArray[5...9]
 
var closedRange = [2...4]
var subArray = Array(closedRange[0])
subArray[2]

//--Operadores--

var x = 1
var y = 2

//Igual a

print(x == y)

//Diferente a

print(x != y)

//Menor que, Mayor que, Menor o igual que, Mayor o igual que

print(x<y)
print(x>y)
print(x<=y)
print(x>=y)

//--Estructuras de control--

// If

var age = 25
var money = 15000
var genreF = true

if (age >= 22 || money > 12000) && genreF{
    print("Ingreso")
} else {
    print("No ingreso")
}

// Switch

let country = "EEUU"
let age2 = 28

switch country {
case "ES":
    print("Idioma español")
case "MX":
    print("Idioma español")
case "AR":
    print("Idioma español")
case "EEUU":
    print("Idioma ingles")
default:
    print("Idioma sin asignar")
}

switch age2{
case 0,1,2:
    print("Sos un bebe")
case 3...18:
    print("No puedes ingresar a la discotecta")
case 18..<100:
    print("Puedes ingresar")
default:
    print("😡 Ingresa bien tus datos")
}

enum YourData {
    case name
    case surname
    case address
    case phone
}

let data: YourData = .name

switch data {
case .name:
    print("Estamos editando el nombre")
case .surname:
    print("Estamos editando el apellido")
case .address:
    print("Estamos editando la dirección")
case .phone:
    print("Estamos editando el teléfono")
}

//--Ciclos--

//For in

var count = 0

for numero in 1...4 {
    count = count+1
    print(numero)
}

var countrys = ["MX": "Mexico","EUA": "Estados Unidos","JP": "Japon"]

for (country, name) in countrys {
    print("\(country) -- \(name)")
}

//While

var age1 = 20

while age1 < 30 {
    age1 += 1
    print("No puedes ingresar")
}

//Repeat while

var number: Int
var n = 0

repeat{
    n += 1
    number = Int(arc4random_uniform(10))
    
    print("El ciclo lleva \(n) cantidad de repeticiones")
} while(number != 8)
