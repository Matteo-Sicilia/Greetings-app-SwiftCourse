//
//  TextView.swift
//  Greetings
//
//  Created by Matteo Sicilia on 09/02/25.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139 / 255, green: 207 / 255, blue: 240 / 255),
        Color(red: 1, green: 215 / 255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius( /*@START_MENU_TOKEN@*/20.0 /*@END_MENU_TOKEN@*/)
            .shadow(
                color: color,
                radius: 5,
                x: 10, y: 10)
            .onTapGesture{
                    color = colors.randomElement() ?? .red
                }
            }
    }

    
#Preview {
        VStack {
            TextView(text: "Hello There!", color: .green)
            TextView(text: "Hello !", color: .blue)
            TextView(text: "There!", color: .purple)
        }
    }
