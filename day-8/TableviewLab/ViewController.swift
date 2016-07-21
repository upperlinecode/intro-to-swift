//
//  ViewController.swift
//  TableviewLab
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var myLandmark = Landmark()
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = myLandmark.name {
            nameLabel.text = "Name: " + name
        }
        
        if let fact = myLandmark.funFact {
            funFactLabel.text = "Fun Fact: " + fact
        }
        
        if let coord = myLandmark.loc {
            centerOnLocation(coord, mapview: myMap)
        }
        
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



}

