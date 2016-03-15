//
//  ViewController.swift
//  ObjectOrientedLabels
//
//  Created by flatironstudent on 3/5/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var labelGenerator: CustomLabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelGenerator = CustomLabel(view: self.view)
    }
    
    
    @IBAction func success(sender: UIButton) {
        if labelGenerator?.success() != nil {
            print("label generated")
        } else {
            print("Error: label generator is nil")
        }
    }
    
    @IBAction func warning(sender: UIButton) {
        if labelGenerator?.warning() != nil {
            print("label generated")
        } else {
            print("Error: label generator is nil")
        }
    }
    
    @IBAction func info(sender: UIButton) {
        if labelGenerator?.info() != nil {
            print("label generated")
        } else {
            print("Error: label generator is nil")
        }
    }
}

