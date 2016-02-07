//
//  ViewController.swift
//  Third College Profile builder
//
//  Created by Student on 2/6/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var colleges = ["Augustana", "Illinois", "Wisconson"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

