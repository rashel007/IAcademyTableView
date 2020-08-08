//
//  CollectionTableViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/6/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class CollectionTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var models = [Model]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        models.append(Model(name: "Image 1", imageName: "image1"))
          models.append(Model(name: "Image 2", imageName: "image2"))
          models.append(Model(name: "Demo 1", imageName: "image1"))
          models.append(Model(name: "Demo 2", imageName: "image2"))
        
        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    

}

extension CollectionTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select")
    }
}

extension CollectionTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
}


struct Model {
    let name: String
    let imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }

}
