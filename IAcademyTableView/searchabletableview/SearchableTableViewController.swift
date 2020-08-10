//
//  SearchableTableViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/8/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class SearchableTableViewController: UIViewController {
    
    @IBOutlet var tableview: UITableView!
    @IBOutlet var textfield: UITextField!
    var isFiltered = false
  
    @IBAction func textfieldEditingChande(_ sender: Any) {
        
        if let text = textfield.text {
                   filterData(text)
               }
    }
    
    var data = [String]()
    var filtered = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        addData()
        tableview.delegate = self
        tableview.dataSource = self

    }
    


}


extension SearchableTableViewController: UITableViewDelegate{
    
}

extension SearchableTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if !filtered.isEmpty {
            return filtered.count
        }
     
        if let count = textfield.text?.count {
            if count > 0 {
                return 0
            }
        }
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if !filtered.isEmpty {
            cell.textLabel?.text = filtered[indexPath.row]
        }else {
            cell.textLabel?.text = data[indexPath.row]
        }
        
        return cell
    }
}


extension SearchableTableViewController {
    
  
    
    
    private func addData() {
        data.append("Rashel")
        data.append("Rahim")
        data.append("Abul")
        data.append("Baset")
        data.append("Karim")
        data.append("Mukit")
        
        data.append("Ornob")
        data.append("Chonchol")
        data.append("Duke")
        data.append("Ekram")
        data.append("Fahim")
        data.append("Jabber")
    }

    
    private func filterData(_ text: String){
      print("\(text)")
        filtered.removeAll()
        isFiltered = false
        for item in data {
            if item.lowercased().starts(with: text.lowercased()){
                filtered.append(item)
                isFiltered = true
            }
        }
        tableview.reloadData()
    }
    
    
}
