//
//  NotesViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 5/15/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var notesViewController: UITableView!
    
    //set index so not selected when land on controller
    var selectedIndex = -1
    
    //data to populate the table view
    var dataArray : [[String:String]] = [["Question" : "This seems very basic. Why?", "Answer" : "To encourage you to talk to groups like GreySave."], ["Question" : "What's your connection with GreySave?", "Answer" : "I'm on their board & I have one of their dogs."], ["Question" : "What if I just want to donate?", "Answer" : "Please head to GreySave.org."], ["Question" : "How much does a broken leg dog cost an organization?", "Answer" : "Broken leg dogs' bills start around $5,000."]]
    
    //base the number of rows in section on the number of items in the dataArray
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    //create the cells & link to proper controller
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! notesCell
        
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
        self.notesViewController.reloadData()
        self.notesViewController.beginUpdates()
        self.notesViewController.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.notesViewController.endUpdates()
    }
    
    
    

 
    

  

}
