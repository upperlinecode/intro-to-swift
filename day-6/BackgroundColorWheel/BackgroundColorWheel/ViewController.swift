//
//  ViewController.swift
//  BackgroundColorWheel
//
//  Created by flatironstudent on 3/15/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorWheel: UIPickerView!
    
    var pickerDataSource = ["White", "Red", "Green", "Blue"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorWheel.dataSource = self
        self.colorWheel.delegate = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.greenColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }

}

