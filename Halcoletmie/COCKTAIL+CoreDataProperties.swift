//
//  COCKTAIL+CoreDataProperties.swift
//  Halcoletmie
//
//  Created by Corentin Breal on 25/11/2021.
//
//

import Foundation
import CoreData


extension COCKTAIL {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<COCKTAIL> {
        return NSFetchRequest<COCKTAIL>(entityName: "COCKTAIL")
    }

    @NSManaged public var description_cocktail: String?
    @NSManaged public var id_cocktail: Int64
    @NSManaged public var nom_cocktail: String?

}

extension COCKTAIL : Identifiable {

}
