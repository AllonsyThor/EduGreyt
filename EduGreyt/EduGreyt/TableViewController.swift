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
    var topics: [String] = ["Apperance", "As Pets", "Events", "Favorite Links", "Health", "Interesting Facts", "Important Notes", "Temperament"]
  
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var segueIdentifier = ""
        
        switch indexPath.row{
            case 3:
                segueIdentifier = "FavoriteSegue"
            default:
                ()
        }
        
        performSegueWithIdentifier(segueIdentifier, sender: self)
    }
    
    
}
