/*
 En esta hoja de playground se encuentra todo lo relacionado a la seccion 7 del curso de Swift.
  -Seccion 7
    -La Programación Orientada a Objetos Desde Cero
    -Introducción a las estructuras, propiedades y métodos
    -Introducción a clases, instancias y uso de objetos
    -Estructura vs Clase : Copia vs Referencia
*/

import Foundation

//--Introducción a las estructuras, propiedades y métodos--

struct squares {
    var width = 10
    var height = 10
    
    func area() -> Int {
        return width * height
    }
}

var mySquare = squares()

print(mySquare.height)

var squareArea = mySquare.width * mySquare.height

print(squareArea)
print(mySquare.area())

//--Introducción a clases, instancias y uso de objetos--

class auto {
    var color = "rojo"
    var numberWheels = 4
    var price = 0
    
    func on () -> Bool{
        return true
    }
    
    func off () -> Bool{
        return true
    }
    
    func speed () -> Bool{
        return true
    }
}

struct autoStruct {
    var color = "rojo"
    var numberWheels = 4
    var price = 0
    
    func on () -> Bool{
        return true
    }
    
    func off () -> Bool{
        return true
    }
    
    func speed () -> Bool{
        return true
    }
}

var myCar = auto()
var myCarStruct = autoStruct()


var mySecondCar = auto()
var mySecondCarStruct = autoStruct()

print(myCar.color)

/*
 --Estructura vs Clase : Copia vs Referencia--
    -Referencia vs copia: Una copia es independiente, una referencia apunta a lo mismo.
        Si modificas la referencia se modifican todas las referencias como tal.
    -Clase es por referencia y estructura es por copia
*/
