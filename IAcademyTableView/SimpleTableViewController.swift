//
//  ViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/1/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController {
    
    let names = [
        "name 1",
        "name 2",
        "name 3"
    ]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension SimpleTableViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
}


extension SimpleTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row Tapped At : \(indexPath)")
    }
}

