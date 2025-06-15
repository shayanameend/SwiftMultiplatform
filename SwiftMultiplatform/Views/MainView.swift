//
//  MainView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/15/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
