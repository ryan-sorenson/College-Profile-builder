//
//  MapViewController.swift
//  Third College Profile builder
//
//  Created by Student on 5/25/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    var college : College!
    var colleges : [College] = []
    
    var map = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self

    }

}
