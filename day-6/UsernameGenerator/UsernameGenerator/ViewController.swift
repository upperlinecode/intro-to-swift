//
//  ViewController.swift
//  UsernameGenerator
//
//  Created by flatironstudent on 3/15/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var newUsername: UILabel!

    @IBAction func generateUsername(sender: UIButton) {
        let firstInitial = firstName.text?.characters.first
        newUsername.text = "\(firstInitial!)\(lastName.text!)123"
    }

}

