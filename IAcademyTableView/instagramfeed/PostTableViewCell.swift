//
//  PostTableViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/9/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

protocol PostTableViewCellDelegate: AnyObject {
    func didTapOnLikeButton(item: InstagramPost?)
      func didTapOnCommentButton(item: InstagramPost?)
     func didTapOnShareButton(item: InstagramPost?)
}

class PostTableViewCell: UITableViewCell {
    
    weak var delegate: PostTableViewCellDelegate?
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var likesLabel: UILabel!
    
    private var item: InstagramPost?
    
   
    @IBAction func didTapOnLikeButton(_ sender: Any) {
        delegate?.didTapOnLikeButton(item: item)
    }
    
    @IBAction func didTapOnCommentButton(_ sender: Any) {
        delegate?.didTapOnCommentButton(item: item)
    }
    
    
    @IBAction func didTapOnShareButton(_ sender: Any){
        delegate?.didTapOnShareButton(item: item)
    }
    
    
    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    public func configure(item: InstagramPost){
        self.item = item
        userNameLabel.text = item.username
        userImageView.image = UIImage(named: item.userProfileImageName)
        postImageView.image = UIImage(named: item.userPostPhotoName)
        likesLabel.text = "\(item.userLikes) likes"
    }
    
}
