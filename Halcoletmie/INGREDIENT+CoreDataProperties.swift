//
//  INGREDIENT+CoreDataProperties.swift
//  Halcoletmie
//
//  Created by Corentin Breal on 25/11/2021.
//
//

import Foundation
import CoreData


extension INGREDIENT {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<INGREDIENT> {
        return NSFetchRequest<INGREDIENT>(entityName: "INGREDIENT")
    }

    @NSManaged public var id_ingredient: Int64
    @NSManaged public var nom_ingredient: String?
    @NSManaged public var quant_ingredient: Double

}

extension INGREDIENT : Identifiable {

}
