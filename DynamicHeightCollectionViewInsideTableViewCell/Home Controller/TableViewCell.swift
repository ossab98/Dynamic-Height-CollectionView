//
//  FilterCell.swift
//  DynamicHeightCollectionViewInsideTableViewCell
//
//  Created by Ossama Abdelwahab on 23/10/2020.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    var arr = [String]()
    
    func configure(_ arr: [String]) {
        self.arr = arr
        self.collectionView.reloadData()
        self.collectionView.layoutIfNeeded()
    }
}


extension TableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.textLabel.text = self.arr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let text = self.arr[indexPath.row]
        let cellWidth = text.size(withAttributes:[.font: UIFont.systemFont(ofSize:12.0)]).width + 30.0
        return CGSize(width: cellWidth, height: 30.0)
    }
}
