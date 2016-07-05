//
//  StopTableViewController.swift
//  GEMApp
//
//  Created by Ravi on 23/1/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import Foundation
import UIKit

class StopTableViewController: UITableViewController {
    
    
    var StopTableArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableView:UITableView = UITableView()
        
        tableView.delegate = self
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StopTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Location = self.tableView.dequeueReusableCellWithIdentifier("SecondLocation", forIndexPath: indexPath) as UITableViewCell
        
        Location.textLabel?.text = StopTableArray[indexPath.row]
        
        return Location
    }
    
    //override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
      //      }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = tableView.indexPathForSelectedRow!
        
        let currentCell = (tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text)! as String
        
        print(currentCell)
        
        if(currentCell == "School of Computing" && position1 == 0) {
            position2 = 0
        }
        else if(currentCell == "Ridge View Residential College" && position1 == 1){
            position2 = 0
        }
        else {
            position2 = 10
        }
        
        let DestViewController = segue.destinationViewController as? ShortestPathViewController
        
        print(position1)
        print(position2)
        
        //var senderTag = String()
        
        if(position1 == 0 && position2 == 0) {
            //senderTag = "RVRCtoSOC"
            //performSegueWithIdentifier("ShowPaths", sender: self)
            DestViewController?.ScrollImage = UIImage(named: "RVRCtablepic")!
            //DestViewController?.imageView2.image = UIImage(named: "SchoolofComputing")!
            
            DestViewController?.PathString = "Going from RVRC to SOC"
            
        }
            
        else if(position1 == 1 && position2 == 0){
            //senderTag = "SOCtoRVRC"
            //performSegueWithIdentifier("ShowPaths", sender: self)
            DestViewController?.ScrollImage = UIImage(named: "SchoolofComputing")!
            //DestViewController?.imageView2.image = UIImage(named: "RVRCtablepic")!
            
            DestViewController?.PathString = "Going from SOC to RVRC"
        }
            
        else {
            DestViewController!.PathString = "others"
        }
    }
}
