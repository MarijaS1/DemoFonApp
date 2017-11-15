//
//  Recipes+CoreDataProperties.swift
//  DemoApp
//
//  Created by Marija Sumakovic on 11/1/17.
//  Copyright © 2017 Marija Sumakovic. All rights reserved.
//
//

import Foundation
import CoreData

extension Recipes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipes> {
        return NSFetchRequest<Recipes>(entityName: "Recipes")
    }

    @NSManaged public var cook: Int16
    @NSManaged public var image: NSData?
    @NSManaged public var preparation: Int16
    @NSManaged public var preparationText: String?
    @NSManaged public var rating: Double
    @NSManaged public var readyIn: Int16
    @NSManaged public var shortText: String?
    @NSManaged public var title: String?

}
