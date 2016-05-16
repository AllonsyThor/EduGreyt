//
//  HealthViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class HealthViewController: UIViewController {

    @IBOutlet weak var healthTableView: UITableView!
    
    //set index so not selected when land on controller
    var selectedIndex = -1
    
    //data to populate the table view
    var dataArray : [[String:String]] = [["Question" : "Should I brush their teeth?", "Answer" : "Yes, keeping your grey's mouth healthy is important."], ["Question" : "Are there any feet issues?", "Answer" : "Greys can get corns fairly easily."], ["Question" : "Biggest medical concern?", "Answer" : "Bone cancer is the most serious, but not all greys get it."], ["Question" : "Do you take in broken leg dogs?", "Answer" : "GreySave takes in many broken leg dogs."], ["Question" : "Do they fully recover from a break?", "Answer" : "Yes, most dogs do. They react the same way a person does to an old sports injury."]]
    
    //base the number of rows in section on the number of items in the dataArray
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    
    //create the cells & link to proper controller
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! asPetsCell
        
        let obj = dataArray[indexPath.row]
        cell.firstViewLabel.text = obj["Question"]
        cell.secondViewLabel.text = obj["Answer"]
        
        return cell;
    }
    
    //setting the height when cell selected or deselected
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(selectedIndex == indexPath.row) {
            return 100;
        } else {
            return 40;
        }
    }
    
    
    //when selecting the row at index path, check where it is, reload data & display proper info
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(selectedIndex == indexPath.row) {
            selectedIndex = -1
        } else {
            selectedIndex = indexPath.row
        }
        self.healthTableView.reloadData()
        self.healthTableView.beginUpdates()
        self.healthTableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.healthTableView.endUpdates()
    }
    

    
}
