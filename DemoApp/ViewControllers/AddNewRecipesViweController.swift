//
//  AddNewRecipesViweController.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/13/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import UIKit

class AddNewRecipesViewController: UIViewController {

    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var shortDescTextField: UITextField!
    @IBOutlet weak var prepInTextField: UITextField!
    @IBOutlet weak var readyInTextField: UITextField!
    @IBOutlet weak var cookTextField: UITextField!
    @IBOutlet weak var preparationTextField: UITextView!
    @IBOutlet weak var addNewRecipesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addRecipesButtoPressed(_ sender: UIButton) {
    }
}
