//
//  MyCollectionViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/6/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    
    public func configure(name: String, imageName: String){
        label.text = name
        myImageView.image = UIImage(named: imageName)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myImageView.contentMode = .scaleAspectFill
    }

}
