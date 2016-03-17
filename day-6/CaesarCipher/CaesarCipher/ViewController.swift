//
//  ViewController.swift
//  CaesarCipher
//
//  Created by flatironstudent on 3/17/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var encodedText: UILabel!
    @IBOutlet weak var originalText: UITextField!
    @IBOutlet weak var offset: UITextField!
    let textEncoder = CaesarCipher()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func encodeMessage(sender: UIButton) {
        if let original = originalText.text {
            if let offsetText = offset.text {
                if let offset = Int(offsetText) {
                    let coded = textEncoder.encode(original, offset: offset)
                    encodedText.text = coded
                }
            }
        }
    }
}