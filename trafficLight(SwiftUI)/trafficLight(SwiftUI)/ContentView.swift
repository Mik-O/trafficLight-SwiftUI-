//
//  ContentView.swift
//  trafficLight(SwiftUI)
//
//  Created by Таня Кожевникова on 24.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonName = "Start"
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red)
                
                
                ColorCircle(color: .yellow)
                
                ColorCircle(color: .green)
                Spacer()
                
                Button(action: { buttonName = "Next"}) {
                    Text(buttonName)
                        .font(.title)
                }
            }
            .padding()
        }
    }
    
//    private func  nextLight: {
//        
//    }
}

struct ColorCircle: View {
    var color: Color
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 100, height: 100)
            .opacity(0.5)
    }
}



#Preview {
    ContentView()
}
