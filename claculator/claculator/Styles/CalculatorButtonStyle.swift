//
//  CalculatorButtonStyle.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 16.02.24.
//

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    var width: CGFloat
    var height: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var font: Font
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .frame(width: width, height: height)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .overlay{
                if configuration.isPressed {
                    Color(white: 1.0, opacity: 0.2)
                }
            }
            .clipShape(Capsule())
    }
}

