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
    @IBOutlet weak var ingredientsTableView: UITableView!
    @IBOutlet weak var prepInLabel: UILabel!
    @IBOutlet weak var readyInLabel: UILabel!
    @IBOutlet weak var cookLabel: UILabel!
    @IBOutlet weak var recipesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

