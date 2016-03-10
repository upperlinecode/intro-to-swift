//
//  ViewController.swift
//  WeatherApp
//
//  Created by flatironstudent on 3/9/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let weather = Weather()
    var forcast: [String: [String:String]] = ["":["":""]]
    
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var headlineTemp: UILabel!
    @IBOutlet weak var headlineDescription: UILabel!
    
    @IBOutlet weak var mondaySmallView: UILabel!
    @IBOutlet weak var tuesdaySmallView: UILabel!
    @IBOutlet weak var wednesdaySmallView: UILabel!
    @IBOutlet weak var thursdaySmallView: UILabel!
    @IBOutlet weak var fridaySmallView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forcast = weather.newYorkForcast
        updateLabels(forcast)
        heading.text = "New York"
    }

    
    
    @IBAction func newYorkWeather(sender: UIButton) {
        forcast = weather.newYorkForcast
        updateLabels(forcast)
        heading.text = "New York"
    }
    
    @IBAction func pittsburghWeather(sender: UIButton) {
        forcast = weather.pittsburghForcast
        updateLabels(forcast)
        heading.text = "Pittsburgh"
    }

    @IBAction func bostonWeather(sender: UIButton) {
        forcast = weather.bostonForcast
        updateLabels(forcast)
        heading.text = "Boston"
    }
    
    @IBAction func durhamWeather(sender: UIButton) {
        forcast = weather.durhamForcast
        updateLabels(forcast)
        heading.text = "Durham"
    }
    
    func updateLabels(forcast: [String: [String:String]]) {
        headlineTemp.text = forcast["Monday"]!["temperature"]
        headlineDescription.text = forcast["Monday"]!["description"]
        
        mondaySmallView.text = "Temperature: \(forcast["Monday"]!["temperature"]!)  Description: \(forcast["Monday"]!["description"]!)"
        tuesdaySmallView.text = "Temperature: \(forcast["Tuesday"]!["temperature"]!)  Description: \(forcast["Tuesday"]!["description"]!)"
        wednesdaySmallView.text = "Temperature: \(forcast["Wednesday"]!["temperature"]!)  Description: \(forcast["Wednesday"]!["description"]!)"
        thursdaySmallView.text = "Temperature: \(forcast["Thursday"]!["temperature"]!)  Description: \(forcast["Thursday"]!["description"]!)"
        fridaySmallView.text = "Temperature: \(forcast["Friday"]!["temperature"]!)  Description: \(forcast["Friday"]!["description"]!)"
    }
}

