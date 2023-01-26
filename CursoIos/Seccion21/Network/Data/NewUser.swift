//
//  NewUser.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import Foundation

struct NewUser: Encodable {
    let name: String
    let email: String
    let gender: String
    let status: String
}
