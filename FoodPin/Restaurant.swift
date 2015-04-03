//
//  Restaurant.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 20..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import Foundation


class Restaurant  {
    var name:String? = ""
    var type:String = ""
    var location:String?
    var image:String = ""
    var isVisited:Bool = false
    
    init() {
        
    }
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool)
    {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        
        
    }
}