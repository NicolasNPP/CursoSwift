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
