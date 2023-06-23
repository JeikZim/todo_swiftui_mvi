//
//  DateExtension.swift
//  ToDo
//
//  Created by Руслан on 22.06.2023.
//

import Foundation

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        return dateFormatter.string(from: self)
    }
}
