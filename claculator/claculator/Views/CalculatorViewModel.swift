//
//  CalculatorViewModel.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 16.02.24.
//

import Foundation
import Combine

extension CalculatorView {
    final class ViewModel: ObservableObject {
        
        @Published private var calculator = Calculator()
        
        var displayText: String {
            return calculator.displayText
        }
        var buttonTypeGrid: [[ButtonType]] = [
            [.function(.sinus), .function(.cosinus), .function(.logarithm), .function(.squareRoot)],
            [.allClear, .negative, .percent, .operation(.divide)],
            [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiply)],
            [.digit(.four), .digit(.five), .digit(.six), .operation(.subtract)],
            [.digit(.one), .digit(.two), .digit(.three), .operation(.add)],
            [.digit(.zero), .clear, .decimal, .call]
        ]
        
        func performAction(for buttonType: ButtonType) {
            switch buttonType {
            case let .digit(digit):
                calculator.setDigit(digit)
            case let .operation(operation):
                calculator.setOperation(operation)
            case let .function(function):
                calculator.applyFunction(function: function)
            case .negative:
                calculator.toggleSign()
            case .percent:
                calculator.setPercent()
            case .decimal:
                calculator.setDecimal()
            case .equal:
                calculator.evaluate()
            case .clear:
                calculator.clear()
            case .allClear:
                calculator.allClear()
            case .call:
                calculator.call()
            }
        }
        
        func buttonTypeIsHighlighted(buttonType: ButtonType) -> Bool {
            guard case .operation(let operation) = buttonType else { return false }
            return calculator.operationIsHighlighted(operation)
        }
    }
}
