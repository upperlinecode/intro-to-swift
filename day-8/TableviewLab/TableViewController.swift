//
//  TableViewController.swift
//  TableviewLab
//
//  Created by Angelica Bato on 7/21/16.
//  Copyright © 2016 Angelica Bato. All rights reserved.
//

import UIKit
import MapKit

class TableViewController: UITableViewController {

    
    var myLandmarks: [Landmark] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let upperline = Landmark(name: "Upperline", loc: CLLocation(latitude: 40.709, longitude: -74.010), funFact: "Upperline is, officially and unequivocably, the coolest place on earth.")
        
        let esb = Landmark(name: "Empire State Building", loc: CLLocation(latitude: 40.748, longitude: -73.986), funFact: "The building itself cost $24,718,000 to build, when the cost of the land is included this figure climbs to $40,948,900. This cost was less than half of the total anticipated cost due to the Great Depression.")
        
        let greatpyr = Landmark(name: "The Great Pyramids of Giza", loc: CLLocation(latitude: 29.979, longitude: 31.134), funFact: "The pyramid is estimated to have around 2,300,000 stone blocks that weigh from 2 to 30 tons each and there are even some blocks that weigh over 50 tons.")
        
        let eiffel = Landmark(name: "Eiffel Tower", loc: CLLocation(latitude: 48.858, longitude: 2.295), funFact: "The Eiffel Tower was built for the 1889 Paris Exposition and was not intended to be permanent.")
        
        myLandmarks = [upperline, esb, greatpyr, eiffel]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myLandmarks.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)
        cell.textLabel?.text = myLandmarks[indexPath.row].name

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destVC = segue.destinationViewController as! ViewController
        if let indexpath = self.tableView.indexPathForSelectedRow {
            destVC.myLandmark = myLandmarks[indexpath.row]
        }
        
    }
    

}
