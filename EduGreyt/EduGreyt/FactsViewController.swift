//
//  FactsViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class FactsViewController: UIViewController {

    @IBOutlet weak var factsTableView: UITableView!
    
    
    //set index so not selected when land on controller
    var selectedIndex = -1
    
    //data to populate the table view
    var dataArray : [[String:String]] = [["Question" : "Are greyhounds the fastest dogs in the world?", "Answer" : "Yes, they are. They get to 45mph in 6 strides."], ["Question" : "What's a common nickname for the breed?", "Answer" : "The 40 mile per hour couch potato."], ["Question" : "Where are greyhounds mentioned where no other dog is?", "Answer" : "The Bible, Proverbs 30:29-31."], ["Question" : "Why are they called potato chips?", "Answer" : "For the most part, you can never just have one!"], ["Question" : "How many hours a day do greyhounds sleep?", "Answer" : "On average, 18 hours."]]
    
    //base the number of rows in section on the number of items in the dataArray
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    //create the cells & link to proper controller
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! factsCell
        
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
        self.factsTableView.reloadData()
        self.factsTableView.beginUpdates()
        self.factsTableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.factsTableView.endUpdates()
    }

    

}
