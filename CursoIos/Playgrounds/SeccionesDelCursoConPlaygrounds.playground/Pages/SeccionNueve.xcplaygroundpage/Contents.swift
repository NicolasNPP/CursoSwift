/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 9 del curso de Swift.
  -Seccion 9
    -Sets
    -Algoritmos de colecciones: Ordenar Datos | Sort
    -Algoritmos de colecciones: Ordenar Datos | Sorted
    -Algoritmos de colecciones: Map
    -Algoritmos de colecciones: ForEach | Itinerar sobre un arreglo
    -Otras operaciones para colecciones
*/

import Foundation

//--Sets--//

//Conjuntos
var mySet = Set<String>()
var mySet2: Set<String> = ["Nico","Pepe","32"]

//Insercion de uno en uno
mySet.insert("Thiago")
mySet.insert("Martinez")
mySet.insert("33")

print(mySet)

if mySet.contains("Thiago"){
    print("Existe")
} else {
    print("No existe")
}

mySet.remove("33")
print(mySet)

if let index = mySet.firstIndex(of: "Thiago") {
    mySet.remove(at: index)
}

print(mySet)

// Iteración

mySet.insert("32")
mySet.insert("Rodilez")
mySet.insert("Rosana")
mySet.insert("Bienvenidos al curso de Swift")

for myElement in mySet {
    print(myElement)
}

//Operaciones de conjunto

let myIntSet1: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

print(myIntSet1.intersection(myIntSet2))

//Diferencia simétrica
print(myIntSet1.symmetricDifference(myIntSet2))

//Unión
print(myIntSet1.union(myIntSet2))

//Sustracción
print(myIntSet1.subtracting(myIntSet2))

//--Algoritmos de colecciones: Ordenar datos | Sort--//

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet3: Set = [5,8,1,0,3,9,7,2,4,6]

//Sort (Ordenación)

print(myArray)
myArray.sort()
print("SORT ARRAY")
print(myArray)

//--Algoritmos de colecciones: Ordenar datos | Sorted--//

//Sorted (Ordenación)

print("SORTED")
let myArraySorted = myArray.sorted()
print(myArraySorted)

//--Algoritmos de colecciones: Map--//

var myArray4 = [5,8,1,0,3,9,7,2,4,6]

print("MAP")

let myMapArray = myArray4.map { (myInt) -> Int in
    return myInt + 10
}

print(myMapArray)
 
var myArray5 = [5,8,1,0,3,9,7,2,4,6]

let myDictionary5 = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

myArray5.forEach{ (myInt) in
    print(myInt)
}

myDictionary5.forEach{ (myElement) in
    print(myElement.key)
}

//--Otras operaciones para colecciones--//

var myArray9 = [5,8,1,0,3,9,7,2,4,6]

let myDictionary9 = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet9: Set = [5,8,1,0,3,9,7,2,4,6]

//Count

print(myArray9.count)
print(myDictionary9.count)
print(mySet9.count)

//IsEmpty

print(myArray9.isEmpty)
print(myDictionary9.isEmpty)
print(mySet9.isEmpty)

//Reversed

print(myArray9.reversed() as [Int])
print(myDictionary9.reversed())
print(mySet9.reversed())
