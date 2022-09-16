//
//  UITableView+Ext.swift
//  Followers
//
//  Created by Ума Мирзоева on 16.09.2022.
//

import UIKit

extension UITableView {
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
}
