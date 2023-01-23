//
//  DataitemModel.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

/// This is data model of the message
/// that will appear in the app.
/// it contains a text string and a color.
/// Moreover it inherits from the Identifiable protocol
struct DataitemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
