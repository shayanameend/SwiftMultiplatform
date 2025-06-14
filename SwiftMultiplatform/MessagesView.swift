//
//  MessagesView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .themeGreen),
        .init(text: "Welcome to Swift Programming", color: .themeGray),
        .init(text: "Are you ready to", color: .themeYellow),
        .init(text: "start exploring?", color: .themeRed),
        .init(text: "Boom.", color: .themePurple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { message in
                TextView(
                    text: message.text,
                    color: message.color
                )
            }
        }
    }
}

#Preview {
    MessagesView()
}
