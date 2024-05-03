//
//  Func.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 16.02.24.
//

import Foundation

enum Func: CustomStringConvertible {
    case sinus, cosinus, logarithm, squareRoot
    
    var description: String {
        switch self {
        case .sinus:
            "sin"
        case .cosinus:
            "cos"
        case .logarithm:
            "log"
        case .squareRoot:
            "√"
        }
    }
}
