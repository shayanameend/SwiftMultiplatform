//
//  TitleView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct TitleView: View {        
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
        
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
            
            Spacer()
            
            GreetingsRotatingIconView()
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
