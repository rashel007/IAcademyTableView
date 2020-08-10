//
//  InstagramViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/9/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class InstagramViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    var models = [InstagramPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        tableView.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    private func initData() {
        models.append(InstagramPost(
            username: "Rashel",
            userProfileImageName: "profile",
            userPostPhotoName: "post1",
            userLikes: 100
        ))
        
        models.append(InstagramPost(
                  username: "Sathi",
                  userProfileImageName: "profile",
                  userPostPhotoName: "post2",
                  userLikes: 200
              ))
        
        models.append(InstagramPost(
                        username: "Raiyan",
                        userProfileImageName: "profile",
                        userPostPhotoName: "post3",
                        userLikes: 2300
                    ))
        
        models.append(InstagramPost(
                             username: "Roja",
                             userProfileImageName: "profile",
                             userPostPhotoName: "post4",
                             userLikes: 3300
                         ))
    }
    

}


extension InstagramViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension InstagramViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        
        cell.configure(item: models[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 + 80 + view.frame.width
    }
}

extension InstagramViewController: PostTableViewCellDelegate {
    
    func didTapOnLikeButton(item: InstagramPost?) {
        guard let item = item else {
            return
        }
        
        print("didTapOnLikeButton \(item.username)")
    }
    
    func didTapOnShareButton(item: InstagramPost?) {
        
        guard let item = item else {
            return
        }
        
         print("didTapOnShareButton \(item.username)")
    }
    
    func didTapOnCommentButton(item: InstagramPost?) {
        
        guard let item = item else {
            return
        }
         print("didTapOnCommentButton \(item.username)")
    }
}


struct InstagramPost {
    var username: String
    var userProfileImageName: String
    var userPostPhotoName: String
    var userLikes: Int
}
