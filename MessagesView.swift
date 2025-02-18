//
//  MessagesView.swift
//  Greetings
//
//  Created by Matteo Sicilia on 18/02/25.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
                .init(
                    text: "Hello There!",
                    color: .green),
                .init(
                    text: "Welcome to Swift programming",
                    color: .gray),
                .init(
                    text: "Are you ready to",
                    color: .yellow),
                .init(
                    text: "Start Exploring",
                    color: .red),
                .init(
                    text: "Gaming",
                    color: .purple)
        ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(
                    text: dataItem.text,
                    color: dataItem.color)
            }
        }

    }
}

#Preview {
    MessagesView()
}
