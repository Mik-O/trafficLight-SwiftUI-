//
//  ContentView.swift
//  trafficLight(SwiftUI)
//
//  Created by Таня Кожевникова on 24.07.2025.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, off
}

struct ContentView: View {
    
    @State private var buttonName = "START"
    
    @State private var currentLight = CurrentLight.off
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        case .off:
            currentLight = .red
        }
    }
    
    
    var body: some View {
        
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                ChangeColorButton(
                    title: buttonName,
                    action: {
                        if buttonName == "START" {
                            buttonName = "NEXT"
                        }
                        nextColor()
                    }
                )
            }
            .padding()
        }
    }
}




#Preview {
    ContentView()
}




