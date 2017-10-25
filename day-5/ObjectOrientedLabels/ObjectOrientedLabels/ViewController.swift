//
//  ViewController.swift
//  ObjectOrientedLabels
//
//  Created by flatironstudent on 3/5/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Success(_ sender: Any) {
        func success(sender: UIButton) {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 225, height: 40))
            label.center = CGPoint(x: 160, y: 284)
            label.textAlignment = NSTextAlignment.center
            label.text = "Success"
            label.backgroundColor = UIColor(red: 0.361, green: 0.722, blue: 0.361, alpha: 1)
            self.view.addSubview(label)
        }
    }
    
 
}

