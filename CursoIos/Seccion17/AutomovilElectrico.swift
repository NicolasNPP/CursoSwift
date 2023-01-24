//
//  AutomovilElectrico.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 24/01/2023.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100
    
    func baterycharge() -> String {
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
