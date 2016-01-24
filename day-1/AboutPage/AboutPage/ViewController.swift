//
//  ViewController.swift
//  AboutPage
//
//  Created by flatironstudent on 1/22/16.
//  Copyright © 2016 flatironstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var FavoriteWebsites: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var Biography: UILabel!
    
    let about = About()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addData() {
        Name.text = "Name: \(about.name)"
        FavoriteWebsites.text = "Favorite Movies:\n1.\(about.favoriteWebsites[about.favoriteWebsites.startIndex])\n2.\(about.favoriteWebsites[about.favoriteWebsites.startIndex.advancedBy(1)])\n3.\(about.favoriteWebsites[about.favoriteWebsites.startIndex.advancedBy(2)])"
    }


}

