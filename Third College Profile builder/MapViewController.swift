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
   
    var map = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        textView.text = map
        findLocation(map)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let locationName = textView.text!
        textView.resignFirstResponder()
        findLocation(locationName)
        return true
    }
    
    func findLocation(locationName: String){
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(locationName) { (placemarks, error) -> Void in
            if error != nil{
                print(error)
            }
            else {
                if placemarks!.count > 1 {
                    let alert = UIAlertController(title: "Select Location", message: nil, preferredStyle: .ActionSheet)
                    for placemark in placemarks! {
                        let locationAction = UIAlertAction(title: placemark.name!, style: .Default, handler: { (action) -> Void in
                            self.displayMap(placemark)
                        })
                        alert.addAction(locationAction)
                    }
                    let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
                    alert.addAction(cancelAction)
                    self.presentViewController(alert, animated: true, completion: nil)
                }
                else if placemarks?.count == 1 {
                    let placemark = placemarks!.first! as CLPlacemark
                    self.displayMap(placemark)
                }
            }
        }
    }
    
    func displayMap(placemark: CLPlacemark){
        textView.text = placemark.name
        let center = placemark.location!.coordinate
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegionMake(center, span)
        let pin = MKPointAnnotation()
        pin.coordinate = center;
        pin.title = placemark.name
        mapView.addAnnotation(pin)
        mapView.setRegion(region, animated: true)
    }
}
