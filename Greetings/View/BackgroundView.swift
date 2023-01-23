//
//  BackgroundView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

/// This is BackgroundView which contains linear background
struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                Color("Blue"),
                Color("Blue2"),
                Color(red: 139/255, green: 80/255, blue: 240/255)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .opacity(0.8)
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
