//
//  CalculatorButton.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 16.02.24.
//

import SwiftUI

extension CalculatorView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        
        @EnvironmentObject private var viewModel: ViewModel
    
        @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
        
        var isLandscape: Bool {
            verticalSizeClass == .compact
        }
        
        var body: some View {
            Button(buttonType.description) {
                viewModel.performAction(for: buttonType)
            }
            .buttonStyle(CalculatorButtonStyle(width: getButtonWidth(), height: getButtonHeight(), backgroundColor: getBackgroundColor(), foregroundColor: getForegroundColor(), font: getFont()))
        }
        
        private func getButtonWidth() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4
            let spacingCount = buttonCount + 1
            
            return (screenWidth - (spacingCount * (isLandscape ? 72 : 12))) / buttonCount
        }
        
        private func getButtonHeight() -> CGFloat {
            let buttonWidth = getButtonWidth()
            
            return isLandscape ? buttonWidth / 3 : buttonWidth / 1.2
        }
        
        private func getBackgroundColor() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.foregroundColor : buttonType.backgroundColor
        }
        
        private func getForegroundColor() -> Color {
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.backgroundColor : buttonType.foregroundColor
        }
        
        private func getFont() -> Font {
            switch buttonType {
            case .function:
                return Font.custom("STIX Two Math", size: 32)
            default:
                return Font.system(size: 32, weight: .medium)
            }
        }
    }
}
