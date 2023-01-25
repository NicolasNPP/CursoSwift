//
//  Pais+CoreDataProperties.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//
//

import Foundation
import CoreData


extension Pais {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pais> {
        return NSFetchRequest<Pais>(entityName: "Pais")
    }

    @NSManaged public var nombre: String?

}

extension Pais : Identifiable {

}
