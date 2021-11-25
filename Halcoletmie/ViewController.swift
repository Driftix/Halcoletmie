//
//  ViewController.swift
//  Halcoletmie
//
//  Created by Guilhem Schira on 18/11/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Point d'intérogation car on veut pas d'init()
    var cocktails:[Cocktail]?
    
    private func recupCocktails(){
        //Faire la même chose mais avec un JSON par exemple
        var ingredients =  [Ingredient]()
        
        var ingredient1 = Ingredient(nom:"citron", quantite:1)
        var ingredient2 = Ingredient(nom:"rhum", quantite:1)
        var ingredient3 = Ingredient(nom:"sirop de peche", quantite:2)
        
        ingredients.append(ingredient1)
        ingredients.append(ingredient2)
        ingredients.append(ingredient3)

        var nouveauCocktail = Cocktail(nom:"Rhum au sirop", description:"blablablablabl", ingredients:ingredients)
        self.cocktails!.append(nouveauCocktail)
        
        ingredients =  [Ingredient]()
        
        ingredient1 = Ingredient(nom:"citron", quantite:1)
        ingredient2 = Ingredient(nom:"rhum", quantite:1)
        ingredient3 = Ingredient(nom:"sirop de peche", quantite:2)
        
        ingredients.append(ingredient1)
        ingredients.append(ingredient2)
        ingredients.append(ingredient3)

        nouveauCocktail = Cocktail(nom:"Le ptit juif", description:"blablablablabl", ingredients:ingredients)
        self.cocktails!.append(nouveauCocktail)
        
    }
    
    
    //Récupération de la viewTable
    @IBOutlet weak var cocktailsTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initialisation du tableau de tout les cocktails avec un tableau vide
        self.cocktails = [Cocktail]()
        //Mise en place des cocktails dans le tableau
        recupCocktails()
        
        cocktailsTV.delegate = self
        cocktailsTV.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cocktails!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cocktailsTV.dequeueReusableCell(withIdentifier: "CelluleListeCocktails") as! CocktailTableViewCell
        for i in 0...self.cocktails!.count-1 {
            if(indexPath).row == i{
                
                cell.configure(title: self.cocktails?[i].getNom() ?? "")
            }
        }
        return cell
//        if indexPath.row == 0 {
//
//        }
//        let cell = cocktailsTV.dequeueReusableCell(withIdentifier: "CelluleListeCocktails")!
//        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let cocktailViewController = storyboard.instantiateViewController(identifier: "cocktailViewController") as! CocktailViewController
            cocktailViewController.name = "Mojito"
            self.navigationController?.pushViewController(cocktailViewController, animated: true)
        }
    }
    
}

