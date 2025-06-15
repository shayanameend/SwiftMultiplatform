//
//  ContentView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/11/25.
//

import SwiftUI

struct PortraitGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PortraitGreetingsView()
}
