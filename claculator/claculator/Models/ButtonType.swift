//
//  ButtonType.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 15.02.24.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable, CustomStringConvertible {
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case function(_ function: Func)
    case negative
    case percent
    case decimal
    case equal
    case clear
    case allClear
    case call
    
    var description: String {
        switch self {
        case let .digit(digit):
            return digit.description
        case let .operation(operation):
            return operation.description
        case let .function(function):
            return function.description
        case .negative:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equal:
            return "="
        case .clear:
            return "C"
        case .allClear:
            return "AC"
        case .call:
            return "📞"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .function:
            return .black
        case .allClear, .negative, .percent:
            return Color(.lightGray)
        case .operation, .equal:
            return .indigo
        case .digit, .clear, .decimal:
            return Color(UIColor(red: 55/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1))
        case .call:
            return .green
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .allClear, .negative, .percent:
            return .black
        default:
            return .white
        }
    }
}
