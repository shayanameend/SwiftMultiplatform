//
//  TextView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    var opacity: Double = 0.45
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(opacity))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 5, y: 5)
    }
}

#Preview {
    TextView(
        text: "Greetings!",
        color: .blue,
    )
}
