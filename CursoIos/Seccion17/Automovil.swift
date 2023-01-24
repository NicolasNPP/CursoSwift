//
//  Automovil.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 24/01/2023.
//

import Foundation

class Automovil {
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 0
    var encendido = false
    
    func on() {
        encendido = true
    }
    
    func off() {
        encendido = false
    }
    
    func speedUp() -> Bool {
        return true
    }
}

