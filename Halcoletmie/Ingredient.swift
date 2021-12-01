//
//  Ingredient.swift
//  Halcoletmie
//
//  Created by Corentin Breal on 25/11/2021.
//

import Foundation

class Ingredient{
    
    
    var nom: String
    var quantite: Double
    
    init(nom: String, quantite: Double){
        self.nom = nom
        self.quantite = quantite
    }
    
    func getNom() -> String{
        return self.nom
    }
    
    func setNom(unNom: String ){
        self.nom = unNom
    }
    
    func getQuantite() -> Double{
        return self.quantite
    }
    
    func setDescription(uneQuantite: Double){
        self.quantite = uneQuantite
    }
    
    
}
