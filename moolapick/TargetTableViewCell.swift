//
//  TargetTableViewCell.swift
//  moolapick
//
//  Created by Apple Macintosh on 12/13/16.
//  Copyright © 2016 Apple Macintosh. All rights reserved.
//

import UIKit

class TargetTableViewCell: UITableViewCell {
    
    @IBOutlet weak var TargetImg: UIImageView!
    @IBOutlet weak var TargetTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        TargetImg.image = UIImage(named: "")
        TargetTitle.text = "Target name what you want to save money"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
