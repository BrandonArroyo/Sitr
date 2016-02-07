//
//  ContactTableViewCell.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/7/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var comNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
