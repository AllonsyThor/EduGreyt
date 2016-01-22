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
  
    var topics: [String] = ["Apperance", "Temperament", "As Pets", "Health", "Interesting Facts" ]
  
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Created the cell
        let cell = tableView.dequeueReusableCellWithIdentifier("topicCell")!
        
        return cell
        
    }
    
    
}
