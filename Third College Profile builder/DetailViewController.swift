//
//  DetailViewController.swift
//  Third College Profile builder
//
//  Created by Student on 2/9/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var numberOfStudentsTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var college: College!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfStudentsTextField.text = String(college.numberOfStudents)
        locationTextField.text = college.location
        collegeTextField.text = college.name
        imageView.image = college.image

    }
    @IBAction func onTappedSaveButton(sender: AnyObject) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.numberOfStudents = Int(numberOfStudentsTextField.text!)!
        
    }

}
