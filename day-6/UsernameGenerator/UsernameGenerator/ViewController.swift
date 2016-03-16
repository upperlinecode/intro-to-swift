//
//  ViewController.swift
//  UsernameGenerator
//
//  Created by flatironstudent on 3/16/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hometownField: UITextField!
    @IBOutlet weak var animalField: UITextField!
    @IBOutlet weak var newUsername: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func generateUsername(sender: AnyObject) {
        if let hometown = hometownField.text {
            if let animal = animalField.text {
                 newUsername.text = "\(hometown)\(animal)123"
            }
        }
    }
    
}

