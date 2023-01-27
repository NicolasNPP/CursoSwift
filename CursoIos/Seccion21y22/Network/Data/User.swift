//
//  User.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import Foundation

struct User: Codable {
    let id: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    
    enum codingKeys: String, CodingKey {
        case id
        case name
        case email
        case gender
        case status
    }
}
