/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 7 del curso de Swift.
  -Seccion 8
    -Optionals desde cero
    -Variables Optional
    -Optional bindings
    -Optional Chaining
    -Guard let
    -Manejo de errores
    -Type Casting
    -Tipos anidados
    -Extensiones
    -Protocolos
    -Protocolo delegado
    -Generics
    -Automatic reference Counting (ARC)
    -Seguridad y manejo de memoria desde cero
    -Control de acceso desde cero
    -Asociatividad y Operadores Avanzados
*/

import Foundation

//--Optionals--

//Variables opcionales

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Nicolás"
let myWrongIntNumber = Int(myWrongStringNumber)
//Al transformar una cadena de texto en entero nos devuelve un Int opcional, por eso me devuelve int en la declaración incorrecta.

var myOptionalString: String?

if myOptionalString != nil {
    print(myOptionalString)
} else {
    print("La variable es nula")
}
    
//Optional bindings (Enlaces opcionales). Sirve para averiguar si el valor de una variable es distinto a nulo.

var myOptionalString2: String?

myOptionalString2 = "Nicolás"
if let myString = myOptionalString2 {
    print(myString)
}

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

print(myStudent.name)

//Enlace opcional encadenado

myStudent.name = "Nicolás"

let myBook = Book()
myBook.pages = 450

myStudent.book = myBook

if let pages = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) paginas")
} else {
    print ("El libro no tiene paginas")
}

//Guard let (Con guard let se ejecuta el bloque de codigo si la variable es nula)

var myOptionalString3: String?

func myFunction() {
    guard let myString = myOptionalString3 else {
        print("myString es nulo")
        return
    }
    
    print("El valor de myString3 es \(myString)")
}

myFunction()

myOptionalString3 = "Dando valor a la función"

myFunction()

