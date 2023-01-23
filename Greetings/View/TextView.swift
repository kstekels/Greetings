//
//  TextView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    let colors: [Color] = [
        .red, .green, .blue, .orange, .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 240/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: LocalizedStringKey("Hello"), color: .red)
    }
}
