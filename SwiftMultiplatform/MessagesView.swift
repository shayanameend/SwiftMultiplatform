//
//  MessagesView.swift
//  SwiftMultiplatform
//
//  Created by Shayan Ameen on 6/14/25.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .green),
        .init(text: "Welcome to Swift Programming", color: .gray),
        .init(text: "Are you ready to", color: .yellow),
        .init(text: "start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
    ]
    
    var body: some View {
        ForEach(messages) { message in
            TextView(
                text: message.text,
                color: message.color
            )
        }
    }
}

#Preview {
    MessagesView()
}
