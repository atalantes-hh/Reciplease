//
//  ListRecipes.swift
//  Reciplease
//
//  Created by Rodolphe Schnetzer on 27/08/2020.
//  Copyright © 2020 Rodolphe Schnetzer. All rights reserved.
//

import UIKit

class ListRecipes: UITableViewController{
    
    @IBOutlet var listRecipesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listRecipesTableView.register(UINib(nibName: "RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: "recipeCell")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 2
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = listRecipesTableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as? RecipeTableViewCell else { return UITableViewCell() }
        cell.configure(titleRecipe: "Salade", ingredient: "salade , tomate", timeRecipe: "11", caloriesRecipe: "1200", recipeIm: "image")
        return cell
        
      }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "segueToRecipe", sender: nil)
    }
}


