//
//  ViewController.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 10/28/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import UIKit
import Cosmos

class RecipesDetailsViewController: UIViewController {

    @IBOutlet weak var recipesImage: UIImageView!
    @IBOutlet weak var recipesNameLabel: UILabel!
    @IBOutlet weak var starRatingView: CosmosView!
    @IBOutlet weak var shortTextRecipes: UILabel!
    @IBOutlet weak var prepInLabel: UILabel!
    @IBOutlet weak var readyInLabel: UILabel!
    @IBOutlet weak var cookLabel: UILabel!
    @IBOutlet weak var preparation: UILabel!
    
    var recipes : Recipes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateUI(){
        
        recipesImage.image = UIImage(data:recipes?.image! as! Data,scale:1.0)
        recipesNameLabel.text = recipes?.title
        starRatingView.rating = (recipes?.rating)!
        shortTextRecipes.text = recipes?.shortText
        prepInLabel.text = String(format: "Priprema: %i", (recipes?.preparation)!)
        readyInLabel.text = String(format: "Spremno za: %i", (recipes?.readyIn)!)
        cookLabel.text = String(format: "Kuvanje: %i", (recipes?.cook)!)
        preparation.text = recipes?.preparationText

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

