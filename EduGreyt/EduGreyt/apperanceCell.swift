//
//  apperanceCell.swift
//  EduGreyt
//
//  Created by Catherine Kelleher on 5/15/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class apperanceCell: UITableViewCell {
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var firstViewLabel: UILabel!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var secondViewLabel: UILabel!
    @IBOutlet weak var secondHeightRestraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
