//
//  MyTableViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/2/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configure(text: String, image: String) {
        myImageView.image = UIImage(systemName: image)
        myTextLabel.text = text
    }
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
