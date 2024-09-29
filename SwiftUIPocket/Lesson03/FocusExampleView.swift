import SwiftUI

struct FocusExampleView: View {
    @State private var text = ""
    @FocusState private var focus: Bool
    
    var body: some View {
        TextEditor(text: $text).border(.gray, width: 1).frame(height: 200)
            .focused($focus)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Close") {
                        focus = false
                    }
                }
            }
    }
}

#Preview {
    FocusExampleView()
}
