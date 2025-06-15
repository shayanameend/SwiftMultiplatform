//
//  VerticalTitleView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/15/25.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"

    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
                        
            GreetingsRotatingIconView()
            
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
