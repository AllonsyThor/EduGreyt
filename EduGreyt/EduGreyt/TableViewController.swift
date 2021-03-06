//
//  TableViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 11/25/15.
//  Copyright © 2015 Katie Kelleher. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
  
    // Array for the topics covered
    var topics: [String] = ["Apperance", "As Pets", "Favorite Links", "Health", "Interesting Facts", "Important Notes"]
  
    //How many rows in section based on topics
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Create a cell object
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "topicCell")
        cell.textLabel?.text = topics[indexPath.row]
        
        return cell
        
    }
    
    // To switch view controllers based on row index path
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //empty string
        var segueIdentifier = ""
        
        //based on the row index path, head to x controller based on segueIdentifier
        switch indexPath.row{
            case 0:
                segueIdentifier = "ApperanceSegue"
            case 1:
                segueIdentifier = "PetsSegue"
//            case 2:
//                segueIdentifier = "EventsSegue"
            case 2:
                segueIdentifier = "FavoriteSegue"
            case 3:
                segueIdentifier = "HealthSegue"
            case 4:
                segueIdentifier = "FactsSegue"
            case 5:
                segueIdentifier = "NotesSegue"
            default:
                ()
        }
        
        performSegueWithIdentifier(segueIdentifier, sender: self)
    }
    
    
}
