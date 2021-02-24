//
//  DynamicHeightCollectionView.swift
//  DynamicHeightCollectionViewInsideTableViewCell
//
//  Created by Ossama Abdelwahab on 23/10/2020.
//

import UIKit

class DynamicHeightCollectionView: UICollectionView {
    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
}
