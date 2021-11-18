//
//  Ingredients.swift
//  Halcoletmie
//
//  Created by Guilhem Schira on 18/11/2021.
//

import Foundation
class Ingredient{
    private var quantite:Double
    private var nom:String
    
    init(nom:String, quantite:Double) {
        self.quantite = quantite
        self.nom = nom
    }
}
