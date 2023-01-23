//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

struct GreetingsTextView: View {
    
    @Binding var captionIndex: Int
    
    let caption: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 16 programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge")
    ]
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0.0) {
            Text(LocalizedStringKey("Greetings"))
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(caption[captionIndex])
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

struct GreetingsTextView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsTextView(captionIndex: .constant(0))
    }
}
