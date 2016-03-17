//
//  ViewController.swift
//  PigLatinizer
//
//  Created by flatironstudent on 3/17/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pigLatinizedLabel: UILabel!
    let pigLatinizer = PigLatinizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func submitText(sender: UITextField) {
        let pigLatinizedText = pigLatinizer.convert(sender.text!)
        pigLatinizedLabel.text = pigLatinizedText
    }

}

