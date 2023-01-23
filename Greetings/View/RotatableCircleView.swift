//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

struct RotatableCircleView: View {
    
    @Binding var isRotated: Bool
    
    var body: some View {
        Circle()
            .strokeBorder(
                AngularGradient(gradient:
                                    Gradient(colors: [.pink, .purple, .orange, .green, .orange, .yellow, .blue]),
                                center: .center,
                                angle: .zero),
                lineWidth: 15)
            .rotationEffect( isRotated ? .zero : .degrees(360))
            .frame(maxWidth: 70, maxHeight: 70)
            .onTapGesture {
                withAnimation(Animation.spring()) {
                    isRotated.toggle()
                }
            }
    }
}

struct RotatableCircleView_Previews: PreviewProvider {
    static var previews: some View {
        RotatableCircleView(isRotated: .constant(false))
    }
}
