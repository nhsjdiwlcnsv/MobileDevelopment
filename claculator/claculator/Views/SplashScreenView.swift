//
//  SplashScreenView.swift
//  claculator
//
//  Created by Mikhail Shkarubski on 16.02.24.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                CalculatorView()
                    .environmentObject(CalculatorView.ViewModel())
            } else {
//                Rectangle()
//                    .background(Color(.black))
                Image("SplashScreenIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 128, height: 128)
                    .cornerRadius(16.0)
            }
        }
        .background(Color(.black))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.5, execute: {
                withAnimation {
                    self.isActive = true
                }
            })
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
