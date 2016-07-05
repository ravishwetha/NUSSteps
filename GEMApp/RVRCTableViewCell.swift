//
//  RVRCTableViewCell.swift
//  GEMApp
//
//  Created by Ravi on 17/1/16.
//  Copyright © 2016 Group24. All rights reserved.
//

import UIKit

class RVRCTableViewCell: UITableViewCell {
    
    // MARK: Properties

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
