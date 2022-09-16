//
//  Date+Ext.swift
//  Followers
//
//  Created by Ума Мирзоева on 14.09.2022.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
