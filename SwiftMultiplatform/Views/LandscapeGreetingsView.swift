//
//  LandscapeGreetingsView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/15/25.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
