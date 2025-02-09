//
//  ContentView.swift
//  Greetings
//
//  Created by Matteo Sicilia on 09/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.cyan, .blue, .white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea(edges: .all)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundStyle(Color.purple)
                    .background(Color.orange)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .shadow(color: .orange, radius: 5, x: 5.0, y: 5.0)
                    .padding()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


