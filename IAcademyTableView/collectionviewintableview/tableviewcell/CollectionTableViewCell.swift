//
//  CollectionTableViewCell.swift
//  IAcademyTableView
//
//  Created by Estique on 8/6/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    @IBOutlet var collectionView: UICollectionView!
    
    static let identifier = "CollectionTableViewCell"
    
    var models = [Model]()
    
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    public func configure(with models: [Model]){
        self.models = models
        collectionView.reloadData()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension CollectionTableViewCell: UICollectionViewDelegate{
    
}

extension CollectionTableViewCell: UICollectionViewDataSource{
 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(name: models[indexPath.row].name, imageName: models[indexPath.row].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
}

extension CollectionTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250.0, height: 250.0)
    }
}
