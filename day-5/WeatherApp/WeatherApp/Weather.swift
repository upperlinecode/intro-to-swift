//
//  File.swift
//  WeatherApp
//
//  Created by flatironstudent on 3/10/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation

struct Weather {
    
    let newYorkForcast: [String: [String:String]] = [
        "Monday" : ["temperature":"71", "description": "partly cloudy"],
        "Tuesday" : ["temperature":"65", "description": "raining all day"],
        "Wednesday" : ["temperature":"79", "description": "thunderstorms"],
        "Thursday" : ["temperature":"76", "description": "sunny"],
        "Friday" : ["temperature":"77", "description": "sunny"]
    ]
    
    let pittsburghForcast: [String: [String:String]] = [
        "Monday" : ["temperature":"66", "description": "cloudy"],
        "Tuesday" : ["temperature":"58", "description": "cloudy"],
        "Wednesday" : ["temperature":"60", "description": "partly sunny"],
        "Thursday" : ["temperature":"65", "description": "sunny"],
        "Friday" : ["temperature":"71", "description": "clouds/high winds"]
    ]
    
    let bostonForcast: [String: [String:String]] = [
        "Monday" : ["temperature":"55", "description": "partly cloudy"],
        "Tuesday" : ["temperature":"58", "description": "partly sunny"],
        "Wednesday" : ["temperature":"62", "description": "light afternoon rain"],
        "Thursday" : ["temperature":"60", "description": "tornados"],
        "Friday" : ["temperature":"57", "description": "sunny"]
    ]
    
    let durhamForcast: [String: [String:String]] = [
        "Monday" : ["temperature":"70", "description": "very cloudy"],
        "Tuesday" : ["temperature":"78", "description": "thunderstorms"],
        "Wednesday" : ["temperature":"77", "description": "possible tornados"],
        "Thursday" : ["temperature":"81", "description": "sunny"],
        "Friday" : ["temperature":"75", "description": "sunny"]
    ]
}