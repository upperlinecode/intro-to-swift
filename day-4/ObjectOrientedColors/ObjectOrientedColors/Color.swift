//
//  Color.swift
//  ObjectOrientedColors
//
//  Created by flatironstudent on 2/29/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation
import UIKit

struct Color {
    
    func random()->UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        let alpha = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}