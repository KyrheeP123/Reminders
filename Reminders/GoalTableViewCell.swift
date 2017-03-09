//
//  GoalTableViewCell.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/8/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import UIKit

class GoalTableViewCell: UITableViewCell {
    //MARK: Properties
    
    @IBOutlet weak var eventName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
