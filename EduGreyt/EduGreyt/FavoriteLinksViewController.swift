//
//  FavoriteLinksViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class FavoriteLinksViewController: UIViewController {

    
    @IBOutlet weak var favoriteTableView: UITableView!
    
    //set index so not selected when land on controller
    var selectedIndex = -1
    
    //data to populate the table view
    var dataArray : [[String:String]] = [["Question" : "Where can I go to learn more?", "Answer" : "Greysave.org will have more answers."], ["Question" : "Where can I get greyhound gear?", "Answer" : "The GreySave online store!"], ["Question" : "Where can I find events to see if greyhouns are right for me?", "Answer" : "GreySave's website gives you info for upcoming events."]]
    
    //base the number of rows in section on the number of items in the dataArray
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }

  
    //create the cells & link to proper controller
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! favoriteCell
        
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
        self.favoriteTableView.reloadData()
        self.favoriteTableView.beginUpdates()
        self.favoriteTableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic )
        self.favoriteTableView.endUpdates()
    }
    

    

}
