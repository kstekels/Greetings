//
//  TitleView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

/// This contains the App title and a randomly changing subtitle
import SwiftUI

struct TitleView: View {
    @State var isRotated: Bool = false
    @State private var captionIndex = 0
    
    var body: some View {
        HStack {
            GreetingsTextView(captionIndex: $captionIndex)
            
            Spacer()
            
            RotatableCircleView(isRotated: $isRotated)
        }
        .padding()
    }
}

struct VerticalTitleView: View {
    @State var isRotated: Bool = false
    @State private var captionIndex = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(captionIndex: $captionIndex)
            RotatableCircleView(isRotated: $isRotated)
            Spacer()
        }
        .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
//        TitleView()
        VerticalTitleView()
    }
}
