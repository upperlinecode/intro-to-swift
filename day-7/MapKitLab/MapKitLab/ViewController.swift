//
//  ViewController.swift
//  MapKitLab
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    let locDictionary: [String: CLLocation] = ["Upperline": CLLocation(latitude: 40.709, longitude: -74.010),
                         "Empire State Building": CLLocation(latitude: 40.748, longitude: -73.986),
                         "The Great Pyramids": CLLocation(latitude: 29.979, longitude: 31.134),
                         "Eiffel Tower": CLLocation(latitude: 48.858, longitude: 2.295)
                         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func centerOnLocation(loc: CLLocation, mapview: MKMapView) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(loc.coordinate, 1000, 1000)
        mapview.setRegion(coordinateRegion, animated: true)
        
        let annot = MKPointAnnotation()
        annot.coordinate = loc.coordinate
        mapview.addAnnotation(annot)
    }
    
    @IBAction func upperlineButtonTapped(sender: AnyObject) {
        if locDictionary.keys.contains("Upperline") {
            centerOnLocation(locDictionary["Upperline"]!, mapview: myMap)
        }
    }
    
    @IBAction func esbButtonTapped(sender: AnyObject) {
        if locDictionary.keys.contains("Empire State Building") {
            centerOnLocation(locDictionary["Empire State Building"]!, mapview: myMap)
        }
        
    }
    
    @IBAction func greatpyramidButtonTapped(sender: AnyObject) {
        if locDictionary.keys.contains("The Great Pyramids") {
            centerOnLocation(locDictionary["The Great Pyramids"]!, mapview: myMap)
        }
        
    }
    
    @IBAction func eiffelTowerButtonTapped(sender: AnyObject) {
        if locDictionary.keys.contains("Eiffel Tower") {
            centerOnLocation(locDictionary["Eiffel Tower"]!, mapview: myMap)
        }
    }
    
    


}

