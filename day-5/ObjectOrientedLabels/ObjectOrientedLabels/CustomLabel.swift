//
//  CustomButton.swift
//  ObjectOrientedLabels
//
//  Created by flatironstudent on 3/5/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import Foundation
import UIKit

class CustomLabel {
    
    var view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    func success() {
        let label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Success"
        self.view.addSubview(label)
    }
    
    func warning() {
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Warning"
        self.view.addSubview(label)
    }
}