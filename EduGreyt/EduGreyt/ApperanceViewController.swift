//
//  ApperanceViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit


class ApperanceViewController: UIViewController {

    @IBOutlet weak var apperanceTableView: UITableView!

    //set index so not selected when land on controller
    var selectedIndex = -1

    //data to populate the table view
    var dataArray : [[String:String]] = [["Question" : "How tall are greyhounds?", "Answer" : "Males are 28-30in & Females 27-28in."], ["Question" : "How much do they weigh?", "Answer" : "Males 60-88lbs & Females 50-75lbs."], ["Question" : "How many colors do greyhounds come in?", "Answer" : "18"], ["Question" : "What are the most common colors?", "Answer" : "Brindle is the most common."], ["Question" : "What's the least common color?", "Answer" : "Grey"]]
    
    //base the number of rows in section on the number of items in the dataArray
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }

    //create the cells & link to proper controller
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! apperanceCell
        
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
        self.apperanceTableView.reloadData()
        self.apperanceTableView.beginUpdates()
        self.apperanceTableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.apperanceTableView.endUpdates()
    }


}
