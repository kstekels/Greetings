import SwiftUI

struct LanguageOptionView: View {
    @Binding var language: String
    @Binding var layoutDirection: LayoutDirection
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button(action: {
                    language = "en"
                    layoutDirection = .leftToRight
                }, label: {
                    Text("English")
                })
                
                Button(action: {
                    language = "ru"
                    layoutDirection = .leftToRight
                }, label: {
                    Text("Russian")
                })
            }
    }
}

struct LanguageOptionView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageOptionView(language: .constant("ru"), layoutDirection: .constant(.leftToRight))
    }
}
