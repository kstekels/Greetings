//
//  ContentView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI



/// This is the main view of the Greetings App
struct GreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}
