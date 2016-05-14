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
    var dataArray : [[String:String]] = [["Question" : "Are greyhounds good apartment dogs?", "Answer" : "Yes. Greyhounds, while larger dogs are great in apartments."], ["Question" : "Do they require a lot of exercise?", "Answer" : "Surprisingly, no. Most greyhounds will go on 3-4 20min walks per day and be just fine. They do enjoy long walks."], ["Question" : "Do greyhounds like children?", "Answer" : "As with all dogs, some enjoty children and others do not. Teaching a child the best way to interact with your hound will help. If you are expecting or plannign on expecting give your grey an adjustment period."]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
