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
        let label = UILabel(frame: CGRectMake(0, 0, 225, 40))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Success"
        label.backgroundColor = UIColor(red: 0.361, green: 0.722, blue: 0.361, alpha: 1)
        self.view.addSubview(label)
    }
    
    func warning() {
        let label = UILabel(frame: CGRectMake(0, 0, 200, 50))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Warning"
        label.backgroundColor = UIColor(red: 0.851, green: 0.325, blue: 0.31, alpha: 1)
        self.view.addSubview(label)
    }
    
    func info() {
        let label = UILabel(frame: CGRectMake(0, 0, 250, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "Message to Users"
        label.backgroundColor = UIColor(red: 0.31, green: 0.565, blue: 0.851, alpha: 1)
        self.view.addSubview(label)
    }
}