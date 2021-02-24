//
//  CollectionViewCell.swift
//  DynamicHeightCollectionViewInsideTableViewCell
//
//  Created by Ossama Abdelwahab on 23/10/2020.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textLabel.text = nil
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 0.2588235294, green: 0.631372549, blue: 0.9960784314, alpha: 1).cgColor
    }
}
