//
//  TextView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State
    var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0.5),
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.45))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 5, y: 5)
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? .red     
                }
            }
    }
}

#Preview {
    TextView(
        text: "Greetings!",
        color: .blue,
    )
}
