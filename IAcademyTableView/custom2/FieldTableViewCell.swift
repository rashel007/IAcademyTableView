//
//  FieldTableViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/2/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class FieldTableViewCell: UITableViewCell , UITextFieldDelegate{
    
    @IBOutlet var field: UITextField!
    
    
    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        field.placeholder = "Insert here ..."
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
}
