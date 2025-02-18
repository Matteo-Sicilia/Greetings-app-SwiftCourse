//
//  TitleView.swift
//  Greetings
//
//  Created by Matteo Sicilia on 18/02/25.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotating = false
    
    var angle: Angle {
        isRotating ? .degrees(360) : .zero
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(
            gradient:
                Gradient(
                    colors: [.pink, .purple, .blue, .orange, .yellow]),
            center: .center,
            startAngle: .zero,
            endAngle: .degrees(360))
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading) {
                    Text("Greetings")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Welcome to Swift programming")
                        .font(.headline)
                        .fontWeight(.thin)
                }
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(
                    angularGradient,
                    lineWidth: lineWidth
                )
                .rotationEffect(angle)
                .frame(
                    width: diameter,
                    height: diameter
                )
                .onTapGesture {
                    withAnimation(.linear(duration: 1)) {
                        isRotating.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
