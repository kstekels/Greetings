//
//  MessageView.swift
//  Greetings
//
//  Created by karlis.stekels on 20/01/2023.
//

import SwiftUI

/// This is a view that contains a list of a messages
/// Each message changes colors randomly when you click on it
struct MessagesView: View {
    
    let messages = [
        DataitemModel(text: LocalizedStringKey("Hello there!"), color: Color("Green")),
        DataitemModel(text: LocalizedStringKey("Welcome to swift programming"), color: Color("Gray")),
        DataitemModel(text: LocalizedStringKey("Are you ready to,"), color: Color("Yellow")),
        DataitemModel(text: LocalizedStringKey("start exploring"), color: Color("Red")),
        DataitemModel(text: LocalizedStringKey("Boom"), color: Color("Purple")),
        
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ForEach(messages) { dataItem in
                    TextView(text: dataItem.text, color: dataItem.color)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
