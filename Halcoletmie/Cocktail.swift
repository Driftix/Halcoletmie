//
//  cocktail.swift
//  Halcoletmie
//
//  Created by Corentin Breal on 25/11/2021.
//

import Foundation

class Cocktail{
    
    
    var nom: String
    var description: String
    var ingredients:[Ingredient]?
    
    init(nom: String, description: String, ingredients: [Ingredient]?){
        self.nom = nom
        self.description = description
        self.ingredients = ingredients
    }
    
    func getNom() -> String{
        return self.nom
    }
    
}
