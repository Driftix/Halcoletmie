//
//  Cocktails.swift
//  Halcoletmie
//
//  Created by Guilhem Schira on 18/11/2021.
//

import Foundation
class Cocktails{
    private var nom:String
    private var description:String
    private var ingredients:[Ingredient]
    
    init(nom:String, description:String, ingredients:[Ingredient]) {
        self.nom = nom
        self.description = description
        self.ingredients = ingredients
    }
    func getNom()->String{
        return self.nom
    }
                       
}
