//
//  TitleView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
        
    @State private var subtitle = "Exploring iOS Programming"
    @State private var isRotated = false
    
    let subtitles = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipies",
        "A quest for knowlegde",
    ]
    
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
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                withAnimation {
                    subtitle = subtitles.randomElement() ?? subtitle
                }
            }
            
            Spacer()
            
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
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
