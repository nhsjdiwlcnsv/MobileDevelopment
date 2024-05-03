//
//  ArithmeticOperation.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 15.02.24.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible {
    case add, subtract, multiply, divide
    
    var description: String {
        switch self {
        case .add:
            return "+"
        case .subtract:
            return "-"
        case .multiply:
            return "×"
        case .divide:
            return "÷"
        }
    }
}
