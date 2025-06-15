//
//  ContentView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/11/25.
//

import SwiftUI

struct GreetingsView: View {
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
    GreetingsView()
}
