//
//  CoreDataManager.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/1/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import Foundation

class CoreDataManager {
    
    // Can't init is singleton
    private init() { }
    
    // MARK: Shared Instance
    
    static let sharedInstance = CoreDataManager()
    
//    func insertRecipes(recipes:  Recipes){
//        let recipes = NSEntityDescription.insertNewObjectForEntityForName("Recipes", inManagedObjectContext: managedObjectContext) as! Recipes
//
//    }
}
