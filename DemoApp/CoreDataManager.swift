//
//  CoreDataManager.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/1/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let managedObjectContext = AppDelegate.sharedInstance.persistentContainer.viewContext
    
    // Can't init is singleton
    private init() { }
    
    // MARK: Shared Instance
    
    static let sharedInstance = CoreDataManager()
    
    func insertRecipes(recipes:  Recipes){
        
       
//        recipesObject = recipes
        
        
    }
    
    func fetchAllRecipes() -> [Recipes] {
        var recipes = [Recipes]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Recipes")
//        let predicate = NSPredicate(format: "firstName = %d", argumentArray: [allContacts[indexPath.row].firstName!])
//        fetchRequest.predicate = predicate
        do {
            recipes = try managedObjectContext.fetch(fetchRequest) as! [Recipes]
        } catch {
            print("No contacts found")
        }
        return recipes
    }
}
