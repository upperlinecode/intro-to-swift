//
//  ViewController.swift
//  TipCalculator
//
//  Created by flatironstudent on 3/14/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var percent: UIPickerView!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    
    var selectedTip: String = "1"
    
    let percentDataSource = [Int](1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.percent.dataSource = self;
        self.percent.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return percentDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(percentDataSource[row])
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedTip = String(percentDataSource[row])
    }

    @IBAction func calculateTip(sender: AnyObject) {
        let bill = Double(self.bill.text!)
        let tip = Double(self.selectedTip)
        
        self.tip.text = "Tip: \(bill! * tip! / 100.0)"
        self.total.text = "Total: \(bill! + bill! * tip! / 100.0)"
        
        print("Bill: \(bill) Tip: \(bill! + bill! * tip! / 100)")
    }

}