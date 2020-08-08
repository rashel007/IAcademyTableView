//
//  CustomTableViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/2/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

       let cellNib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier:
                                    "DemoTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }

}


extension CustomTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Table View Item Clicked At \(indexPath)")
    }
}


extension CustomTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.myTextLable.text = "Got the text \(indexPath)"
        cell.myImageView.backgroundColor = .red
        
        return cell
    }
}
