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
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isIPhonePortrait: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }

    var isIPhoneLandscape: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .compact
    }

    
    var body: some View {
        if isIPhonePortrait || isIPad {
            PortraitGreetingsView()
        } else if isIPhoneLandscape {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
