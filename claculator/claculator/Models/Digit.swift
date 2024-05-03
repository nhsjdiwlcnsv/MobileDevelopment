//
//  Digit.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 15.02.24.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
