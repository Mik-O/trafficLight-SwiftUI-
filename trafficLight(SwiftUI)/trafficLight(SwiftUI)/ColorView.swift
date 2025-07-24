//
//  ColorView.swift
//  trafficLight(SwiftUI)
//
//  Created by Таня Кожевникова on 24.07.2025.
//

import SwiftUI

struct ColorLight: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

#Preview {
    ColorLight(color: .red, opacity: 4)
}
