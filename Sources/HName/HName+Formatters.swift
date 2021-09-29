//
//  HName+Formatters.swift
//  
//
//  Created by Hady Nourallah on 2021-09-29.
//

import Foundation

@objc public enum NameStyle: Int {
    case `default` = 0
    case short = 1
    case medium = 2
    case long = 3
    case abbreviated = 4
}
public extension HName {
    @objc func formatted(_ style: NameStyle = .default) -> String? {
        guard let pc = personComponents else {
            return nil
        }
        let formatter = PersonNameComponentsFormatter()
        formatter.style = PersonNameComponentsFormatter.Style(rawValue: style.rawValue) ?? .default
        return formatter.string(from: pc)
    }
}
