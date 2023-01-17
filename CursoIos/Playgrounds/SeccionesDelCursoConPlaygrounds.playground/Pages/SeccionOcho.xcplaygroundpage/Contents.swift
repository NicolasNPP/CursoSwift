/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 8 del curso de Swift.
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

//--Manejo de errores--

func sum (firstNumber: Int?, secondNumber: Int?) throws -> Int{
    
    //Lanzamos errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    //Realizamos suma
    return firstNumber! + secondNumber!
}

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

//Al colocar un numero Nil se produce el error
do{
    print(try sum(firstNumber: -100,secondNumber: 50))
} catch SumError.firstNumberNil {
    print("Primer número nulo")
} catch SumError.secondNumberNil {
    print("Segundo número nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay un número negativo. FirstNumber: \(firstNumber) SecondNumber: \(secondNumber)")
}

//--Type casting--

let myString = "Nico"
let myInt = 28

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Nico Pepe"
myClass.age = 29

let myArray: [Any] = [myString, myInt, myClass]

//Type casting


for item in myArray {
    if item is String {
        //Downcasting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        let myItemString = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemString)")
    } else if item is MyClass {
        let myItemString = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemString)")
    }
}

//--Extensiones--

extension Double {
    var km: Double {
        return self / 1000
    }
    
    var m: Double {
        return self
    }
    
    var cm: Double {
        return self * 100
    }
}

let myMeters: Double = 5000

print(myMeters.km)

//--Protocolos--

protocol PersonProtocol {
    var name: String {get set} //Permite asignar y leer el valor
    var age: Int {get set}
    
    func fullName() -> String
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    var lenguaje: String
    
    func fullName() -> String {
        return "El nombre es \(name), lenguaje favorito \(lenguaje) con \(age) años"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), sujeto \(subject) con \(age) años"
    }
}

var programmer = Programmer(name: "Nicolás", age: 28, lenguaje: "Swift")

print(programmer.fullName())

//Protocolo delegado

class FirstClass: SecondClassProtocol {
    
    func callSecond(){
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() {
        print("Hola")
    }
    
}

protocol SecondClassProtocol {
    
    func call ()
    
}

class SecondClass {
    var delegate: SecondClassProtocol?

    func callFirst() {
        sleep(5)
        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()

//--Generics//

func swatTwoInts(a: inout Int, b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var myFristInt = 5
var mySecondint = 10

print("El primer entero es \(myFristInt) y el segundo es \(mySecondint)")

swatTwoInts(a: &myFristInt, b: &mySecondint)

print("El primer entero es \(myFristInt) y el segundo es \(mySecondint)")

func swatTwoGenerics<T>(a: inout T, b: inout T){
    let tempA = a
    a = b
    b = tempA
}

swatTwoGenerics(a: &myFristInt, b: &mySecondint)
print("El primer entero es \(myFristInt) y el segundo es \(mySecondint)")

//--Asociatividad y controles avanzados--

let myInt2: Int = (2 + ((3 % 4) * 5))
let myInt3: Int = (((2 + 3) % 4) * 5)
