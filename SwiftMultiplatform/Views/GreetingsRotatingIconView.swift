//
//  GreetingsRotatingIconView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/15/25.
//

import SwiftUI

struct GreetingsRotatingIconView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated = false
    
    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(
            colors: [.pink, .purple, .blue, .orange, .yellow],
            center: .center, angle: .zero
        )
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    GreetingsRotatingIconView()
}
