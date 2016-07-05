//
//  StartTableViewController.swift
//  GEMApp
//
//  Created by Ravi on 24/1/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import Foundation

import UIKit

var position1 = 100
var position2 = 100

class StartTableViewController: UITableViewController {
    
    var StartTableArray = [String]()
    var StopTableArray = [StopTable]()
    //var position = 0
    //var PictureArray =
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Start"
    
        StartTableArray = ["Ridge View Residential College", "School of Computing"]
        
        StopTableArray =
            [StopTable(StopTitle: ["School of Computing"]),
                StopTable(StopTitle: ["Ridge View Residential College"])]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StartTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Location = self.tableView.dequeueReusableCellWithIdentifier("Location", forIndexPath: indexPath) as UITableViewCell
        
        Location.textLabel?.text = StartTableArray[indexPath.row]
        
        return Location
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let indexPath : NSIndexPath = tableView.indexPathForSelectedRow!
        
        let currentCell = (tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text)! as String
        
        print(currentCell)
        
        if(currentCell == "Ridge View Residential College") {
            position1 = 0
        }
        else if(currentCell == "School of Computing"){
            position1 = 1
        }
        else {
            position2 = 10
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let DestViewController = segue.destinationViewController as! StopTableViewController
        
        var StopTableArrayTwo : StopTable
        
        StopTableArrayTwo = StopTableArray[indexPath.row]
        DestViewController.StopTableArray = StopTableArrayTwo.StopTitle
    }
}