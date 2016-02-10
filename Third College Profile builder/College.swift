//
//  College.swift
//  Third College Profile builder
//
//  Created by Student on 2/10/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class College: NSObject {
    var name = ""
    var location = ""
    var numberOfStudents = 0
    var image = UIImage(named: "other")
    
    convenience init(name: String, location: String, numberOfStudents: Int, image: UIImage) {
        self.init()
        self.name = name
        self.location
        self.numberOfStudents = numberOfStudents
        self.image = image
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }

}
