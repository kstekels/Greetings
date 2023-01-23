//
//  MainView.swift
//  Greetings
//
//  Created by karlis.stekels on 23/01/2023.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            // Portrait mode?
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionView(language: $language, layoutDirection: $layoutDirection)
                        }
                    }
            }
        } else {
            // Landscape mode?
            NavigationStack {
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            LanguageOptionView(language: $language, layoutDirection: $layoutDirection)
                        }
                    }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(language: .constant("en"), layoutDirection: .constant(.rightToLeft))
    }
}
