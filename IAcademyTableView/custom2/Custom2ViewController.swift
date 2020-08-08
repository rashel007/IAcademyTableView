//
//  Custom2ViewController.swift
//  IAcademyTableView
//
//  Created by Estique on 8/2/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class Custom2ViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)

        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension Custom2ViewController: UITableViewDelegate {
    
}

extension Custom2ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row > 2 && indexPath.row <= 5 {
            let customFieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
            
            return customFieldCell
        }
        
        if indexPath.row > 5 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
            
            customCell.configure(text: "Settings", image: "gear")
            
                return customCell
        }
        
       
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let switcher = UISwitch()
        switcher.isOn = true
        switcher.addTarget(self, action: #selector(switchedChange(_sender:)), for: .valueChanged)
        cell.accessoryView = switcher
        
        cell.textLabel?.text = "Hello World"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    @objc func switchedChange(_sender: UISwitch){
        if _sender.isOn {
            print("Switch truned on")
        }else {
            print("Switch truned off")
        }
    }
}
