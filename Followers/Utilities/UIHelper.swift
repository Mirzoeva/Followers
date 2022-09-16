//
//  UIHelper.swift
//  Followers
//
//  Created by Ума Мирзоева on 10.09.2022.
//

import UIKit

enum UIHelper {
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding = CGFloat(12)
        let minimalItemSpacing = CGFloat(10)
        let availableWidht = width - (padding * 2) - (minimalItemSpacing * 2)
        let itemWidht = availableWidht / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidht, height: itemWidht + 40)
        
        return flowLayout
    }
}
