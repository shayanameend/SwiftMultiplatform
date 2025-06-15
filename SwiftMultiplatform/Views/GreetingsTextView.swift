//
//  GreetingsTextView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/15/25.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey

    
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipies",
        "A quest for knowlegde",
    ]
    
    var body: some View {
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
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}
