//
//  GreetingsApp.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

@main
struct GreetingsApp: App {
    
    @State var language: String = "en"
    @State var layoutDirection: LayoutDirection = .leftToRight
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirection: $layoutDirection)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
