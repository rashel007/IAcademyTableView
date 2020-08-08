//
//  DemoTableViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/2/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myTextLable: UILabel!
    @IBOutlet var myImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
