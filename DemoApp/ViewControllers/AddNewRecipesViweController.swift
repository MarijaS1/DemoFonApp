//
//  AddNewRecipesViweController.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/13/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import UIKit
import Cosmos
import CoreData

class AddNewRecipesViewController: UIViewController {

    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var shortDescTextField: UITextField!
    @IBOutlet weak var prepInTextField: UITextField!
    @IBOutlet weak var readyInTextField: UITextField!
    @IBOutlet weak var cookTextField: UITextField!
    @IBOutlet weak var preparationTextField: UITextView!
    @IBOutlet weak var addNewRecipesButton: UIButton!
    @IBOutlet weak var recipesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addRecipesButtoPressed(_ sender: UIButton) {
        if valid() {
             var recipes = NSEntityDescription.insertNewObject(forEntityName: "Recipes", into: AppDelegate.sharedInstance.persistentContainer.viewContext) as! Recipes
            recipes.cook = Int16(cookTextField.text!)!
            recipes.image = UIImagePNGRepresentation(recipesImage.image!) as! NSData
            recipes.preparation = Int16(prepInTextField.text!)!
            recipes.rating = cosmosView.rating
            recipes.readyIn = Int16(readyInTextField.text!)!
            recipes.shortText = shortDescTextField.text
            recipes.preparationText = preparationTextField.text
            
            AppDelegate.sharedInstance.saveContext()
//            CoreDataManager.sharedInstance.insertRecipes(recipes: recipes)
        }
    }
    
    func valid() -> Bool{
        if nameTextField.text != "" && shortDescTextField.text != "" && prepInTextField.text != "" && readyInTextField.text != "" && cookTextField.text != "" && preparationTextField.text != "" {
            
            return true
        }else if nameTextField.text == "" {
            showPopup(with: "Niste uneli naziv recepta")
        }else if shortDescTextField.text == "" {
            showPopup(with: "Niste uneli kratak opis")
        }else if prepInTextField.text == "" {
            showPopup(with: "Niste uneli koliko traje priprema")
        }else if readyInTextField.text == "" {
            showPopup(with: "Niste uneli za koliko vremena je spremno")
        }else if cookTextField.text == "" {
            showPopup(with: "Niste uneli koliko je vreme kuvanja")
        }else if preparationTextField.text == "" {
            showPopup(with: "Niste uneli opis pripreme")
        }
        return false
    }
    
    func showPopup(with message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
