//
//  ApperanceViewController.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 1/26/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

let cellID = "cell"

class ApperanceTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //Array for Questions
    var questions: [String] = ["What colors do greyhounds come in?", "How tall are they?", "How much do they weigh?"]
    
    //Array for Answers
//    var answers: [String] = ["There are 18 colors in total including fawn, brindle, cow, black, white, and gray. Brindles being the most common and grays being the least.", "Males are between 28-30in in height and Femalses are typically between 27-28in tall.", "Males tend to weigh between 60-90lbs and females 60-75lbs."]
    
    //How many sections
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //How many rows in section based on questions
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as! ApperanceTableViewCell
        
//        //Create a cell object
//        let apperanceCells = UITableViewCell(style: .Subtitle, reuseIdentifier: "apperanceCell")
//        
//        //Setting Label text to be from questions array
//        apperanceCells.textLabel?.text = questions[indexPath.row]
        
        //Attempt to set TextViewText to info from answers array
//        apperanceCells.apperanceTextView.text = answers[indexPath.row]
        
        return cell
    }
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
