//
//  Restaurant.swift
//  FoodPin
//
//  Created by Cayden on 2015. 4. 3..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Restaurant: NSManagedObject {

    @NSManaged var isVisited: NSNumber
    @NSManaged var image: NSData
    @NSManaged var location: String
    @NSManaged var name: String
    @NSManaged var type: String

}
