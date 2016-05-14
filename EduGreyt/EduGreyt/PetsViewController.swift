//
//  PetsViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class PetsViewController: UIViewController {
    @IBOutlet weak var petsTableView: UITableView!
    
    var selectedIndex = -1
    var dataArray : [[String:String]] = [["Question" : "Are greyhounds good apartment dogs?", "Answer" : "Yes, they are great in apartments."], ["Question" : "Do they require a lot of exercise?", "Answer" : "Surprisingly, no. 3-4 20min walks per day."], ["Question" : "Do greyhounds like children?", "Answer" : "Some enjoy children and others do not."]]


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! asPetsCell
        
        let obj = dataArray[indexPath.row]
        cell.firstViewLabel.text = obj["Question"]
        cell.secondViewLabel.text = obj["Answer"]
        
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row) {
            return 100;
        } else {
            return 40;
        }
    }
        
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(selectedIndex == indexPath.row) {
            selectedIndex = -1
        } else {
            selectedIndex = indexPath.row
        }
       self.petsTableView.reloadData()
        self.petsTableView.beginUpdates()
        self.petsTableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.petsTableView.endUpdates()
    }
    
   
        
       
       
    }
    
    
    

