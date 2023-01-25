//
//  User.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import Foundation

struct User: Decodable {
    let id: Int
    let name: String
    let email: String
    let gender: String
    let status: String
}
