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
    var image = UIImage(named: "school")
    var url = NSURL(string: "")
    var map = ""
    
    convenience init(url: NSURL, map: String, name: String, location: String, numberOfStudents: Int, image: UIImage) {
        self.init()
        self.name = name
        self.location = location
        self.numberOfStudents = numberOfStudents
        self.image = image
        self.url = url
        self.location = location
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
