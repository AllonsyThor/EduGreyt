//
//  ApperanceTableViewCell.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 5/13/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class ApperanceTableViewCell: UITableViewCell {
    var isObserving = false
    
    @IBOutlet weak var apperanceTitleLabel: UILabel!
    @IBOutlet weak var apperanceTextView: UITextView!
    
    //Array for Answers
    var answers: [String] = ["There are 18 colors in total including fawn, brindle, cow, black, white, and gray. Brindles being the most common and grays being the least.", "Males are between 28-30in in height and Femalses are typically between 27-28in tall.", "Males tend to weigh between 60-90lbs and females 60-75lbs."]
    
    //Attempt to set TextViewText to info from answers array
    //apperanceTextView.text = answers[indexPath.row]
    
    //Setting height for expanded container
    class var expandedHeight: CGFloat { get { return 200 } }
    //Setting default height
    class var defaultHeight: CGFloat { get { return 44 } }
    
    func checkHeight() {
        apperanceTextView.hidden = (frame.size.height < ApperanceTableViewCell.expandedHeight)
    }
    
    func watchFrameChanges() {
        if !isObserving {
            addObserver(self, forKeyPath: "frame", options: [NSKeyValueObservingOptions.New, NSKeyValueObservingOptions.Initial], context: nil)
            isObserving = true;
        }
    }
    
    func ignoreFrameChanges() {
        if isObserving {
            removeObserver(self, forKeyPath: "frame")
            isObserving = false;
        }
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "frame" {
            checkHeight()
        }
    }
}
