//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
            .padding()
        }
    }
}

struct LandscapeGreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        LandscapeGreetingsView()
    }
}
