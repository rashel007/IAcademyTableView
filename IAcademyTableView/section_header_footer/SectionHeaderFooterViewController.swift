//
//  SectionHeaderFooterViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/10/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class SectionHeaderFooterViewController: UIViewController {
    
    @IBOutlet var tableview: UITableView!
    
    var data = [
        ["Apple", "Malta", "Banana"],
        ["Item One", "Item Two", "Item Three"],
        ["Last Item"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate  = self
        tableview.dataSource = self
        
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300))
        footerView.backgroundColor = .green
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200))
        headerView.backgroundColor = .yellow
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: headerView.frame.size.width, height: headerView.frame.size.height))
        label.textAlignment = .center
        label.text = "Hello World"
        headerView.addSubview(label)
        
        tableview.tableHeaderView = headerView
        tableview.tableFooterView = footerView
        
    }
    


}

extension SectionHeaderFooterViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension SectionHeaderFooterViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        <#code#>
//    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        

        cell.backgroundColor = .red
        return cell
    }
}
